// JavaScript source code
function vector(a, b) {
    return {
        x: b.x - a.x,
        y: b.y - b.y
    }
}

//
function vectorProduct(v1, v2) {
    return v1.x * v2.y - v2.x * v1.y
}

function isPointInTrangle(p, a, b, c) {
    var pa = vector(p, a);
    var pb = vector(p, b);
    var pc = vector(p, c);

    var t1 = vectorProduct(pa, pb);
    var t2 = vectorProduct(pc, pb);
    var t3 = vectorProduct(pa, pc);
    
    return sameSign(t1, t2) && sameSign(t2, t3);
}
function needDelay(elem, leftCorner, currMousePos) {
    var offest = elem.offest();

    var topLeft = {
        x: offest.left,
        y:offest.top
    }

    var bottomLeft={
        x:offest.left,
        y:offest.top + elem.height()
    }
    return isPointInTrangle(currMousePos, leftCorner, topLeft, bottomLeft);
}
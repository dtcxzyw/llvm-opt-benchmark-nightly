Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/llex?download=true
inline.NumInlined: 23
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@read_long_string:bb.a
bb.av:                                            ; preds = %bb.au
  call void @luaC_step(ptr noundef nonnull %i.ed) #5
  br label %luaX_newstring.exit

luaX_newstring.exit:                              ; preds = %bb.at, %bb.au, %bb.av
  store ptr %i.ee, ptr %1, align 8, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %luaX_newstring.exit, %bb.r
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_numeral(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !64
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.a
  %i.c = phi i32 [ %i.m, %bb.d ], [ %.pre, %bb.a ]
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.c)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.d, align 8, !tbaa !62
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %i.g, align 8, !tbaa !63
  %i.j = load i8, ptr %i.h, align 1, !tbaa !9
  %i.k = zext i8 %i.j to i32
  br label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.l = tail call i32 @luaZ_fill(ptr noundef nonnull %i.d) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.k, %bb.b ], [ %i.l, %bb.c ] ; 7 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !64
  %i.n = tail call ptr @__ctype_b_loc() #6        ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !14
  %i.s = and i16 %i.r, 2048
  %.not27 = icmp ne i16 %i.s, 0
  %i.t = icmp eq i32 %i.m, 46
  %or.cond = or i1 %i.t, %.not27
  br i1 %or.cond, label %.critedge, label %bb.e, !llvm.loop !76

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i32 %i.m to i8
  switch i8 %i.u, label %check_next.exit37 [
    i8 69, label %.split
    i8 101, label %.split
    i8 0, label %.split
  ]

.split:                                           ; preds = %bb.e, %bb.e, %bb.e
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.m)
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62   ; 2 uses
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !62
  %.not8.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !63
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ac = zext i8 %i.ab to i32
  br label %bb.h

bb.g:                                             ; preds = %.split
  %i.ad = tail call i32 @luaZ_fill(ptr noundef nonnull %i.v) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = phi i32 [ %i.ac, %bb.f ], [ %i.ad, %bb.g ] ; 4 uses
  store i32 %i.ae, ptr %0, align 8, !tbaa !64
  %i.af = and i32 %i.ae, 255                      ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %memchr.bounds = icmp samesign ugt i32 %i.af, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = and i64 %i.ah, 43980465111041
  %memchr.bits = icmp eq i64 %i.ai, 0
  %memchr43.not = select i1 %memchr.bounds, i1 true, i1 %memchr.bits
  br i1 %memchr43.not, label %check_next.exit37, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.ae)
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !58  ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !62 ; 2 uses
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !62
  %.not8.i35 = icmp eq i64 %i.ak, 0
  br i1 %.not8.i35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !63
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !9
  %i.aq = zext i8 %i.ap to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call i32 @luaZ_fill(ptr noundef nonnull %i.aj) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i32 [ %i.aq, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  store i32 %i.as, ptr %0, align 8, !tbaa !64
  br label %check_next.exit37

check_next.exit37:                                ; preds = %bb.e, %bb.l, %bb.h
  %i.at = phi i32 [ %i.ae, %bb.h ], [ %i.as, %bb.l ], [ %i.m, %bb.e ] ; 3 uses
  %i.au = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !14
  %i.ay = and i16 %i.ax, 8
  %.not2949 = icmp ne i16 %i.ay, 0
  %i.az = icmp eq i32 %i.at, 95
  %or.cond3250 = or i1 %i.az, %.not2949
  br i1 %or.cond3250, label %.critedge2, label %._crit_edge

.critedge2:                                       ; preds = %check_next.exit37, %bb.o
  %i.ba = phi i32 [ %i.bk, %bb.o ], [ %i.at, %check_next.exit37 ]
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef %i.ba)
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !58  ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !62 ; 2 uses
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !62
  %.not31 = icmp eq i64 %i.bc, 0
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge2
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !63 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !63
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bi = zext i8 %i.bh to i32
  br label %bb.o

bb.n:                                             ; preds = %.critedge2
  %i.bj = tail call i32 @luaZ_fill(ptr noundef nonnull %i.bb) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = phi i32 [ %i.bi, %bb.m ], [ %i.bj, %bb.n ] ; 4 uses
  store i32 %i.bk, ptr %0, align 8, !tbaa !64
  %i.bl = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !14
  %i.bp = and i16 %i.bo, 8
  %.not29 = icmp ne i16 %i.bp, 0
  %i.bq = icmp eq i32 %i.bk, 95
  %or.cond32 = or i1 %i.bq, %.not29
  br i1 %or.cond32, label %.critedge2, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %bb.o, %check_next.exit37
  tail call fastcc void @save(ptr noundef nonnull %0, i32 noundef 0)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !56  ; 25 uses
  %i.bt = getelementptr i8, ptr %0, i64 72        ; 6 uses
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !30 ; 26 uses
  %i.bu = getelementptr i8, ptr %.val, i64 8
  %.val.val33 = load i64, ptr %i.bu, align 8, !tbaa !65 ; 13 uses
  %.not1.i = icmp eq i64 %.val.val33, 0
  br i1 %.not1.i, label %buffreplace.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %.val.val33, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check61 = icmp ult i64 %.val.val33, 16
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bv = and i64 %.val.val33, 8
  %n.vec = and i64 %.val.val33, -16               ; 3 uses
  %i.bw = and i64 %.val.val33, 15
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue91, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue91 ] ; 2 uses
  %i.bx = sub i64 %.val.val33, %index             ; 16 uses
  %i.by = getelementptr i8, ptr %.val.val, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -16
  %wide.load = load <16 x i8>, ptr %i.bz, align 1, !tbaa !9
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ca = icmp eq <16 x i8> %reverse, splat (i8 46) ; 16 uses
  %i.cb = extractelement <16 x i1> %i.ca, i64 0
  br i1 %i.cb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cc = getelementptr i8, ptr %i.by, i64 -1
  store i8 %i.bs, ptr %i.cc, align 1, !tbaa !9
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cd = extractelement <16 x i1> %i.ca, i64 1
  br i1 %i.cd, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue
  %i.ce = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  store i8 %i.bs, ptr %i.cf, align 1, !tbaa !9
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue
  %i.cg = extractelement <16 x i1> %i.ca, i64 2
  br i1 %i.cg, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.ch = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.ci = getelementptr i8, ptr %i.ch, i64 -3
  store i8 %i.bs, ptr %i.ci, align 1, !tbaa !9
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.cj = extractelement <16 x i1> %i.ca, i64 3
  br i1 %i.cj, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.ck = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4
  store i8 %i.bs, ptr %i.cl, align 1, !tbaa !9
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.cm = extractelement <16 x i1> %i.ca, i64 4
  br i1 %i.cm, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.cn = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.co = getelementptr i8, ptr %i.cn, i64 -5
  store i8 %i.bs, ptr %i.co, align 1, !tbaa !9
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.cp = extractelement <16 x i1> %i.ca, i64 5
  br i1 %i.cp, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.cq = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.cr = getelementptr i8, ptr %i.cq, i64 -6
  store i8 %i.bs, ptr %i.cr, align 1, !tbaa !9
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.cs = extractelement <16 x i1> %i.ca, i64 6
  br i1 %i.cs, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.ct = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.cu = getelementptr i8, ptr %i.ct, i64 -7
  store i8 %i.bs, ptr %i.cu, align 1, !tbaa !9
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.cv = extractelement <16 x i1> %i.ca, i64 7
  br i1 %i.cv, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.cw = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.cx = getelementptr i8, ptr %i.cw, i64 -8
  store i8 %i.bs, ptr %i.cx, align 1, !tbaa !9
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.cy = extractelement <16 x i1> %i.ca, i64 8
  br i1 %i.cy, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.cz = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.da = getelementptr i8, ptr %i.cz, i64 -9
  store i8 %i.bs, ptr %i.da, align 1, !tbaa !9
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.db = extractelement <16 x i1> %i.ca, i64 9
  br i1 %i.db, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.dc = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.dd = getelementptr i8, ptr %i.dc, i64 -10
  store i8 %i.bs, ptr %i.dd, align 1, !tbaa !9
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.de = extractelement <16 x i1> %i.ca, i64 10
  br i1 %i.de, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.df = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.dg = getelementptr i8, ptr %i.df, i64 -11
  store i8 %i.bs, ptr %i.dg, align 1, !tbaa !9
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.dh = extractelement <16 x i1> %i.ca, i64 11
  br i1 %i.dh, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.di = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.dj = getelementptr i8, ptr %i.di, i64 -12
  store i8 %i.bs, ptr %i.dj, align 1, !tbaa !9
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.dk = extractelement <16 x i1> %i.ca, i64 12
  br i1 %i.dk, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.dl = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.dm = getelementptr i8, ptr %i.dl, i64 -13
  store i8 %i.bs, ptr %i.dm, align 1, !tbaa !9
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.dn = extractelement <16 x i1> %i.ca, i64 13
  br i1 %i.dn, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.do = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.dp = getelementptr i8, ptr %i.do, i64 -14
  store i8 %i.bs, ptr %i.dp, align 1, !tbaa !9
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.dq = extractelement <16 x i1> %i.ca, i64 14
  br i1 %i.dq, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.dr = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.ds = getelementptr i8, ptr %i.dr, i64 -15
  store i8 %i.bs, ptr %i.ds, align 1, !tbaa !9
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.dt = extractelement <16 x i1> %i.ca, i64 15
  br i1 %i.dt, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.du = getelementptr i8, ptr %.val.val, i64 %i.bx
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  store i8 %i.bs, ptr %i.dv, align 1, !tbaa !9
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %pred.store.continue91
  %cmp.n = icmp eq i64 %.val.val33, %n.vec
  br i1 %cmp.n, label %buffreplace.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bv, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %.val.val33, -8              ; 2 uses
  %i.dx = and i64 %.val.val33, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue111, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %pred.store.continue111 ] ; 2 uses
  %i.dy = sub i64 %.val.val33, %index93           ; 8 uses
  %i.dz = getelementptr i8, ptr %.val.val, i64 %i.dy ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  %wide.load94 = load <8 x i8>, ptr %i.ea, align 1, !tbaa !9
  %reverse95 = shufflevector <8 x i8> %wide.load94, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.eb = icmp eq <8 x i8> %reverse95, splat (i8 46) ; 8 uses
  %i.ec = extractelement <8 x i1> %i.eb, i64 0
  br i1 %i.ec, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %vec.epilog.vector.body
  %i.ed = getelementptr i8, ptr %i.dz, i64 -1
  store i8 %i.bs, ptr %i.ed, align 1, !tbaa !9
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %vec.epilog.vector.body
  %i.ee = extractelement <8 x i1> %i.eb, i64 1
  br i1 %i.ee, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.ef = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.eg = getelementptr i8, ptr %i.ef, i64 -2
  store i8 %i.bs, ptr %i.eg, align 1, !tbaa !9
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.eh = extractelement <8 x i1> %i.eb, i64 2
  br i1 %i.eh, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.ei = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.ej = getelementptr i8, ptr %i.ei, i64 -3
  store i8 %i.bs, ptr %i.ej, align 1, !tbaa !9
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.ek = extractelement <8 x i1> %i.eb, i64 3
  br i1 %i.ek, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.el = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.em = getelementptr i8, ptr %i.el, i64 -4
  store i8 %i.bs, ptr %i.em, align 1, !tbaa !9
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.en = extractelement <8 x i1> %i.eb, i64 4
  br i1 %i.en, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.eo = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.ep = getelementptr i8, ptr %i.eo, i64 -5
  store i8 %i.bs, ptr %i.ep, align 1, !tbaa !9
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.eq = extractelement <8 x i1> %i.eb, i64 5
  br i1 %i.eq, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.er = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.es = getelementptr i8, ptr %i.er, i64 -6
  store i8 %i.bs, ptr %i.es, align 1, !tbaa !9
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.et = extractelement <8 x i1> %i.eb, i64 6
  br i1 %i.et, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.eu = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.ev = getelementptr i8, ptr %i.eu, i64 -7
  store i8 %i.bs, ptr %i.ev, align 1, !tbaa !9
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.ew = extractelement <8 x i1> %i.eb, i64 7
  br i1 %i.ew, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.ex = getelementptr i8, ptr %.val.val, i64 %i.dy
  %i.ey = getelementptr i8, ptr %i.ex, i64 -8
  store i8 %i.bs, ptr %i.ey, align 1, !tbaa !9
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %index.next112 = add nuw i64 %index93, 8        ; 2 uses
  %i.ez = icmp eq i64 %index.next112, %n.vec92
  br i1 %i.ez, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %pred.store.continue111
  %cmp.n113 = icmp eq i64 %.val.val33, %n.vec92
  br i1 %cmp.n113, label %buffreplace.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.in.i.ph = phi i64 [ %.val.val33, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.q
  %.in.i = phi i64 [ %i.fa, %bb.q ], [ %.in.i.ph, %.lr.ph.i.preheader ]
  %i.fa = add i64 %.in.i, -1                      ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val.val, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fd = icmp eq i8 %i.fc, 46
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  store i8 %i.bs, ptr %i.fb, align 1, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.not.i38 = icmp eq i64 %i.fa, 0
  br i1 %.not.i38, label %buffreplace.exit.loopexit, label %.lr.ph.i, !llvm.loop !80

buffreplace.exit.loopexit:                        ; preds = %bb.q, %vec.epilog.middle.block, %middle.block
  %.pre52 = load ptr, ptr %i.bt, align 8, !tbaa !27
  %.pre53 = load ptr, ptr %.pre52, align 8, !tbaa !30
  br label %buffreplace.exit

buffreplace.exit:                                 ; preds = %buffreplace.exit.loopexit, %._crit_edge
  %i.fe = phi ptr [ %.pre53, %buffreplace.exit.loopexit ], [ %.val.val, %._crit_edge ]
  %i.ff = tail call i32 @luaO_str2d(ptr noundef %i.fe, ptr noundef %1) #5
  %.not30 = icmp eq i32 %i.ff, 0
  br i1 %.not30, label %bb.r, label %trydecpoint.exit

bb.r:                                             ; preds = %buffreplace.exit
  %i.fg = tail call ptr @localeconv() #5          ; 2 uses
  %i.fh = load i8, ptr %i.br, align 8, !tbaa !56  ; 3 uses
  %.not.i39 = icmp eq ptr %i.fg, null
  br i1 %.not.i39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !91
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fk = phi i8 [ %i.fj, %bb.s ], [ 46, %bb.r ]  ; 26 uses
  store i8 %i.fk, ptr %i.br, align 8, !tbaa !56
  %.val12.i = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val12.val.i = load ptr, ptr %.val12.i, align 8, !tbaa !30 ; 26 uses
  %i.fl = getelementptr i8, ptr %.val12.i, i64 8
  %.val12.val13.i = load i64, ptr %i.fl, align 8, !tbaa !65 ; 13 uses
  %.not1.i.i = icmp eq i64 %.val12.val13.i, 0
  br i1 %.not1.i.i, label %buffreplace.exit.i, label %iter.check160

iter.check160:                                    ; preds = %bb.t
  %min.iters.check115 = icmp ult i64 %.val12.val13.i, 8
  br i1 %min.iters.check115, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check116

vector.main.loop.iter.check116:                   ; preds = %iter.check160
  %min.iters.check117 = icmp ult i64 %.val12.val13.i, 16
  br i1 %min.iters.check117, label %vec.epilog.ph164, label %vector.ph118

vector.ph118:                                     ; preds = %vector.main.loop.iter.check116
  %i.fm = and i64 %.val12.val13.i, 8
  %n.vec119 = and i64 %.val12.val13.i, -16        ; 3 uses
  %i.fn = and i64 %.val12.val13.i, 15
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.fh, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body120

vector.body120:                                   ; preds = %pred.store.continue155, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next156, %pred.store.continue155 ] ; 2 uses
  %i.fo = sub i64 %.val12.val13.i, %index121      ; 16 uses
  %i.fp = getelementptr i8, ptr %.val12.val.i, i64 %i.fo ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 -16
  %wide.load122 = load <16 x i8>, ptr %i.fq, align 1, !tbaa !9
  %reverse123 = shufflevector <16 x i8> %wide.load122, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fr = icmp eq <16 x i8> %reverse123, %broadcast.splat ; 16 uses
  %i.fs = extractelement <16 x i1> %i.fr, i64 0
  br i1 %i.fs, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %vector.body120
  %i.ft = getelementptr i8, ptr %i.fp, i64 -1
  store i8 %i.fk, ptr %i.ft, align 1, !tbaa !9
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %vector.body120
  %i.fu = extractelement <16 x i1> %i.fr, i64 1
  br i1 %i.fu, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue125
  %i.fv = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.fw = getelementptr i8, ptr %i.fv, i64 -2
  store i8 %i.fk, ptr %i.fw, align 1, !tbaa !9
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue125
  %i.fx = extractelement <16 x i1> %i.fr, i64 2
  br i1 %i.fx, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.fy = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.fz = getelementptr i8, ptr %i.fy, i64 -3
  store i8 %i.fk, ptr %i.fz, align 1, !tbaa !9
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.ga = extractelement <16 x i1> %i.fr, i64 3
  br i1 %i.ga, label %pred.store.if130, label %pred.store.continue131

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.gb = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gc = getelementptr i8, ptr %i.gb, i64 -4
  store i8 %i.fk, ptr %i.gc, align 1, !tbaa !9
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.if130, %pred.store.continue129
  %i.gd = extractelement <16 x i1> %i.fr, i64 4
  br i1 %i.gd, label %pred.store.if132, label %pred.store.continue133

pred.store.if132:                                 ; preds = %pred.store.continue131
  %i.ge = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gf = getelementptr i8, ptr %i.ge, i64 -5
  store i8 %i.fk, ptr %i.gf, align 1, !tbaa !9
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.if132, %pred.store.continue131
  %i.gg = extractelement <16 x i1> %i.fr, i64 5
  br i1 %i.gg, label %pred.store.if134, label %pred.store.continue135

pred.store.if134:                                 ; preds = %pred.store.continue133
  %i.gh = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gi = getelementptr i8, ptr %i.gh, i64 -6
  store i8 %i.fk, ptr %i.gi, align 1, !tbaa !9
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.if134, %pred.store.continue133
  %i.gj = extractelement <16 x i1> %i.fr, i64 6
  br i1 %i.gj, label %pred.store.if136, label %pred.store.continue137

pred.store.if136:                                 ; preds = %pred.store.continue135
  %i.gk = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gl = getelementptr i8, ptr %i.gk, i64 -7
  store i8 %i.fk, ptr %i.gl, align 1, !tbaa !9
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.if136, %pred.store.continue135
  %i.gm = extractelement <16 x i1> %i.fr, i64 7
  br i1 %i.gm, label %pred.store.if138, label %pred.store.continue139

pred.store.if138:                                 ; preds = %pred.store.continue137
  %i.gn = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  store i8 %i.fk, ptr %i.go, align 1, !tbaa !9
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.if138, %pred.store.continue137
  %i.gp = extractelement <16 x i1> %i.fr, i64 8
  br i1 %i.gp, label %pred.store.if140, label %pred.store.continue141

pred.store.if140:                                 ; preds = %pred.store.continue139
  %i.gq = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gr = getelementptr i8, ptr %i.gq, i64 -9
  store i8 %i.fk, ptr %i.gr, align 1, !tbaa !9
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.if140, %pred.store.continue139
  %i.gs = extractelement <16 x i1> %i.fr, i64 9
  br i1 %i.gs, label %pred.store.if142, label %pred.store.continue143

pred.store.if142:                                 ; preds = %pred.store.continue141
  %i.gt = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gu = getelementptr i8, ptr %i.gt, i64 -10
  store i8 %i.fk, ptr %i.gu, align 1, !tbaa !9
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.if142, %pred.store.continue141
  %i.gv = extractelement <16 x i1> %i.fr, i64 10
  br i1 %i.gv, label %pred.store.if144, label %pred.store.continue145

pred.store.if144:                                 ; preds = %pred.store.continue143
  %i.gw = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.gx = getelementptr i8, ptr %i.gw, i64 -11
  store i8 %i.fk, ptr %i.gx, align 1, !tbaa !9
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.if144, %pred.store.continue143
  %i.gy = extractelement <16 x i1> %i.fr, i64 11
  br i1 %i.gy, label %pred.store.if146, label %pred.store.continue147

pred.store.if146:                                 ; preds = %pred.store.continue145
  %i.gz = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.ha = getelementptr i8, ptr %i.gz, i64 -12
  store i8 %i.fk, ptr %i.ha, align 1, !tbaa !9
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.if146, %pred.store.continue145
  %i.hb = extractelement <16 x i1> %i.fr, i64 12
  br i1 %i.hb, label %pred.store.if148, label %pred.store.continue149

pred.store.if148:                                 ; preds = %pred.store.continue147
  %i.hc = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.hd = getelementptr i8, ptr %i.hc, i64 -13
  store i8 %i.fk, ptr %i.hd, align 1, !tbaa !9
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.if148, %pred.store.continue147
  %i.he = extractelement <16 x i1> %i.fr, i64 13
  br i1 %i.he, label %pred.store.if150, label %pred.store.continue151

pred.store.if150:                                 ; preds = %pred.store.continue149
  %i.hf = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.hg = getelementptr i8, ptr %i.hf, i64 -14
  store i8 %i.fk, ptr %i.hg, align 1, !tbaa !9
  br label %pred.store.continue151

pred.store.continue151:                           ; preds = %pred.store.if150, %pred.store.continue149
  %i.hh = extractelement <16 x i1> %i.fr, i64 14
  br i1 %i.hh, label %pred.store.if152, label %pred.store.continue153

pred.store.if152:                                 ; preds = %pred.store.continue151
  %i.hi = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.hj = getelementptr i8, ptr %i.hi, i64 -15
  store i8 %i.fk, ptr %i.hj, align 1, !tbaa !9
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.if152, %pred.store.continue151
  %i.hk = extractelement <16 x i1> %i.fr, i64 15
  br i1 %i.hk, label %pred.store.if154, label %pred.store.continue155

pred.store.if154:                                 ; preds = %pred.store.continue153
  %i.hl = getelementptr i8, ptr %.val12.val.i, i64 %i.fo
  %i.hm = getelementptr i8, ptr %i.hl, i64 -16
  store i8 %i.fk, ptr %i.hm, align 1, !tbaa !9
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.if154, %pred.store.continue153
  %index.next156 = add nuw i64 %index121, 16      ; 2 uses
  %i.hn = icmp eq i64 %index.next156, %n.vec119
  br i1 %i.hn, label %middle.block157, label %vector.body120, !llvm.loop !81

middle.block157:                                  ; preds = %pred.store.continue155
  %cmp.n158 = icmp eq i64 %.val12.val13.i, %n.vec119
  br i1 %cmp.n158, label %buffreplace.exit.loopexit.i, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block157
  %min.epilog.iters.check163.not.not = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check163.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph164, !prof !89

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check116, %vec.epilog.iter.check162
  %vec.epilog.resume.val159 = phi i64 [ %n.vec119, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check116 ]
  %n.vec165 = and i64 %.val12.val13.i, -8         ; 2 uses
  %i.ho = and i64 %.val12.val13.i, 7
  %broadcast.splatinsert166 = insertelement <8 x i8> poison, i8 %i.fh, i64 0
  %broadcast.splat167 = shufflevector <8 x i8> %broadcast.splatinsert166, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %pred.store.continue187, %vec.epilog.ph164
  %index169 = phi i64 [ %vec.epilog.resume.val159, %vec.epilog.ph164 ], [ %index.next188, %pred.store.continue187 ] ; 2 uses
  %i.hp = sub i64 %.val12.val13.i, %index169      ; 8 uses
  %i.hq = getelementptr i8, ptr %.val12.val.i, i64 %i.hp ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 -8
  %wide.load170 = load <8 x i8>, ptr %i.hr, align 1, !tbaa !9
  %reverse171 = shufflevector <8 x i8> %wide.load170, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.hs = icmp eq <8 x i8> %reverse171, %broadcast.splat167 ; 8 uses
  %i.ht = extractelement <8 x i1> %i.hs, i64 0
  br i1 %i.ht, label %pred.store.if172, label %pred.store.continue173

pred.store.if172:                                 ; preds = %vec.epilog.vector.body168
  %i.hu = getelementptr i8, ptr %i.hq, i64 -1
  store i8 %i.fk, ptr %i.hu, align 1, !tbaa !9
  br label %pred.store.continue173

pred.store.continue173:                           ; preds = %pred.store.if172, %vec.epilog.vector.body168
  %i.hv = extractelement <8 x i1> %i.hs, i64 1
  br i1 %i.hv, label %pred.store.if174, label %pred.store.continue175

pred.store.if174:                                 ; preds = %pred.store.continue173
  %i.hw = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.hx = getelementptr i8, ptr %i.hw, i64 -2
  store i8 %i.fk, ptr %i.hx, align 1, !tbaa !9
  br label %pred.store.continue175

pred.store.continue175:                           ; preds = %pred.store.if174, %pred.store.continue173
  %i.hy = extractelement <8 x i1> %i.hs, i64 2
  br i1 %i.hy, label %pred.store.if176, label %pred.store.continue177

pred.store.if176:                                 ; preds = %pred.store.continue175
  %i.hz = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.ia = getelementptr i8, ptr %i.hz, i64 -3
  store i8 %i.fk, ptr %i.ia, align 1, !tbaa !9
  br label %pred.store.continue177

pred.store.continue177:                           ; preds = %pred.store.if176, %pred.store.continue175
  %i.ib = extractelement <8 x i1> %i.hs, i64 3
  br i1 %i.ib, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue177
  %i.ic = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.id = getelementptr i8, ptr %i.ic, i64 -4
  store i8 %i.fk, ptr %i.id, align 1, !tbaa !9
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue177
  %i.ie = extractelement <8 x i1> %i.hs, i64 4
  br i1 %i.ie, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  %i.if = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.ig = getelementptr i8, ptr %i.if, i64 -5
  store i8 %i.fk, ptr %i.ig, align 1, !tbaa !9
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.ih = extractelement <8 x i1> %i.hs, i64 5
  br i1 %i.ih, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  %i.ii = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.ij = getelementptr i8, ptr %i.ii, i64 -6
  store i8 %i.fk, ptr %i.ij, align 1, !tbaa !9
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %i.ik = extractelement <8 x i1> %i.hs, i64 6
  br i1 %i.ik, label %pred.store.if184, label %pred.store.continue185

pred.store.if184:                                 ; preds = %pred.store.continue183
  %i.il = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.im = getelementptr i8, ptr %i.il, i64 -7
  store i8 %i.fk, ptr %i.im, align 1, !tbaa !9
  br label %pred.store.continue185

pred.store.continue185:                           ; preds = %pred.store.if184, %pred.store.continue183
  %i.in = extractelement <8 x i1> %i.hs, i64 7
  br i1 %i.in, label %pred.store.if186, label %pred.store.continue187

pred.store.if186:                                 ; preds = %pred.store.continue185
  %i.io = getelementptr i8, ptr %.val12.val.i, i64 %i.hp
  %i.ip = getelementptr i8, ptr %i.io, i64 -8
  store i8 %i.fk, ptr %i.ip, align 1, !tbaa !9
  br label %pred.store.continue187

pred.store.continue187:                           ; preds = %pred.store.if186, %pred.store.continue185
  %index.next188 = add nuw i64 %index169, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next188, %n.vec165
  br i1 %i.iq, label %vec.epilog.middle.block189, label %vec.epilog.vector.body168, !llvm.loop !82

vec.epilog.middle.block189:                       ; preds = %pred.store.continue187
  %cmp.n190 = icmp eq i64 %.val12.val13.i, %n.vec165
  br i1 %cmp.n190, label %buffreplace.exit.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block189
  %.in.i.i.ph = phi i64 [ %.val12.val13.i, %iter.check160 ], [ %i.fn, %vec.epilog.iter.check162 ], [ %i.ho, %vec.epilog.middle.block189 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.v
  %.in.i.i = phi i64 [ %i.ir, %bb.v ], [ %.in.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ir = add i64 %.in.i.i, -1                    ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.val12.val.i, i64 %i.ir ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !9
  %i.iu = icmp eq i8 %i.it, %i.fh
  br i1 %i.iu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  store i8 %i.fk, ptr %i.is, align 1, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.not.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i, label %buffreplace.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !83

buffreplace.exit.loopexit.i:                      ; preds = %bb.v, %vec.epilog.middle.block189, %middle.block157
  %.pre.i = load ptr, ptr %i.bt, align 8, !tbaa !27
  %.pre20.i = load ptr, ptr %.pre.i, align 8, !tbaa !30
  br label %buffreplace.exit.i

buffreplace.exit.i:                               ; preds = %buffreplace.exit.loopexit.i, %bb.t
  %i.iv = phi ptr [ %.pre20.i, %buffreplace.exit.loopexit.i ], [ %.val12.val.i, %bb.t ]
  %i.iw = tail call i32 @luaO_str2d(ptr noundef %i.iv, ptr noundef %1) #5
  %.not11.i = icmp eq i32 %i.iw, 0
  br i1 %.not11.i, label %bb.w, label %trydecpoint.exit

bb.w:                                             ; preds = %buffreplace.exit.i
  %i.ix = load i8, ptr %i.br, align 8, !tbaa !56  ; 3 uses
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !30 ; 25 uses
  %i.iy = getelementptr i8, ptr %.val.i, i64 8
  %.val.val14.i = load i64, ptr %i.iy, align 8, !tbaa !65 ; 13 uses
  %.not1.i15.i = icmp eq i64 %.val.val14.i, 0
  br i1 %.not1.i15.i, label %buffreplace.exit19.i, label %iter.check239

iter.check239:                                    ; preds = %bb.w
  %min.iters.check192 = icmp ult i64 %.val.val14.i, 8
  br i1 %min.iters.check192, label %.lr.ph.i16.i.preheader, label %vector.main.loop.iter.check193

vector.main.loop.iter.check193:                   ; preds = %iter.check239
  %min.iters.check194 = icmp ult i64 %.val.val14.i, 16
  br i1 %min.iters.check194, label %vec.epilog.ph243, label %vector.ph195

vector.ph195:                                     ; preds = %vector.main.loop.iter.check193
  %i.iz = and i64 %.val.val14.i, 8
  %n.vec196 = and i64 %.val.val14.i, -16          ; 3 uses
  %i.ja = and i64 %.val.val14.i, 15
  %broadcast.splatinsert197 = insertelement <16 x i8> poison, i8 %i.ix, i64 0
  %broadcast.splat198 = shufflevector <16 x i8> %broadcast.splatinsert197, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body199

vector.body199:                                   ; preds = %pred.store.continue234, %vector.ph195
  %index200 = phi i64 [ 0, %vector.ph195 ], [ %index.next235, %pred.store.continue234 ] ; 2 uses
  %i.jb = sub i64 %.val.val14.i, %index200        ; 16 uses
  %i.jc = getelementptr i8, ptr %.val.val.i, i64 %i.jb ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 -16
  %wide.load201 = load <16 x i8>, ptr %i.jd, align 1, !tbaa !9
  %reverse202 = shufflevector <16 x i8> %wide.load201, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.je = icmp eq <16 x i8> %reverse202, %broadcast.splat198 ; 16 uses
  %i.jf = extractelement <16 x i1> %i.je, i64 0
  br i1 %i.jf, label %pred.store.if203, label %pred.store.continue204

pred.store.if203:                                 ; preds = %vector.body199
  %i.jg = getelementptr i8, ptr %i.jc, i64 -1
  store i8 46, ptr %i.jg, align 1, !tbaa !9
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.if203, %vector.body199
  %i.jh = extractelement <16 x i1> %i.je, i64 1
  br i1 %i.jh, label %pred.store.if205, label %pred.store.continue206

pred.store.if205:                                 ; preds = %pred.store.continue204
  %i.ji = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.jj = getelementptr i8, ptr %i.ji, i64 -2
  store i8 46, ptr %i.jj, align 1, !tbaa !9
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.if205, %pred.store.continue204
  %i.jk = extractelement <16 x i1> %i.je, i64 2
  br i1 %i.jk, label %pred.store.if207, label %pred.store.continue208

pred.store.if207:                                 ; preds = %pred.store.continue206
  %i.jl = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.jm = getelementptr i8, ptr %i.jl, i64 -3
  store i8 46, ptr %i.jm, align 1, !tbaa !9
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.if207, %pred.store.continue206
  %i.jn = extractelement <16 x i1> %i.je, i64 3
  br i1 %i.jn, label %pred.store.if209, label %pred.store.continue210

pred.store.if209:                                 ; preds = %pred.store.continue208
  %i.jo = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.jp = getelementptr i8, ptr %i.jo, i64 -4
  store i8 46, ptr %i.jp, align 1, !tbaa !9
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.if209, %pred.store.continue208
  %i.jq = extractelement <16 x i1> %i.je, i64 4
  br i1 %i.jq, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %pred.store.continue210
  %i.jr = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.js = getelementptr i8, ptr %i.jr, i64 -5
  store i8 46, ptr %i.js, align 1, !tbaa !9
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %pred.store.if211, %pred.store.continue210
  %i.jt = extractelement <16 x i1> %i.je, i64 5
  br i1 %i.jt, label %pred.store.if213, label %pred.store.continue214

pred.store.if213:                                 ; preds = %pred.store.continue212
  %i.ju = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.jv = getelementptr i8, ptr %i.ju, i64 -6
  store i8 46, ptr %i.jv, align 1, !tbaa !9
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.if213, %pred.store.continue212
  %i.jw = extractelement <16 x i1> %i.je, i64 6
  br i1 %i.jw, label %pred.store.if215, label %pred.store.continue216

pred.store.if215:                                 ; preds = %pred.store.continue214
  %i.jx = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.jy = getelementptr i8, ptr %i.jx, i64 -7
  store i8 46, ptr %i.jy, align 1, !tbaa !9
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.if215, %pred.store.continue214
  %i.jz = extractelement <16 x i1> %i.je, i64 7
  br i1 %i.jz, label %pred.store.if217, label %pred.store.continue218

pred.store.if217:                                 ; preds = %pred.store.continue216
  %i.ka = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kb = getelementptr i8, ptr %i.ka, i64 -8
  store i8 46, ptr %i.kb, align 1, !tbaa !9
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.if217, %pred.store.continue216
  %i.kc = extractelement <16 x i1> %i.je, i64 8
  br i1 %i.kc, label %pred.store.if219, label %pred.store.continue220

pred.store.if219:                                 ; preds = %pred.store.continue218
  %i.kd = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.ke = getelementptr i8, ptr %i.kd, i64 -9
  store i8 46, ptr %i.ke, align 1, !tbaa !9
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.if219, %pred.store.continue218
  %i.kf = extractelement <16 x i1> %i.je, i64 9
  br i1 %i.kf, label %pred.store.if221, label %pred.store.continue222

pred.store.if221:                                 ; preds = %pred.store.continue220
  %i.kg = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kh = getelementptr i8, ptr %i.kg, i64 -10
  store i8 46, ptr %i.kh, align 1, !tbaa !9
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.if221, %pred.store.continue220
  %i.ki = extractelement <16 x i1> %i.je, i64 10
  br i1 %i.ki, label %pred.store.if223, label %pred.store.continue224

pred.store.if223:                                 ; preds = %pred.store.continue222
  %i.kj = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kk = getelementptr i8, ptr %i.kj, i64 -11
  store i8 46, ptr %i.kk, align 1, !tbaa !9
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.if223, %pred.store.continue222
  %i.kl = extractelement <16 x i1> %i.je, i64 11
  br i1 %i.kl, label %pred.store.if225, label %pred.store.continue226

pred.store.if225:                                 ; preds = %pred.store.continue224
  %i.km = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kn = getelementptr i8, ptr %i.km, i64 -12
  store i8 46, ptr %i.kn, align 1, !tbaa !9
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.if225, %pred.store.continue224
  %i.ko = extractelement <16 x i1> %i.je, i64 12
  br i1 %i.ko, label %pred.store.if227, label %pred.store.continue228

pred.store.if227:                                 ; preds = %pred.store.continue226
  %i.kp = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kq = getelementptr i8, ptr %i.kp, i64 -13
  store i8 46, ptr %i.kq, align 1, !tbaa !9
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.if227, %pred.store.continue226
  %i.kr = extractelement <16 x i1> %i.je, i64 13
  br i1 %i.kr, label %pred.store.if229, label %pred.store.continue230

pred.store.if229:                                 ; preds = %pred.store.continue228
  %i.ks = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kt = getelementptr i8, ptr %i.ks, i64 -14
  store i8 46, ptr %i.kt, align 1, !tbaa !9
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.if229, %pred.store.continue228
  %i.ku = extractelement <16 x i1> %i.je, i64 14
  br i1 %i.ku, label %pred.store.if231, label %pred.store.continue232

pred.store.if231:                                 ; preds = %pred.store.continue230
  %i.kv = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kw = getelementptr i8, ptr %i.kv, i64 -15
  store i8 46, ptr %i.kw, align 1, !tbaa !9
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.if231, %pred.store.continue230
  %i.kx = extractelement <16 x i1> %i.je, i64 15
  br i1 %i.kx, label %pred.store.if233, label %pred.store.continue234

pred.store.if233:                                 ; preds = %pred.store.continue232
  %i.ky = getelementptr i8, ptr %.val.val.i, i64 %i.jb
  %i.kz = getelementptr i8, ptr %i.ky, i64 -16
  store i8 46, ptr %i.kz, align 1, !tbaa !9
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.if233, %pred.store.continue232
  %index.next235 = add nuw i64 %index200, 16      ; 2 uses
  %i.la = icmp eq i64 %index.next235, %n.vec196
  br i1 %i.la, label %middle.block236, label %vector.body199, !llvm.loop !84

middle.block236:                                  ; preds = %pred.store.continue234
  %cmp.n237 = icmp eq i64 %.val.val14.i, %n.vec196
  br i1 %cmp.n237, label %buffreplace.exit19.i, label %vec.epilog.iter.check241

vec.epilog.iter.check241:                         ; preds = %middle.block236
  %min.epilog.iters.check242.not.not = icmp eq i64 %i.iz, 0
  br i1 %min.epilog.iters.check242.not.not, label %.lr.ph.i16.i.preheader, label %vec.epilog.ph243, !prof !89

vec.epilog.ph243:                                 ; preds = %vector.main.loop.iter.check193, %vec.epilog.iter.check241
  %vec.epilog.resume.val238 = phi i64 [ %n.vec196, %vec.epilog.iter.check241 ], [ 0, %vector.main.loop.iter.check193 ]
  %n.vec244 = and i64 %.val.val14.i, -8           ; 2 uses
  %i.lb = and i64 %.val.val14.i, 7
  %broadcast.splatinsert245 = insertelement <8 x i8> poison, i8 %i.ix, i64 0
  %broadcast.splat246 = shufflevector <8 x i8> %broadcast.splatinsert245, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body247

vec.epilog.vector.body247:                        ; preds = %pred.store.continue266, %vec.epilog.ph243
  %index248 = phi i64 [ %vec.epilog.resume.val238, %vec.epilog.ph243 ], [ %index.next267, %pred.store.continue266 ] ; 2 uses
  %i.lc = sub i64 %.val.val14.i, %index248        ; 8 uses
  %i.ld = getelementptr i8, ptr %.val.val.i, i64 %i.lc ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 -8
  %wide.load249 = load <8 x i8>, ptr %i.le, align 1, !tbaa !9
  %reverse250 = shufflevector <8 x i8> %wide.load249, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.lf = icmp eq <8 x i8> %reverse250, %broadcast.splat246 ; 8 uses
  %i.lg = extractelement <8 x i1> %i.lf, i64 0
  br i1 %i.lg, label %pred.store.if251, label %pred.store.continue252

pred.store.if251:                                 ; preds = %vec.epilog.vector.body247
  %i.lh = getelementptr i8, ptr %i.ld, i64 -1
  store i8 46, ptr %i.lh, align 1, !tbaa !9
end_hunk_0

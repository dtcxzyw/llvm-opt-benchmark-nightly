inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj:bb.a
  %wide.load = load <16 x i8>, ptr %next.gep65, align 1
  %wide.load66 = load <16 x i8>, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load66, ptr %i.av, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec68 = and i64 %i.ap, -4                    ; 4 uses
  %i.ax = getelementptr i8, ptr %i.ad, i64 %n.vec68
  %i.ay = getelementptr i8, ptr %i.ak, i64 %n.vec68
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next73, %vec.epilog.vector.body ] ; 3 uses
  %next.gep70 = getelementptr i8, ptr %i.ad, i64 %index69
  %next.gep71 = getelementptr i8, ptr %i.ak, i64 %index69
  %wide.load72 = load <4 x i8>, ptr %next.gep71, align 1
  store <4 x i8> %wide.load72, ptr %next.gep70, align 1
  %index.next73 = add nuw i64 %index69, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next73, %n.vec68
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !92

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n74 = icmp eq i64 %i.ap, %n.vec68
  br i1 %cmp.n74, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.ad, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ba = load i8, ptr %.02631.i, align 1
  store i8 %i.ba, ptr %.032.i, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.bd = icmp ult ptr %i.bb, %i.aj
  br i1 %i.bd, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !93

bb.l:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 11 uses
  %i.bi = load i32, ptr %3, align 4               ; 5 uses
  %i.bj = icmp slt i32 %i.bi, 50
  br i1 %i.bj, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  %i.bk = zext nneg i32 %i.bi to i64
  br label %iter.check96

bb.m:                                             ; preds = %bb.l
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %.not53 = icmp eq i32 %i.bi, 0
  br i1 %.not53, label %._crit_edge.thread, label %iter.check96

iter.check96:                                     ; preds = %.thread, %bb.m
  %.pn = phi i64 [ %i.bk, %.thread ], [ %i.bo, %bb.m ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pn
  %i.bq = getelementptr inbounds nuw i8, ptr %.040, i64 9 ; 5 uses
  %i.br = add i64 %.pn, %i.a
  %i.bs = add i64 %i.br, 9
  %i.bt = add i64 %i.a, 10
  %umax79 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bt)
  %i.bu = add i64 %umax79, -9
  %i.bv = sub i64 %i.bu, %i.a                     ; 7 uses
  %min.iters.check80 = icmp ult i64 %i.bv, 4
  %i.bw = sub i64 %.04063, %i.a
  %diff.check78 = icmp ugt i64 %i.bw, -32
  %or.cond112 = or i1 %min.iters.check80, %diff.check78
  br i1 %or.cond112, label %.lr.ph.preheader, label %vector.main.loop.iter.check81

vector.main.loop.iter.check81:                    ; preds = %iter.check96
  %min.iters.check82 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check82, label %vec.epilog.ph100, label %vector.ph83

vector.ph83:                                      ; preds = %vector.main.loop.iter.check81
  %i.bx = and i64 %i.bv, 28
  %n.vec84 = and i64 %i.bv, -32                   ; 5 uses
  %i.by = getelementptr i8, ptr %i.bh, i64 %n.vec84
  %i.bz = getelementptr i8, ptr %i.bq, i64 %n.vec84
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next91, %vector.body85 ] ; 3 uses
  %next.gep87 = getelementptr i8, ptr %i.bh, i64 %index86 ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.bq, i64 %index86 ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load89 = load <16 x i8>, ptr %next.gep88, align 1
  %wide.load90 = load <16 x i8>, ptr %i.ca, align 1
  %i.cb = getelementptr i8, ptr %next.gep87, i64 16
  store <16 x i8> %wide.load89, ptr %next.gep87, align 1
  store <16 x i8> %wide.load90, ptr %i.cb, align 1
  %index.next91 = add nuw i64 %index86, 32        ; 2 uses
  %i.cc = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.cc, label %middle.block92, label %vector.body85, !llvm.loop !94

middle.block92:                                   ; preds = %vector.body85
  %cmp.n93 = icmp eq i64 %i.bv, %n.vec84
  br i1 %cmp.n93, label %._crit_edge, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block92
  %min.epilog.iters.check99 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.preheader, label %vec.epilog.ph100, !prof !30

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check81, %vec.epilog.iter.check98
  %vec.epilog.resume.val94 = phi i64 [ %n.vec84, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check81 ]
  %n.vec101 = and i64 %i.bv, -4                   ; 4 uses
  %i.cd = getelementptr i8, ptr %i.bh, i64 %n.vec101
  %i.ce = getelementptr i8, ptr %i.bq, i64 %n.vec101
  br label %vec.epilog.vector.body102

vec.epilog.vector.body102:                        ; preds = %vec.epilog.vector.body102, %vec.epilog.ph100
  %index103 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph100 ], [ %index.next107, %vec.epilog.vector.body102 ] ; 3 uses
  %next.gep104 = getelementptr i8, ptr %i.bh, i64 %index103
  %next.gep105 = getelementptr i8, ptr %i.bq, i64 %index103
  %wide.load106 = load <4 x i8>, ptr %next.gep105, align 1
  store <4 x i8> %wide.load106, ptr %next.gep104, align 1
  %index.next107 = add nuw i64 %index103, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.cf, label %vec.epilog.middle.block108, label %vec.epilog.vector.body102, !llvm.loop !95

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body102
  %cmp.n109 = icmp eq i64 %i.bv, %n.vec101
  br i1 %cmp.n109, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block108
  %.052.ph = phi ptr [ %i.bh, %iter.check96 ], [ %i.by, %vec.epilog.iter.check98 ], [ %i.cd, %vec.epilog.middle.block108 ]
  %.03951.ph = phi ptr [ %i.bq, %iter.check96 ], [ %i.bz, %vec.epilog.iter.check98 ], [ %i.ce, %vec.epilog.middle.block108 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.052 = phi ptr [ %i.ch, %.lr.ph ], [ %.052.ph, %.lr.ph.preheader ] ; 2 uses
  %.03951 = phi ptr [ %i.ci, %.lr.ph ], [ %.03951.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cg = load i8, ptr %.03951, align 1
  store i8 %i.cg, ptr %.052, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.052, i64 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.03951, i64 1
  %i.cj = icmp ult ptr %i.ch, %i.bp
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block108, %middle.block92
  %.pre = load i32, ptr %3, align 4               ; 3 uses
  %i.ck = icmp slt i32 %.pre, 50
  br i1 %i.ck, label %._crit_edge.thread, label %bb.n

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.cl = phi i32 [ %.pre, %._crit_edge ], [ %i.bi, %bb.m ]
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1
  %i.cp = zext i8 %i.co to i32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.cq = phi i32 [ %i.cp, %._crit_edge.thread ], [ %.pre, %._crit_edge ] ; 2 uses
  store i32 %i.cq, ptr %0, align 4
  %i.cr = load i32, ptr %3, align 4               ; 6 uses
  %i.cs = icmp sgt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.o, label %uprv_decNumberCopy_78.exit

bb.o:                                             ; preds = %bb.n
  %.not.i = icmp sgt i32 %i.cr, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.bh, align 1
  br label %_ZL8decDecapP9decNumberi.exit

bb.q:                                             ; preds = %bb.o
  %i.ct = icmp samesign ult i32 %i.cr, 50
  %i.cu = zext nneg i32 %i.cr to i64              ; 2 uses
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %i.cx = zext i8 %i.cw to i32
  %i.cy = zext i8 %i.cw to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn34.i = phi i64 [ %i.cy, %bb.r ], [ %i.cu, %bb.q ]
  %i.cz = phi i32 [ %i.cx, %bb.r ], [ %i.cr, %bb.q ] ; 4 uses
  %.neg35.i = add nuw nsw i32 %i.cr, 1
  %i.da = sub nsw i32 %.neg35.i, %i.cz            ; 2 uses
  %.not33.i = icmp eq i32 %i.da, 1
  br i1 %.not33.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.pn.i50 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.pn34.i
  %i.db = getelementptr inbounds i8, ptr %.pn.i50, i64 -1 ; 2 uses
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = load i8, ptr %i.db, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = urem i32 %i.dg, %i.de
  %i.di = trunc nuw i32 %i.dh to i8
  store i8 %i.di, ptr %i.db, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dj = zext nneg i32 %i.cz to i64
  %i.dk = getelementptr i8, ptr %i.bh, i64 %i.dj
  %.01011.i.i = getelementptr i8, ptr %i.dk, i64 -1 ; 2 uses
  %.not12.i.i = icmp ult ptr %.01011.i.i, %i.bh
  br i1 %.not12.i.i, label %_ZL8decDecapP9decNumberi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.v
  %.01014.i.i = phi ptr [ %.010.i.i, %bb.v ], [ %.01011.i.i, %bb.u ] ; 2 uses
  %.013.i.i = phi i32 [ %i.do, %bb.v ], [ %i.cz, %bb.u ] ; 3 uses
  %i.dl = load i8, ptr %.01014.i.i, align 1
  %i.dm = icmp ne i8 %i.dl, 0
  %i.dn = icmp eq i32 %.013.i.i, 1
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i, label %_ZL8decDecapP9decNumberi.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.do = add nsw i32 %.013.i.i, -1               ; 2 uses
  %.010.i.i = getelementptr i8, ptr %.01014.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %.010.i.i, %i.bh
  br i1 %.not.i.i, label %_ZL8decDecapP9decNumberi.exit, label %.lr.ph.i.i, !llvm.loop !7

_ZL8decDecapP9decNumberi.exit:                    ; preds = %.lr.ph.i.i, %bb.v, %bb.p, %bb.u
  %storemerge.i = phi i32 [ 1, %bb.p ], [ %i.cz, %bb.u ], [ %.013.i.i, %.lr.ph.i.i ], [ %i.do, %bb.v ]
  store i32 %storemerge.i, ptr %0, align 4
  br label %uprv_decNumberCopy_78.exit

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.i, %bb.h, %bb.n, %_ZL8decDecapP9decNumberi.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 4
  %i.dr = and i8 %i.dq, -49
  %i.ds = or disjoint i8 %i.dr, 32
  store i8 %i.ds, ptr %i.dp, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dt, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decNumberCopyAbs_78(ptr nofree noundef returned captures(address, ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %uprv_decNumberCopy_78.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load i32, ptr %1, align 4
  store i32 %i.j, ptr %0, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.l, ptr %i.m, align 1
  %i.n = load i32, ptr %1, align 4                ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %uprv_decNumberCopy_78.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.q = icmp samesign ult i32 %i.n, 50
  %i.r = zext nneg i32 %i.n to i64                ; 2 uses
  br i1 %i.q, label %bb.d, label %iter.check

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.c, %bb.d
  %.pn.i = phi i64 [ %i.u, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 %.pn.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.x = add i64 %.pn.i, %i.a
  %i.y = add i64 %i.x, 9
  %i.z = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = add i64 %umax, -10
  %i.ab = sub i64 %i.aa, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 4
  %i.ac = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 28
  %n.vec = and i64 %i.ab, -32                     ; 5 uses
  %i.ae = getelementptr i8, ptr %i.p, i64 %n.vec
  %i.af = getelementptr i8, ptr %i.w, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.w, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep7, align 1
  %wide.load8 = load <16 x i8>, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load8, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %uprv_decNumberCopy_78.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.ab, -4                    ; 4 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %n.vec10
  %i.ak = getelementptr i8, ptr %i.w, i64 %n.vec10
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.p, i64 %index11
  %next.gep13 = getelementptr i8, ptr %i.w, i64 %index11
  %wide.load14 = load <4 x i8>, ptr %next.gep13, align 1
  store <4 x i8> %wide.load14, ptr %next.gep12, align 1
  %index.next15 = add nuw i64 %index11, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next15, %n.vec10
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.ab, %n.vec10
  br i1 %cmp.n16, label %uprv_decNumberCopy_78.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.p, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.an, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.am = load i8, ptr %.02631.i, align 1
  store i8 %i.am, ptr %.032.i, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.ap = icmp ult ptr %i.an, %i.v
  br i1 %i.ap, label %.lr.ph.i, label %uprv_decNumberCopy_78.exit, !llvm.loop !99

uprv_decNumberCopy_78.exit:                       ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, 127
  store i8 %i.as, ptr %i.aq, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberLog10_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %4 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %5 = alloca [2 x %struct.decNumber], align 16   ; 14 uses
  %6 = alloca %struct.decContext, align 4         ; 14 uses
  %i.c = alloca i32, align 4                      ; 8 uses
end_hunk_0
begin_hunk_1_@uprv_decNumberShift_78:bb.a
  %i.bk = add i32 %i.bj, %.474110.i.epil          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.6111.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !135

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bd, %._crit_edge.i.unr-lcssa ], [ %i.bk, %.lr.ph.i.epil ] ; 5 uses
  %i.bm = icmp eq i32 %i.l, 10
  br i1 %i.bm, label %bb.g, label %.thread103.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = add nsw i32 %i.l, -2
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo
  %scevgep = getelementptr i8, ptr %i.bp, i64 10
  %i.bq = getelementptr [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = sdiv i32 %.lcssa, %i.bs
  %i.bu = load i8, ptr %scevgep, align 1
  %i.bv = zext i8 %i.bu to i32
  %.not85.i = icmp ne i32 %i.bt, %i.bv
  %i.bw = icmp sgt i32 %.lcssa, 1999999997
  %or.cond.i = select i1 %i.m, i1 %i.bw, i1 false
  %or.cond93.i = or i1 %or.cond.i, %.not85.i
  %i.bx = icmp sgt i8 %i.f, -1
  %i.by = icmp sgt i32 %.lcssa, 999999999
  %or.cond4.i = select i1 %i.bx, i1 %i.by, i1 false
  %i.bz = select i1 %or.cond93.i, i1 true, i1 %or.cond4.i
  br i1 %i.bz, label %.thread.i, label %.thread103.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.ca = and i32 %i.t, 1
  %..i = or disjoint i32 %i.ca, -2147483646
  br label %_ZL9decGetIntPK9decNumber.exit

.thread103.i:                                     ; preds = %.preheader.i, %bb.g, %._crit_edge.i
  %.474.lcssa.i69 = phi i32 [ %.lcssa, %._crit_edge.i ], [ %.lcssa, %bb.g ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.cb = sub nsw i32 0, %.474.lcssa.i69
  %spec.select = select i1 %i.m, i32 %i.cb, i32 %.474.lcssa.i69
  br label %_ZL9decGetIntPK9decNumber.exit

_ZL9decGetIntPK9decNumber.exit:                   ; preds = %.thread103.i, %.thread.i
  %.380.i = phi i32 [ %spec.select, %.thread103.i ], [ %..i, %.thread.i ] ; 2 uses
  switch i32 %.380.i, label %_ZL9decGetIntPK9decNumber.exit.thread [
    i32 -2147483645, label %.thread76
    i32 -2147483646, label %.thread76
    i32 -2147483648, label %.thread76
  ]

_ZL9decGetIntPK9decNumber.exit.thread:            ; preds = %bb.e, %_ZL9decGetIntPK9decNumber.exit
  %.380.i71 = phi i32 [ %.380.i, %_ZL9decGetIntPK9decNumber.exit ], [ 0, %bb.e ] ; 8 uses
  %i.cc = tail call i32 @llvm.abs.i32(i32 %.380.i71, i1 true)
  %i.cd = load i32, ptr %3, align 4
  %i.ce = icmp sgt i32 %i.cc, %i.cd
  br i1 %i.ce, label %.thread76, label %bb.h

bb.h:                                             ; preds = %_ZL9decGetIntPK9decNumber.exit.thread
  %i.cf = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %.not60 = icmp eq i32 %.380.i71, 0
  br i1 %.not60, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i8, ptr %i.cg, align 4
  %i.ci = and i8 %i.ch, 64
  %.not61 = icmp eq i8 %i.ci, 0
  br i1 %.not61, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.cj = icmp sgt i32 %.380.i71, 0
  br i1 %i.cj, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ck = load i32, ptr %3, align 4               ; 3 uses
  %i.cl = icmp eq i32 %.380.i71, %i.ck
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cm, align 1
  store i32 1, ptr %0, align 4
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.cn = load i32, ptr %0, align 4               ; 2 uses
  %i.co = add nsw i32 %i.cn, %.380.i71            ; 2 uses
  %i.cp = icmp sgt i32 %i.co, %i.ck
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = sub nsw i32 %i.co, %i.ck
  %i.cr = tail call fastcc noundef ptr @_ZL8decDecapP9decNumberi(ptr noundef nonnull %0, i32 noundef %i.cq) ; 0 uses
  %.pr = load i32, ptr %0, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cs = phi i32 [ %.pr, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cv = load i8, ptr %i.cu, align 1
  %.not63 = icmp eq i8 %i.cv, 0
  br i1 %.not63, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cx = tail call fastcc noundef i32 @_ZL14decShiftToMostPhii(ptr noundef nonnull %i.cw, i32 noundef %i.cs, i32 noundef %.380.i71)
  store i32 %i.cx, ptr %0, align 4
  br label %.thread

bb.r:                                             ; preds = %bb.j
  %i.cy = sub nsw i32 0, %.380.i71                ; 2 uses
  %i.cz = load i32, ptr %0, align 4               ; 4 uses
  %.not62 = icmp sgt i32 %i.cz, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %.not62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.da, align 1
  store i32 1, ptr %0, align 4
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.db = icmp samesign ult i32 %i.cz, 50
  br i1 %i.db, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dc = zext nneg i32 %i.cz to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = zext i8 %i.de to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dg = phi i32 [ %i.df, %bb.u ], [ %i.cz, %bb.t ]
  %i.dh = tail call fastcc noundef i32 @_ZL15decShiftToLeastPhii(ptr noundef nonnull %i.da, i32 noundef %i.dg, i32 noundef %i.cy) ; 0 uses
  %i.di = load i32, ptr %0, align 4
  %i.dj = add nsw i32 %i.di, %.380.i71
  store i32 %i.dj, ptr %0, align 4
  br label %.thread

bb.w:                                             ; preds = %bb.a, %bb.b
  %i.dk = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  %.pr72.pre = load i32, ptr %i.a, align 4        ; 6 uses
  %.not64 = icmp eq i32 %.pr72.pre, 0
  br i1 %.not64, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = and i32 %.pr72.pre, 221
  %.not.i65 = icmp eq i32 %i.dl, 0
  br i1 %.not.i65, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = and i32 %.pr72.pre, 1073741824
  %.not6.i = icmp eq i32 %i.dm, 0
  br i1 %.not6.i, label %.thread76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dn = and i32 %.pr72.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread76:                                        ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %bb.c, %bb.d, %bb.y
  %i.do = phi i32 [ %.pr72.pre, %bb.y ], [ 128, %bb.c ], [ 128, %bb.d ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit.thread ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dq, align 4
  store i32 1, ptr %0, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.dr, align 1
  store i8 32, ptr %i.dp, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.x, %bb.z, %.thread76
  %.0.i = phi i32 [ %i.dn, %bb.z ], [ %i.do, %.thread76 ], [ %.pr72.pre, %bb.x ]
  %i.ds = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.q, %bb.l, %bb.v, %bb.s, %bb.i, %bb.h, %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZL8decDecapP9decNumberi(ptr nofree noundef returned captures(address, ret: address, provenance) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %.not = icmp slt i32 %1, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1
  br label %_ZL12decGetDigitsPhi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %i.a, %1                     ; 4 uses
  %i.d = icmp slt i32 %i.c, 50
  %2 = zext nneg i32 %i.c to i64                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %2
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.pn34 = phi i64 [ %i.h, %bb.d ], [ %2, %bb.c ]
  %i.i = phi i32 [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 4 uses
  %.neg35 = add i32 %i.c, 1
  %i.j = sub i32 %.neg35, %i.i                    ; 2 uses
  %.not33 = icmp eq i32 %i.j, 1
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pn34
  %i.k = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i8, ptr %i.k, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = urem i32 %i.p, %i.n
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %i.k, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = zext nneg i32 %i.i to i64
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  %.01011.i = getelementptr i8, ptr %i.t, i64 -1  ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.b
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.01014.i = phi ptr [ %.010.i, %bb.h ], [ %.01011.i, %bb.g ] ; 2 uses
  %.013.i = phi i32 [ %i.x, %bb.h ], [ %i.i, %bb.g ] ; 3 uses
  %i.u = load i8, ptr %.01014.i, align 1
  %i.v = icmp ne i8 %i.u, 0
  %i.w = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.x = add nsw i32 %.013.i, -1                  ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %i.b
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !7

_ZL12decGetDigitsPhi.exit:                        ; preds = %bb.h, %.lr.ph.i, %bb.g, %bb.b
  %storemerge = phi i32 [ 1, %bb.b ], [ %i.i, %bb.g ], [ %i.x, %bb.h ], [ %.013.i, %.lr.ph.i ]
  store i32 %storemerge, ptr %0, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberSquareRoot_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 11 uses
  %3 = alloca %struct.decContext, align 4         ; 25 uses
  %4 = alloca %struct.decContext, align 4         ; 8 uses
  %5 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 16 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %6 = alloca [4 x %struct.decNumber], align 16   ; 3 uses
  %7 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %8 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %9 = alloca [2 x %struct.decNumber], align 16   ; 16 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4               ; 5 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %i.k, 112
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 64
  %.not237 = icmp eq i32 %i.m, 0
  br i1 %.not237, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not238 = icmp sgt i8 %i.j, -1
  br i1 %.not238, label %bb.d, label %.thread298.thread.thread.thread

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %0, %1
  br i1 %i.n, label %.thread298, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.j, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4
  %i.s = load i32, ptr %1, align 4
  store i32 %i.s, ptr %0, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.u, ptr %i.v, align 1
  %i.w = load i32, ptr %1, align 4                ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.f, label %.thread298

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.z = icmp samesign ult i32 %i.w, 50
  %i.aa = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %i.z, label %bb.g, label %iter.check

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.f, %bb.g
  %.pn.i = phi i64 [ %i.ad, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pn.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ag = add i64 %.pn.i, %i.b
  %i.ah = add i64 %i.ag, 9
  %i.ai = add i64 %i.b, 11
  %umax356 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = add i64 %umax356, -10
  %i.ak = sub i64 %i.aj, %i.b                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  %i.al = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.al, -32
  %or.cond405 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond405, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check357 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check357, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.an = getelementptr i8, ptr %i.y, i64 %n.vec
  %i.ao = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %index ; 2 uses
  %next.gep358 = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep358, align 1
  %wide.load359 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load359, ptr %i.aq, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread298, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec361 = and i64 %i.ak, -4                   ; 4 uses
  %i.as = getelementptr i8, ptr %i.y, i64 %n.vec361
  %i.at = getelementptr i8, ptr %i.af, i64 %n.vec361
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index362 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next366, %vec.epilog.vector.body ] ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.y, i64 %index362
  %next.gep364 = getelementptr i8, ptr %i.af, i64 %index362
  %wide.load365 = load <4 x i8>, ptr %next.gep364, align 1
  store <4 x i8> %wide.load365, ptr %next.gep363, align 1
  %index.next366 = add nuw i64 %index362, 4       ; 2 uses
  %i.au = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n367 = icmp eq i64 %i.ak, %n.vec361
  br i1 %cmp.n367, label %.thread298, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
end_hunk_1

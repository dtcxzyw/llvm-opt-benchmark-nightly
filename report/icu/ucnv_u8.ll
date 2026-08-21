Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnv_u8?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZL22ucnv_getNextUChar_UTF8P23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.by = and i32 %i.m, 15
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !27
  %i.cc = zext i8 %i.cb to i32
  %i.cd = zext i8 %i.bx to i32                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 5
  %i.cf = shl nuw nsw i32 1, %i.ce
  %i.cg = and i32 %i.cf, %i.cc
  %.not106 = icmp eq i32 %i.cg, 0
  br i1 %.not106, label %iter.check, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !27  ; 2 uses
  %i.cj = icmp slt i8 %i.ci, -64
  br i1 %i.cj, label %bb.n, label %iter.check

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store ptr %i.ck, ptr %i.d, align 8, !tbaa !40
  %i.cl = add nuw nsw i32 %i.bw, %i.cd
  %i.cm = shl nuw nsw i32 %i.cl, 6
  %i.cn = zext i8 %i.ci to i32
  %i.co = add nsw i32 %i.cm, -925824
  %i.cp = add nsw i32 %i.co, %i.cn
  br label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.cq = icmp sgt i8 %i.bx, -65
  br i1 %i.cq, label %iter.check, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.cr, ptr %i.d, align 8, !tbaa !40
  %i.cs = zext i8 %i.bx to i32
  %i.ct = add nsw i32 %i.bw, -12416
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.cv = zext i8 %i.bx to i32                    ; 2 uses
  %i.cw = lshr i32 %i.cv, 4
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !27
  %i.da = zext i8 %i.cz to i32
  %i.db = and i32 %i.m, 7
  %i.dc = shl nuw nsw i32 1, %i.db
  %i.dd = and i32 %i.dc, %i.da
  %.not105 = icmp eq i32 %i.dd, 0
  br i1 %.not105, label %iter.check, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !27  ; 2 uses
  %i.dg = icmp slt i8 %i.df, -64
  br i1 %i.dg, label %bb.s, label %iter.check

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27  ; 2 uses
  %i.dj = icmp slt i8 %i.di, -64
  br i1 %i.dj, label %bb.t, label %iter.check

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.dk, ptr %i.d, align 8, !tbaa !40
  %i.dl = add nuw nsw i32 %i.bw, %i.cv
  %i.dm = zext i8 %i.df to i32
  %i.dn = shl nuw nsw i32 %i.dl, 12
  %i.do = shl nuw nsw i32 %i.dm, 6
  %i.dp = zext i8 %i.di to i32
  %i.dq = add nsw i32 %i.dn, -63447168
  %i.dr = add nsw i32 %i.dq, %i.do
  %i.ds = add nsw i32 %i.dr, %i.dp
  br label %bb.u

iter.check:                                       ; preds = %bb.q, %bb.r, %bb.s, %bb.o, %bb.l, %bb.m
  %.7 = phi ptr [ %i.i, %bb.o ], [ %i.ch, %bb.m ], [ %i.i, %bb.l ], [ %i.i, %bb.q ], [ %i.de, %bb.r ], [ %i.dh, %bb.s ] ; 3 uses
  %.7214 = ptrtoaddr ptr %.7 to i64               ; 2 uses
  store ptr %.7, ptr %i.d, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 3 uses
  %i.du = add i64 %i.f, 1
  %umax215 = tail call i64 @llvm.umax.i64(i64 %.7214, i64 %i.du)
  %i.dv = sub i64 %umax215, %i.f                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dw = add i64 %i.f, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %.7214, i64 %i.dw)
  %i.dx = sub i64 %i.f, %umax
  %.not228 = icmp ugt i64 %i.dx, -129
  br i1 %.not228, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dy = sub i64 %i.c, %i.f
  %i.dz = add i64 %i.dy, 64
  %diff.check = icmp ult i64 %i.dz, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check216 = icmp ult i64 %i.dv, 32
  br i1 %min.iters.check216, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ea = and i64 %i.dv, 28
  %n.vec = and i64 %i.dv, -32                     ; 5 uses
  %i.eb = trunc i64 %n.vec to i8                  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.e, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.e, i64 %index ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load217 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !27
  %sext = shl i64 %index, 56
  %i.ee = ashr exact i64 %sext, 56
  %i.ef = getelementptr inbounds i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <16 x i8> %wide.load, ptr %i.ef, align 1, !tbaa !27
  store <16 x i8> %wide.load217, ptr %i.eg, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %.loopexit227, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec219 = and i64 %i.dv, -4                   ; 4 uses
  %i.ei = trunc i64 %n.vec219 to i8               ; 2 uses
  %i.ej = getelementptr i8, ptr %i.e, i64 %n.vec219
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index220 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next223, %vec.epilog.vector.body ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.e, i64 %index220
  %wide.load222 = load <4 x i8>, ptr %next.gep221, align 1, !tbaa !27
  %sext229 = shl i64 %index220, 56
  %i.ek = ashr exact i64 %sext229, 56
  %i.el = getelementptr inbounds i8, ptr %i.dt, i64 %i.ek
  store <4 x i8> %wide.load222, ptr %i.el, align 1, !tbaa !27
  %index.next223 = add nuw i64 %index220, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next223, %n.vec219
  br i1 %i.em, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n224 = icmp eq i64 %i.dv, %n.vec219
  br i1 %cmp.n224, label %.loopexit227, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.392128.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %i.eb, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ]
  %.097127.ph = phi ptr [ %i.e, %iter.check ], [ %i.e, %vector.scevcheck ], [ %i.e, %vector.memcheck ], [ %i.ec, %vec.epilog.iter.check ], [ %i.ej, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.392128 = phi i8 [ %i.er, %vec.epilog.scalar.ph ], [ %.392128.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.097127 = phi ptr [ %i.en, %vec.epilog.scalar.ph ], [ %.097127.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.097127, i64 1 ; 2 uses
  %i.eo = load i8, ptr %.097127, align 1, !tbaa !27
  %i.ep = sext i8 %.392128 to i64
  %i.eq = getelementptr inbounds i8, ptr %i.dt, i64 %i.ep
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !27
  %i.er = add i8 %.392128, 1                      ; 2 uses
  %i.es = icmp ult ptr %i.en, %.7
  br i1 %i.es, label %vec.epilog.scalar.ph, label %.loopexit227, !llvm.loop !58

.loopexit227:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa213 = phi i8 [ %i.ei, %vec.epilog.middle.block ], [ %i.eb, %middle.block ], [ %i.er, %vec.epilog.scalar.ph ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.lcssa213, ptr %i.et, align 8, !tbaa !44
  store i32 12, ptr %1, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p, %bb.n, %.thread, %.loopexit, %.loopexit227, %bb.d, %bb.b
  %.4102 = phi i32 [ 65535, %bb.b ], [ %i.l, %bb.d ], [ 65535, %.thread ], [ 65535, %.loopexit ], [ 65535, %.loopexit227 ], [ %i.cp, %bb.n ], [ %i.cu, %bb.p ], [ %i.ds, %bb.t ]
  ret i32 %.4102
}

declare void @ucnv_getNonSurrogateUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 26 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 6 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !44    ; 2 uses
  %i.r = icmp sgt i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %sext = shl i32 %i.t, 24
  %i.w = ashr exact i32 %sext, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0203 = phi i8 [ %i.q, %bb.b ], [ 0, %bb.a ]   ; 3 uses
  %.0201 = phi i32 [ %i.w, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0197 = phi i32 [ %i.v, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.x = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.y = ptrtoint ptr %i.e to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = zext nneg i8 %.0203 to i32              ; 3 uses
  %i.ac = add nsw i32 %i.ab, %i.aa                ; 3 uses
  %i.ad = icmp slt i32 %i.ac, %.0201
  br i1 %i.ad, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp sgt i32 %.0201, %i.o
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -127, ptr %2, align 4, !tbaa !29
  br label %bb.bb

bb.f:                                             ; preds = %bb.d
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.o)
  %i.af = sub nsw i32 %spec.select, %i.ab         ; 14 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr i8, ptr %i.e, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !27  ; 4 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = zext i8 %i.ak to i32                    ; 2 uses
  %i.an = add nsw i8 %i.ak, 62
  %i.ao = icmp ult i8 %i.an, 51
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.af, -1
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp samesign ult i8 %i.ak, -64
  br i1 %i.aq, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %i.af, -2                   ; 2 uses
  %.not = icmp eq i32 %i.af, 1
  br i1 %.not, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27  ; 4 uses
  %i.av = zext i8 %i.au to i32                    ; 3 uses
  %i.aw = add i8 %i.au, 32
  %or.cond = icmp ult i8 %i.aw, 21
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp samesign ult i8 %i.au, -16         ; 2 uses
  %i.ay = lshr i32 %i.am, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.az
  %i.bb = and i32 %i.av, 7
  %i.bc = and i32 %i.av, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bd
  %i.bf = lshr i32 %i.am, 5
  %.sink498 = select i1 %i.ax, i32 %i.bf, i32 %i.bb
  %.sink497.in.in = select i1 %i.ax, ptr %i.be, ptr %i.ba
  %.sink497.in = load i8, ptr %.sink497.in.in, align 1, !tbaa !27
  %.sink497 = zext i8 %.sink497.in to i32
  %i.bg = shl nuw nsw i32 1, %.sink498
  %i.bh = and i32 %i.bg, %.sink497
  %.not245 = icmp eq i32 %i.bh, 0
  %spec.select254 = select i1 %.not245, i32 %i.af, i32 %i.ar
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bi = icmp slt i8 %i.au, -64
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bj = add nsw i32 %i.af, -3                   ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.af, 2
  br i1 %i.bk, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !27  ; 2 uses
  %i.bo = add i8 %i.bn, 16
  %or.cond5 = icmp ult i8 %i.bo, 5
  br i1 %or.cond5, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = lshr i32 %i.av, 4
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !27
  %i.bt = zext i8 %i.bs to i32
  %i.bu = and i8 %i.bn, 7
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = and i32 %i.bw, %i.bt
  %.not244 = icmp eq i32 %i.bx, 0
  %spec.select255 = select i1 %.not244, i32 %i.af, i32 %i.bj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m, %bb.g, %bb.j, %bb.k, %bb.i, %bb.p, %bb.n, %bb.o, %bb.f
  %.3 = phi i32 [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %i.ap, %bb.i ], [ %i.af, %bb.j ], [ 1, %bb.k ], [ %i.af, %bb.n ], [ %spec.select255, %bb.q ], [ %spec.select254, %bb.m ], [ 2, %bb.o ], [ %i.af, %bb.p ]
  %i.by = add nsw i32 %.3, %i.ab
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %bb.r
  %.1212 = phi i32 [ %i.ac, %bb.c ], [ %i.by, %bb.r ] ; 2 uses
  %.not246 = icmp eq i32 %.0197, 0
  br i1 %.not246, label %.preheader261, label %bb.t

.preheader261:                                    ; preds = %._crit_edge339, %bb.s
  %.0219.ph = phi ptr [ %i.e, %bb.s ], [ %.5.lcssa, %._crit_edge339 ] ; 2 uses
  %.0215.ph = phi ptr [ %i.i, %bb.s ], [ %.3218.lcssa, %._crit_edge339 ] ; 2 uses
  %.2213.ph = phi i32 [ %.1212, %bb.s ], [ %i.nl, %._crit_edge339 ] ; 2 uses
  %i.bz = icmp sgt i32 %.2213.ph, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 0, ptr %i.ca, align 8, !tbaa !46
  store i8 0, ptr %i.p, align 8, !tbaa !44
  br label %.thread260

.lr.ph:                                           ; preds = %.preheader261, %.backedge
  %.2213296 = phi i32 [ %i.cf, %.backedge ], [ %.2213.ph, %.preheader261 ] ; 2 uses
  %.0215295 = phi ptr [ %.0215.be, %.backedge ], [ %.0215.ph, %.preheader261 ] ; 12 uses
  %.0219294 = phi ptr [ %.0219.be, %.backedge ], [ %.0219.ph, %.preheader261 ] ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0219294, i64 1 ; 4 uses
  %i.cc = load i8, ptr %.0219294, align 1, !tbaa !27 ; 10 uses
  %i.cd = icmp sgt i8 %i.cc, -1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.z, %bb.ac
  %.sink = phi i32 [ -1, %bb.u ], [ -3, %bb.z ], [ -2, %bb.ac ]
  %.0219.be = phi ptr [ %i.cb, %bb.u ], [ %i.cx, %bb.z ], [ %i.de, %bb.ac ] ; 2 uses
  %.0215.be = phi ptr [ %i.ce, %bb.u ], [ %i.da, %bb.z ], [ %i.dg, %bb.ac ] ; 2 uses
  %i.cf = add nsw i32 %.2213296, %.sink           ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph, label %._crit_edge, !llvm.loop !59

bb.v:                                             ; preds = %.lr.ph
  %i.ch = zext i8 %i.cc to i32                    ; 2 uses
  %i.ci = icmp samesign ugt i8 %i.cc, -33         ; 2 uses
  br i1 %i.ci, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cj = icmp samesign ult i8 %i.cc, -16
  br i1 %i.cj, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ck = and i32 %i.ch, 15
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !27
  %i.co = zext i8 %i.cn to i32
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.cq = lshr i8 %i.cp, 5
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = and i32 %i.cs, %i.co
  %.not252 = icmp eq i32 %i.ct, 0
  br i1 %.not252, label %.thread.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %.0219294, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27  ; 2 uses
  %i.cw = icmp slt i8 %i.cv, -64
  br i1 %i.cw, label %bb.z, label %.thread.loopexit

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.0219294, i64 3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %.0215295, i64 2
  store i8 %i.cp, ptr %i.cy, align 1, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %.0215295, i64 3
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !27
  br label %.backedge

bb.aa:                                            ; preds = %bb.v
  %i.db = icmp samesign ugt i8 %i.cc, -63
  br i1 %i.db, label %bb.ab, label %iter.check580

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr %i.cb, align 1, !tbaa !27  ; 2 uses
  %i.dd = icmp slt i8 %i.dc, -64
  br i1 %i.dd, label %bb.ac, label %.thread.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.0219294, i64 2
  %i.df = getelementptr inbounds nuw i8, ptr %.0215295, i64 1
  store i8 %i.cc, ptr %.0215295, align 1, !tbaa !27
  %i.dg = getelementptr inbounds nuw i8, ptr %.0215295, i64 2
  store i8 %i.dc, ptr %i.df, align 1, !tbaa !27
  br label %.backedge

bb.ad:                                            ; preds = %bb.w
  %i.dh = icmp samesign ult i8 %i.cc, -11
  br i1 %i.dh, label %.thread, label %iter.check580

.thread.loopexit:                                 ; preds = %bb.ab, %bb.x, %bb.y
  %i.di = zext i1 %i.ci to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.ad
  %i.dj = phi i32 [ %i.di, %.thread.loopexit ], [ 1, %bb.ad ]
  %i.dk = icmp samesign ugt i8 %i.cc, -17
  %i.dl = select i1 %i.dk, i32 3, i32 2
  %i.dm = add nuw nsw i32 %i.dl, %i.dj
  br label %.thread260

.thread260:                                       ; preds = %.thread, %bb.t
  %.1220 = phi ptr [ %i.e, %bb.t ], [ %i.cb, %.thread ] ; 4 uses
  %.1216 = phi ptr [ %i.i, %bb.t ], [ %.0215295, %.thread ] ; 24 uses
  %.3214 = phi i32 [ %.1212, %bb.t ], [ %.2213296, %.thread ]
  %.1208 = phi i8 [ %.0203, %bb.t ], [ 0, %.thread ] ; 17 uses
  %.1204 = phi i8 [ %.0203, %bb.t ], [ 1, %.thread ] ; 4 uses
  %.1202 = phi i32 [ %.0201, %bb.t ], [ %i.dm, %.thread ] ; 9 uses
  %.1198 = phi i32 [ %.0197, %bb.t ], [ %i.ch, %.thread ] ; 2 uses
  %.1216596 = ptrtoaddr ptr %.1216 to i64
  %i.dn = zext nneg i8 %.1204 to i32              ; 4 uses
  %i.do = icmp sgt i32 %.1202, %i.dn
  br i1 %i.do, label %.lr.ph308, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

.lr.ph308:                                        ; preds = %.thread260
  %i.dp = icmp samesign ult i32 %.1202, 3
  %i.dq = icmp eq i32 %.1202, 3
  %3 = icmp ult ptr %.1220, %i.g
  br i1 %3, label %.lr.ph546, label %._crit_edge547

bb.ae:                                            ; preds = %bb.aj
  %4 = shl i32 %.2199307544, 6
  %5 = zext i8 %i.ds to i32
  %6 = add nsw i32 %4, %5                         ; 2 uses
  %indvars.iv.next388 = add nuw i8 %indvars.iv387542, 1 ; 2 uses
  %i.dr = icmp ult ptr %i.el, %i.g
  br i1 %i.dr, label %.lr.ph546, label %._crit_edge547, !llvm.loop !60

.lr.ph546:                                        ; preds = %.lr.ph308, %bb.ae
  %.2221305545 = phi ptr [ %i.el, %bb.ae ], [ %.1220, %.lr.ph308 ] ; 3 uses
  %.2199307544 = phi i32 [ %6, %bb.ae ], [ %.1198, %.lr.ph308 ] ; 3 uses
  %indvars.iv543 = phi i32 [ %indvars.iv.next, %bb.ae ], [ %i.dn, %.lr.ph308 ] ; 4 uses
  %indvars.iv387542 = phi i8 [ %indvars.iv.next388, %bb.ae ], [ %.1204, %.lr.ph308 ]
  %i.ds = load i8, ptr %.2221305545, align 1, !tbaa !27 ; 4 uses
  %i.dt = icmp samesign ugt i32 %indvars.iv543, 1
  %or.cond.i = or i1 %i.dp, %i.dt
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph546
  %i.du = icmp slt i8 %i.ds, -64
  %i.dv = zext i1 %i.du to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ag:                                            ; preds = %.lr.ph546
  br i1 %i.dq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dw = and i32 %.2199307544, 15
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @.str, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !27
  %i.ea = lshr i8 %i.ds, 5
  %i.eb = shl nuw i8 1, %i.ea
  %i.ec = and i8 %i.dz, %i.eb
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ed = lshr i8 %i.ds, 4
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !27
  %i.eh = and i32 %.2199307544, 7
  %i.ei = shl nuw nsw i32 1, %i.eh
  %i.ej = trunc nuw i32 %i.ei to i8
  %i.ek = and i8 %i.eg, %i.ej
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit

_ZN6icu_784UTF812isValidTrailEihii.exit:          ; preds = %bb.af, %bb.ah, %bb.ai
  %.0.i = phi i8 [ %i.dv, %bb.af ], [ %i.ec, %bb.ah ], [ %i.ek, %bb.ai ]
  %.not247 = icmp eq i8 %.0.i, 0
  br i1 %.not247, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.2221305545, i64 1 ; 4 uses
  %indvars.iv.next = add nuw i32 %indvars.iv543, 1 ; 4 uses
  %sext421 = shl i32 %indvars.iv.next, 24
  %7 = ashr exact i32 %sext421, 24                ; 2 uses
  %8 = icmp sgt i32 %.1202, %7
  br i1 %8, label %bb.ae, label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, !llvm.loop !60

._crit_edge547:                                   ; preds = %bb.ae, %.lr.ph308
  %indvars.iv387.lcssa = phi i8 [ %.1204, %.lr.ph308 ], [ %indvars.iv.next388, %bb.ae ]
  %indvars.iv.lcssa = phi i32 [ %i.dn, %.lr.ph308 ], [ %indvars.iv.next, %bb.ae ] ; 3 uses
  %.2199307.lcssa = phi i32 [ %.1198, %.lr.ph308 ], [ %6, %bb.ae ]
  %.2221305.lcssa = phi ptr [ %.1220, %.lr.ph308 ], [ %i.el, %bb.ae ] ; 2 uses
  %.2221305.lcssa551 = ptrtoaddr ptr %.2221305.lcssa to i64
  %i.em = trunc nuw nsw i32 %indvars.iv.lcssa to i8 ; 2 uses
  %i.en = zext nneg i8 %.1208 to i32
  %.neg = sub nsw i32 %i.en, %indvars.iv.lcssa
  %i.eo = sext i32 %.neg to i64
  %i.ep = getelementptr inbounds i8, ptr %.2221305.lcssa, i64 %i.eo ; 7 uses
  %i.eq = icmp slt i8 %.1208, %i.em
  br i1 %i.eq, label %iter.check, label %._crit_edge320

iter.check:                                       ; preds = %._crit_edge547
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.es = zext i8 %.1208 to i64                   ; 7 uses
  %wide.trip.count.a = zext i8 %indvars.iv387.lcssa to i64 ; 4 uses
  %i.et = sub nsw i64 %wide.trip.count.a, %i.es   ; 7 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %9 = sext i32 %indvars.iv.lcssa to i64
  %i.eu = add i64 %i.c, %9
  %i.ev = sub i64 %i.eu, %.2221305.lcssa551
  %i.ew = add i64 %i.ev, 64
  %diff.check = icmp ult i64 %i.ew, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check552.a = icmp ult i64 %i.et, 32
  br i1 %min.iters.check552.a, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ex = and i64 %i.et, 24
  %n.vec = and i64 %i.et, -32                     ; 5 uses
  %i.ey = add nsw i64 %n.vec, %i.es
  %i.ez = getelementptr i8, ptr %i.ep, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.er, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ep, i64 %index ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !27
  %wide.load553 = load <16 x i8>, ptr %i.fa, align 1, !tbaa !27
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !27
  store <16 x i8> %wide.load553, ptr %i.fb, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %._crit_edge320, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec555 = and i64 %i.et, -8                   ; 4 uses
  %i.fd = add nsw i64 %n.vec555, %i.es
  %i.fe = getelementptr i8, ptr %i.ep, i64 %n.vec555 ; 2 uses
  %invariant.gep758 = getelementptr i8, ptr %i.er, i64 %i.es
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index556 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next559, %vec.epilog.vector.body ] ; 3 uses
  %next.gep557 = getelementptr i8, ptr %i.ep, i64 %index556
  %wide.load558 = load <8 x i8>, ptr %next.gep557, align 1, !tbaa !27
  %gep759 = getelementptr i8, ptr %invariant.gep758, i64 %index556
  store <8 x i8> %wide.load558, ptr %gep759, align 1, !tbaa !27
  %index.next559 = add nuw i64 %index556, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next559, %n.vec555
  br i1 %i.ff, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n560 = icmp eq i64 %i.et, %n.vec555
  br i1 %cmp.n560, label %._crit_edge320, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv383.ph = phi i64 [ %i.es, %iter.check ], [ %i.es, %vector.memcheck ], [ %i.ey, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ] ; 4 uses
  %.3222316.ph = phi ptr [ %i.ep, %iter.check ], [ %i.ep, %vector.memcheck ], [ %i.ez, %vec.epilog.iter.check ], [ %i.fe, %vec.epilog.middle.block ] ; 2 uses
  %i.fg = sub nsw i64 %wide.trip.count.a, %indvars.iv383.ph
  %xtraiter = and i64 %i.fg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv383.prol = phi i64 [ %indvars.iv.next384.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv383.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3222316.prol = phi ptr [ %i.fh, %vec.epilog.scalar.ph.prol ], [ %.3222316.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.3222316.prol, i64 1 ; 3 uses
  %i.fi = load i8, ptr %.3222316.prol, align 1, !tbaa !27
  %indvars.iv.next384.prol = add nuw nsw i64 %indvars.iv383.prol, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv383.prol
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !27
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !64

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa676.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.fh, %vec.epilog.scalar.ph.prol ]
  %indvars.iv383.unr = phi i64 [ %indvars.iv383.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next384.prol, %vec.epilog.scalar.ph.prol ]
  %.3222316.unr = phi ptr [ %.3222316.ph, %vec.epilog.scalar.ph.preheader ], [ %i.fh, %vec.epilog.scalar.ph.prol ]
  %10 = sub nsw i64 %indvars.iv383.ph, %wide.trip.count.a
  %11 = icmp ugt i64 %10, -4
  br i1 %11, label %._crit_edge320, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv383 = phi i64 [ %indvars.iv.next384.3, %vec.epilog.scalar.ph ], [ %indvars.iv383.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.3222316 = phi ptr [ %i.fv, %vec.epilog.scalar.ph ], [ %.3222316.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.3222316, i64 1
  %i.fl = load i8, ptr %.3222316, align 1, !tbaa !27
  %i.fm = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv383
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %.3222316, i64 2
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !27
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv383
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %.3222316, i64 3
  %i.fs = load i8, ptr %i.fn, align 1, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv383
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 2
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %.3222316, i64 4 ; 2 uses
  %i.fw = load i8, ptr %i.fr, align 1, !tbaa !27
  %indvars.iv.next384.3 = add nuw nsw i64 %indvars.iv383, 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv383
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  store i8 %i.fw, ptr %i.fy, align 1, !tbaa !27
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next384.3, %wide.trip.count.a
  br i1 %exitcond.not.3, label %._crit_edge320, label %vec.epilog.scalar.ph, !llvm.loop !66

._crit_edge320:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge547
  %.3222.lcssa = phi ptr [ %i.ep, %._crit_edge547 ], [ %i.fe, %vec.epilog.middle.block ], [ %i.ez, %middle.block ], [ %.lcssa676.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fv, %vec.epilog.scalar.ph ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %.2199307.lcssa, ptr %i.fz, align 8, !tbaa !46
  store i8 %i.em, ptr %i.p, align 8, !tbaa !44
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %.1202, ptr %i.ga, align 4, !tbaa !45
  store ptr %.3222.lcssa, ptr %i.d, align 8, !tbaa !40
  store ptr %.1216, ptr %i.h, align 8, !tbaa !18
  br label %bb.bb

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit, %bb.aj
  %.2221.lcssa.ph = phi ptr [ %i.el, %bb.aj ], [ %.2221305545, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.2205.lcssa.ph.in = phi i32 [ %indvars.iv.next, %bb.aj ], [ %indvars.iv543, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.lcssa.ph = phi i32 [ %7, %bb.aj ], [ %indvars.iv543, %_ZN6icu_784UTF812isValidTrailEihii.exit ]
  %.2205.lcssa.ph = trunc i32 %.2205.lcssa.ph.in to i8
  br label %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge

_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge: ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit, %.thread260
  %.2221.lcssa = phi ptr [ %.1220, %.thread260 ], [ %.2221.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 3 uses
  %.2205.lcssa = phi i8 [ %.1204, %.thread260 ], [ %.2205.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 8 uses
  %.lcssa = phi i32 [ %i.dn, %.thread260 ], [ %.lcssa.ph, %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge.loopexit ] ; 2 uses
  %.2221.lcssa629 = ptrtoaddr ptr %.2221.lcssa to i64
  %.not248 = icmp eq i32 %.1202, %.lcssa
  br i1 %.not248, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.gb = icmp sgt i8 %.1208, 0
  br i1 %i.gb, label %iter.check612, label %._crit_edge331

iter.check612:                                    ; preds = %.preheader
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 11 uses
  %wide.trip.count400 = zext nneg i8 %.1208 to i64 ; 8 uses
  %min.iters.check598 = icmp ult i8 %.1208, 4
  br i1 %min.iters.check598, label %vec.epilog.scalar.ph613.preheader, label %vector.memcheck595

vector.memcheck595:                               ; preds = %iter.check612
  %i.gd = sub i64 %.1216596, %i.c
  %i.ge = add i64 %i.gd, -66
  %diff.check597 = icmp ult i64 %i.ge, 15
  br i1 %diff.check597, label %vec.epilog.scalar.ph613.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %vector.memcheck595
  %min.iters.check600 = icmp ult i8 %.1208, 16
  br i1 %min.iters.check600, label %vec.epilog.ph616, label %vector.ph601

vector.ph601:                                     ; preds = %vector.main.loop.iter.check599
  %i.gf = and i64 %wide.trip.count400, 12
  %n.vec602 = and i64 %wide.trip.count400, 112    ; 10 uses
  %i.gg = getelementptr i8, ptr %.1216, i64 %n.vec602 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 73
  %wide.load606 = load <8 x i8>, ptr %i.gc, align 1, !tbaa !27
  %wide.load607 = load <8 x i8>, ptr %i.gh, align 1, !tbaa !27
  %i.gi = getelementptr i8, ptr %.1216, i64 8
  store <8 x i8> %wide.load606, ptr %.1216, align 1, !tbaa !27
  store <8 x i8> %wide.load607, ptr %i.gi, align 1, !tbaa !27
  %i.gj = icmp eq i64 %n.vec602, 16
  br i1 %i.gj, label %middle.block609, label %vector.body603.1

vector.body603.1:                                 ; preds = %vector.ph601
  %next.gep605.1 = getelementptr i8, ptr %.1216, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %wide.load606.1 = load <8 x i8>, ptr %i.gk, align 1, !tbaa !27
  %wide.load607.1 = load <8 x i8>, ptr %i.gl, align 1, !tbaa !27
  %i.gm = getelementptr i8, ptr %.1216, i64 24
  store <8 x i8> %wide.load606.1, ptr %next.gep605.1, align 1, !tbaa !27
  store <8 x i8> %wide.load607.1, ptr %i.gm, align 1, !tbaa !27
  %i.gn = icmp eq i64 %n.vec602, 32
  br i1 %i.gn, label %middle.block609, label %vector.body603.2

vector.body603.2:                                 ; preds = %vector.body603.1
  %next.gep605.2 = getelementptr i8, ptr %.1216, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 105
  %wide.load606.2 = load <8 x i8>, ptr %i.go, align 1, !tbaa !27
  %wide.load607.2 = load <8 x i8>, ptr %i.gp, align 1, !tbaa !27
  %i.gq = getelementptr i8, ptr %.1216, i64 40
  store <8 x i8> %wide.load606.2, ptr %next.gep605.2, align 1, !tbaa !27
  store <8 x i8> %wide.load607.2, ptr %i.gq, align 1, !tbaa !27
  %i.gr = icmp eq i64 %n.vec602, 48
  br i1 %i.gr, label %middle.block609, label %vector.body603.3

vector.body603.3:                                 ; preds = %vector.body603.2
  %next.gep605.3 = getelementptr i8, ptr %.1216, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %wide.load606.3 = load <8 x i8>, ptr %i.gs, align 1, !tbaa !27
  %wide.load607.3 = load <8 x i8>, ptr %i.gt, align 1, !tbaa !27
  %i.gu = getelementptr i8, ptr %.1216, i64 56
  store <8 x i8> %wide.load606.3, ptr %next.gep605.3, align 1, !tbaa !27
  store <8 x i8> %wide.load607.3, ptr %i.gu, align 1, !tbaa !27
  %i.gv = icmp eq i64 %n.vec602, 64
  br i1 %i.gv, label %middle.block609, label %vector.body603.4

vector.body603.4:                                 ; preds = %vector.body603.3
  %next.gep605.4 = getelementptr i8, ptr %.1216, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %wide.load606.4 = load <8 x i8>, ptr %i.gw, align 1, !tbaa !27
  %wide.load607.4 = load <8 x i8>, ptr %i.gx, align 1, !tbaa !27
  %i.gy = getelementptr i8, ptr %.1216, i64 72
  store <8 x i8> %wide.load606.4, ptr %next.gep605.4, align 1, !tbaa !27
  store <8 x i8> %wide.load607.4, ptr %i.gy, align 1, !tbaa !27
  %i.gz = icmp eq i64 %n.vec602, 80
  br i1 %i.gz, label %middle.block609, label %vector.body603.5

vector.body603.5:                                 ; preds = %vector.body603.4
  %next.gep605.5 = getelementptr i8, ptr %.1216, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 153
  %wide.load606.5 = load <8 x i8>, ptr %i.ha, align 1, !tbaa !27
  %wide.load607.5 = load <8 x i8>, ptr %i.hb, align 1, !tbaa !27
  %i.hc = getelementptr i8, ptr %.1216, i64 88
  store <8 x i8> %wide.load606.5, ptr %next.gep605.5, align 1, !tbaa !27
  store <8 x i8> %wide.load607.5, ptr %i.hc, align 1, !tbaa !27
  %i.hd = icmp eq i64 %n.vec602, 96
  br i1 %i.hd, label %middle.block609, label %vector.body603.6

vector.body603.6:                                 ; preds = %vector.body603.5
  %next.gep605.6 = getelementptr i8, ptr %.1216, i64 96
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %wide.load606.6 = load <8 x i8>, ptr %i.he, align 1, !tbaa !27
  %wide.load607.6 = load <8 x i8>, ptr %i.hf, align 1, !tbaa !27
  %i.hg = getelementptr i8, ptr %.1216, i64 104
  store <8 x i8> %wide.load606.6, ptr %next.gep605.6, align 1, !tbaa !27
  store <8 x i8> %wide.load607.6, ptr %i.hg, align 1, !tbaa !27
  br label %middle.block609

middle.block609:                                  ; preds = %vector.body603.6, %vector.body603.5, %vector.body603.4, %vector.body603.3, %vector.body603.2, %vector.body603.1, %vector.ph601
  %cmp.n610 = icmp eq i64 %n.vec602, %wide.trip.count400
  br i1 %cmp.n610, label %._crit_edge331, label %vec.epilog.iter.check614

vec.epilog.iter.check614:                         ; preds = %middle.block609
  %min.epilog.iters.check615 = icmp eq i64 %i.gf, 0
  br i1 %min.epilog.iters.check615, label %vec.epilog.scalar.ph613.preheader, label %vec.epilog.ph616, !prof !67

vec.epilog.ph616:                                 ; preds = %vector.main.loop.iter.check599, %vec.epilog.iter.check614
  %vec.epilog.resume.val611 = phi i64 [ %n.vec602, %vec.epilog.iter.check614 ], [ 0, %vector.main.loop.iter.check599 ]
  %n.vec617 = and i64 %wide.trip.count400, 124    ; 4 uses
  %i.hh = getelementptr i8, ptr %.1216, i64 %n.vec617 ; 2 uses
  br label %vec.epilog.vector.body618

vec.epilog.vector.body618:                        ; preds = %vec.epilog.vector.body618, %vec.epilog.ph616
  %index619 = phi i64 [ %vec.epilog.resume.val611, %vec.epilog.ph616 ], [ %index.next622, %vec.epilog.vector.body618 ] ; 3 uses
  %next.gep620 = getelementptr i8, ptr %.1216, i64 %index619
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gc, i64 %index619
  %wide.load621 = load <4 x i8>, ptr %i.hi, align 1, !tbaa !27
  store <4 x i8> %wide.load621, ptr %next.gep620, align 1, !tbaa !27
  %index.next622 = add nuw i64 %index619, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next622, %n.vec617
  br i1 %i.hj, label %vec.epilog.middle.block623, label %vec.epilog.vector.body618, !llvm.loop !68

vec.epilog.middle.block623:                       ; preds = %vec.epilog.vector.body618
  %cmp.n624 = icmp eq i64 %n.vec617, %wide.trip.count400
  br i1 %cmp.n624, label %._crit_edge331, label %vec.epilog.scalar.ph613.preheader

vec.epilog.scalar.ph613.preheader:                ; preds = %vector.memcheck595, %iter.check612, %vec.epilog.iter.check614, %vec.epilog.middle.block623
  %indvars.iv396.ph = phi i64 [ 0, %iter.check612 ], [ 0, %vector.memcheck595 ], [ %n.vec602, %vec.epilog.iter.check614 ], [ %n.vec617, %vec.epilog.middle.block623 ] ; 4 uses
  %.2217328.ph = phi ptr [ %.1216, %iter.check612 ], [ %.1216, %vector.memcheck595 ], [ %i.gg, %vec.epilog.iter.check614 ], [ %i.hh, %vec.epilog.middle.block623 ] ; 2 uses
  %i.hk = sub nsw i64 %wide.trip.count400, %indvars.iv396.ph
  %xtraiter707 = and i64 %i.hk, 7                 ; 2 uses
  %lcmp.mod708.not = icmp eq i64 %xtraiter707, 0
  br i1 %lcmp.mod708.not, label %vec.epilog.scalar.ph613.prol.loopexit, label %vec.epilog.scalar.ph613.prol

vec.epilog.scalar.ph613.prol:                     ; preds = %vec.epilog.scalar.ph613.preheader, %vec.epilog.scalar.ph613.prol
  %indvars.iv396.prol = phi i64 [ %indvars.iv.next397.prol, %vec.epilog.scalar.ph613.prol ], [ %indvars.iv396.ph, %vec.epilog.scalar.ph613.preheader ] ; 2 uses
  %.2217328.prol = phi ptr [ %i.hn, %vec.epilog.scalar.ph613.prol ], [ %.2217328.ph, %vec.epilog.scalar.ph613.preheader ] ; 2 uses
  %prol.iter709 = phi i64 [ %prol.iter709.next, %vec.epilog.scalar.ph613.prol ], [ 0, %vec.epilog.scalar.ph613.preheader ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv396.prol
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !27
  %i.hn = getelementptr inbounds nuw i8, ptr %.2217328.prol, i64 1 ; 3 uses
  store i8 %i.hm, ptr %.2217328.prol, align 1, !tbaa !27
  %indvars.iv.next397.prol = add nuw nsw i64 %indvars.iv396.prol, 1 ; 2 uses
  %prol.iter709.next = add i64 %prol.iter709, 1   ; 2 uses
  %prol.iter709.cmp.not = icmp eq i64 %prol.iter709.next, %xtraiter707
  br i1 %prol.iter709.cmp.not, label %vec.epilog.scalar.ph613.prol.loopexit, label %vec.epilog.scalar.ph613.prol, !llvm.loop !69

vec.epilog.scalar.ph613.prol.loopexit:            ; preds = %vec.epilog.scalar.ph613.prol, %vec.epilog.scalar.ph613.preheader
  %.lcssa674.unr = phi ptr [ poison, %vec.epilog.scalar.ph613.preheader ], [ %i.hn, %vec.epilog.scalar.ph613.prol ]
  %indvars.iv396.unr = phi i64 [ %indvars.iv396.ph, %vec.epilog.scalar.ph613.preheader ], [ %indvars.iv.next397.prol, %vec.epilog.scalar.ph613.prol ]
  %.2217328.unr = phi ptr [ %.2217328.ph, %vec.epilog.scalar.ph613.preheader ], [ %i.hn, %vec.epilog.scalar.ph613.prol ]
  %i.ho = sub nsw i64 %indvars.iv396.ph, %wide.trip.count400
  %i.hp = icmp ugt i64 %i.ho, -8
  br i1 %i.hp, label %._crit_edge331, label %vec.epilog.scalar.ph613

bb.ak:                                            ; preds = %_ZN6icu_784UTF812isValidTrailEihii.exit._crit_edge
  %i.hq = zext nneg i8 %.1208 to i32
  %.neg253 = sub nsw i32 %i.hq, %.lcssa
  %i.hr = sext i32 %.neg253 to i64
  %i.hs = getelementptr inbounds i8, ptr %.2221.lcssa, i64 %i.hr ; 2 uses
  %i.ht = icmp slt i8 %.1208, %.2205.lcssa
  br i1 %i.ht, label %iter.check580, label %._crit_edge326

iter.check580:                                    ; preds = %bb.aa, %bb.ad, %bb.ak
  %i.hu = phi ptr [ %i.hs, %bb.ak ], [ %.0219294, %bb.ad ], [ %.0219294, %bb.aa ] ; 7 uses
  %.1208431441457 = phi i8 [ %.1208, %bb.ak ], [ 0, %bb.ad ], [ 0, %bb.aa ]
  %.1216429442456 = phi ptr [ %.1216, %bb.ak ], [ %.0215295, %bb.ad ], [ %.0215295, %bb.aa ] ; 4 uses
  %.2205.lcssa444454 = phi i8 [ %.2205.lcssa, %bb.ak ], [ 1, %bb.ad ], [ 1, %bb.aa ] ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 7 uses
  %i.hw = zext i8 %.1208431441457 to i64          ; 8 uses
  %wide.trip.count394 = zext nneg i8 %.2205.lcssa444454 to i64 ; 4 uses
  %i.hx = sub nsw i64 %wide.trip.count394, %i.hw  ; 7 uses
  %min.iters.check565 = icmp ult i64 %i.hx, 8
  br i1 %min.iters.check565, label %vec.epilog.scalar.ph581.preheader, label %vector.memcheck563

vector.memcheck563:                               ; preds = %iter.check580
  %i.hy = ptrtoaddr ptr %i.hu to i64
  %i.hz = add i64 %i.c, %i.hw
  %i.ia = sub i64 %i.hz, %i.hy
  %i.ib = add i64 %i.ia, 64
  %diff.check564 = icmp ult i64 %i.ib, 31
  br i1 %diff.check564, label %vec.epilog.scalar.ph581.preheader, label %vector.main.loop.iter.check566

vector.main.loop.iter.check566:                   ; preds = %vector.memcheck563
  %min.iters.check567 = icmp ult i64 %i.hx, 32
  br i1 %min.iters.check567, label %vec.epilog.ph584, label %vector.ph568

vector.ph568:                                     ; preds = %vector.main.loop.iter.check566
  %i.ic = and i64 %i.hx, 24
  %n.vec569 = and i64 %i.hx, -32                  ; 5 uses
  %i.id = add nsw i64 %n.vec569, %i.hw
  %i.ie = getelementptr i8, ptr %i.hu, i64 %n.vec569 ; 2 uses
  %invariant.gep760 = getelementptr i8, ptr %i.hv, i64 %i.hw
  br label %vector.body570

vector.body570:                                   ; preds = %vector.body570, %vector.ph568
  %index571 = phi i64 [ 0, %vector.ph568 ], [ %index.next575, %vector.body570 ] ; 3 uses
  %next.gep572 = getelementptr i8, ptr %i.hu, i64 %index571 ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep572, i64 16
  %wide.load573 = load <16 x i8>, ptr %next.gep572, align 1, !tbaa !27
  %wide.load574 = load <16 x i8>, ptr %i.if, align 1, !tbaa !27
  %gep761 = getelementptr i8, ptr %invariant.gep760, i64 %index571 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %gep761, i64 16
  store <16 x i8> %wide.load573, ptr %gep761, align 1, !tbaa !27
  store <16 x i8> %wide.load574, ptr %i.ig, align 1, !tbaa !27
  %index.next575 = add nuw i64 %index571, 32      ; 2 uses
end_hunk_0

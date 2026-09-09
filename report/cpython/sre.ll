Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/sre?download=true
inline.NumInlined: 358
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@sre_category:bb.a

bb.ah:                                            ; preds = %bb.a
  %i.cg = tail call i32 @_PyUnicode_IsAlpha(i32 noundef %1) #13
  %.not.i52 = icmp eq i32 %i.cg, 0
  br i1 %.not.i52, label %bb.ai, label %Py_UNICODE_ISALNUM.exit55

bb.ai:                                            ; preds = %bb.ah
  %i.ch = tail call i32 @_PyUnicode_IsDecimalDigit(i32 noundef %1) #13
  %.not4.i53 = icmp eq i32 %i.ch, 0
  br i1 %.not4.i53, label %bb.aj, label %Py_UNICODE_ISALNUM.exit55

bb.aj:                                            ; preds = %bb.ai
  %i.ci = tail call i32 @_PyUnicode_IsDigit(i32 noundef %1) #13
  %.not5.i54 = icmp eq i32 %i.ci, 0
  br i1 %.not5.i54, label %bb.ak, label %Py_UNICODE_ISALNUM.exit55

bb.ak:                                            ; preds = %bb.aj
  %i.cj = tail call i32 @_PyUnicode_IsNumeric(i32 noundef %1) #13
  %.not56 = icmp eq i32 %i.cj, 0
  br label %Py_UNICODE_ISALNUM.exit55

Py_UNICODE_ISALNUM.exit55:                        ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.ck = phi i1 [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ %.not56, %bb.ak ]
  %i.cl = icmp ne i32 %1, 95
  %.not37 = and i1 %i.cl, %i.ck
  %i.cm = zext i1 %.not37 to i32
  br label %Py_UNICODE_ISSPACE.exit

bb.al:                                            ; preds = %bb.a
  %i.cn = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %1) #13
  br label %Py_UNICODE_ISSPACE.exit

bb.am:                                            ; preds = %bb.a
  %i.co = tail call i32 @_PyUnicode_IsLinebreak(i32 noundef %1) #13
  %.not = icmp eq i32 %i.co, 0
  %i.cp = zext i1 %.not to i32
  br label %Py_UNICODE_ISSPACE.exit

Py_UNICODE_ISSPACE.exit:                          ; preds = %bb.z, %bb.y, %bb.a, %bb.t, %bb.u, %bb.q, %bb.r, %bb.l, %bb.m, %bb.j, %bb.k, %bb.h, %bb.i, %bb.f, %bb.g, %bb.d, %bb.e, %bb.b, %bb.c, %bb.am, %bb.al, %Py_UNICODE_ISALNUM.exit55, %Py_UNICODE_ISALNUM.exit, %Py_UNICODE_ISSPACE.exit51, %bb.w, %bb.v, %bb.o, %bb.n
  %.0 = phi i32 [ 0, %bb.t ], [ %i.cp, %bb.am ], [ %.lobit49, %bb.c ], [ %i.k, %bb.e ], [ %.lobit47, %bb.g ], [ %i.v, %bb.i ], [ %i.ae, %bb.k ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ], [ %i.am, %bb.m ], [ 1, %bb.q ], [ %i.bh, %bb.v ], [ %i.bj, %bb.w ], [ 0, %bb.a ], [ %i.bw, %Py_UNICODE_ISSPACE.exit51 ], [ %i.cf, %Py_UNICODE_ISALNUM.exit ], [ %i.cm, %Py_UNICODE_ISALNUM.exit55 ], [ %i.cn, %bb.al ], [ 0, %bb.b ], [ 1, %bb.d ], [ 0, %bb.f ], [ 1, %bb.h ], [ 0, %bb.j ], [ 1, %bb.l ], [ %i.ay, %bb.r ], [ %i.bg, %bb.u ], [ %i.bo, %bb.y ], [ %i.bp, %bb.z ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sre_ucs1_charset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  %i.b = lshr i32 %1, 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = and i32 %1, 224
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i32 %1, 31
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = icmp ult i32 %1, 256
  %i.i = lshr i32 %1, 5
  %i.j = zext nneg i32 %i.i to i64
  br i1 %i.a, label %.split.us.outer, label %.split.split.outer

.split.us.outer:                                  ; preds = %bb.a, %bb.c
  %.056.us.ph = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]
  %.052.us.ph = phi i32 [ %i.aa, %bb.c ], [ 1, %bb.a ] ; 9 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.backedge, %.split.us.outer
  %.056.us = phi ptr [ %.056.us.ph, %.split.us.outer ], [ %.056.us.be, %.split.us.backedge ] ; 12 uses
  %i.k = getelementptr i8, ptr %.056.us, i64 4    ; 8 uses
  %i.l = load i32, ptr %.056.us, align 4, !tbaa !11
  switch i32 %i.l, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.q
    i32 8, label %bb.o
    i32 9, label %bb.l
    i32 22, label %bb.i
    i32 42, label %bb.d
    i32 21, label %bb.c
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = getelementptr i8, ptr %.056.us, i64 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %.056.us, i64 264  ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.r, %i.e
  %i.t = lshr exact i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = and i32 %i.v, %i.g
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.thread7.us, label %.thread

.thread7.us:                                      ; preds = %bb.b
  %i.x = load i32, ptr %i.k, align 4, !tbaa !11
  %i.y = zext i32 %i.x to i64
  %.idx.us = shl nuw nsw i64 %i.y, 5
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx.us
  br label %.split.us.backedge

bb.c:                                             ; preds = %.split.us
  %i.aa = xor i32 %.052.us.ph, 1
  br label %.split.us.outer

bb.d:                                             ; preds = %.split.us
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !11
  %.not66.us = icmp ugt i32 %i.ab, %1
  br i1 %.not66.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.056.us, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %.not67.us = icmp ugt i32 %1, %i.ad
  br i1 %.not67.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.af = load i32, ptr %i.k, align 4, !tbaa !11
  %.not68.us = icmp ugt i32 %i.af, %i.ae
  br i1 %.not68.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %.056.us, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %.not69.us = icmp ugt i32 %i.ae, %i.ah
  br i1 %.not69.us, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr i8, ptr %.056.us, i64 12
  br label %.split.us.backedge

bb.i:                                             ; preds = %.split.us
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !11
  %.not70.us = icmp ugt i32 %i.aj, %1
  br i1 %.not70.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.056.us, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %.not71.us = icmp ugt i32 %1, %i.al
  br i1 %.not71.us, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %.056.us, i64 12
  br label %.split.us.backedge

bb.l:                                             ; preds = %.split.us
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = and i32 %i.ao, %i.g
  %.not72.us = icmp eq i32 %i.ap, 0
  br i1 %.not72.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr i8, ptr %.056.us, i64 36
  br label %.split.us.backedge

bb.o:                                             ; preds = %.split.us
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !11
  %i.as = tail call fastcc i32 @sre_category(i32 noundef %i.ar, i32 noundef %1)
  %.not73.us = icmp eq i32 %i.as, 0
  br i1 %.not73.us, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %.056.us, i64 8
  br label %.split.us.backedge

bb.q:                                             ; preds = %.split.us
  %i.au = load i32, ptr %i.k, align 4, !tbaa !11
  %i.av = icmp eq i32 %1, %i.au
  br i1 %i.av, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.056.us, i64 8
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.h, %.thread7.us
  %.056.us.be = phi ptr [ %i.z, %.thread7.us ], [ %i.aw, %bb.r ], [ %i.at, %bb.p ], [ %i.aq, %bb.n ], [ %i.am, %bb.k ], [ %i.ai, %bb.h ]
  br label %.split.us

.split.split:                                     ; preds = %.split.split.backedge, %.split.split.outer
  %.056 = phi ptr [ %.056.ph, %.split.split.outer ], [ %.056.be, %.split.split.backedge ] ; 11 uses
  %i.ax = getelementptr i8, ptr %.056, i64 4      ; 7 uses
  %i.ay = load i32, ptr %.056, align 4, !tbaa !11
  switch i32 %i.ay, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.s
    i32 8, label %bb.u
    i32 9, label %bb.w
    i32 22, label %bb.x
    i32 42, label %bb.aa
    i32 21, label %bb.af
    i32 10, label %.thread7
  ]

.split13.us:                                      ; preds = %.split.split, %.split.us
  %.us-phi14 = phi i32 [ %.052.us.ph, %.split.us ], [ %.052.ph, %.split.split ]
  %.not74 = icmp eq i32 %.us-phi14, 0
  %2 = zext i1 %.not74 to i32
  br label %.thread

bb.s:                                             ; preds = %.split.split
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.ba = icmp eq i32 %1, %i.az
  br i1 %i.ba, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr i8, ptr %.056, i64 8
  br label %.split.split.backedge

bb.u:                                             ; preds = %.split.split
  %i.bc = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.bd = tail call fastcc i32 @sre_category(i32 noundef %i.bc, i32 noundef %1)
  %.not73 = icmp eq i32 %i.bd, 0
  br i1 %.not73, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr i8, ptr %.056, i64 8
  br label %.split.split.backedge

bb.w:                                             ; preds = %.split.split
  %i.bf = getelementptr i8, ptr %.056, i64 36
  br label %.split.split.backedge

bb.x:                                             ; preds = %.split.split
  %i.bg = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not70 = icmp ugt i32 %i.bg, %1
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr i8, ptr %.056, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %.not71 = icmp ugt i32 %1, %i.bi
  br i1 %.not71, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bj = getelementptr i8, ptr %.056, i64 12
  br label %.split.split.backedge

bb.aa:                                            ; preds = %.split.split
  %i.bk = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not66 = icmp ugt i32 %i.bk, %1
  br i1 %.not66, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr i8, ptr %.056, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %.not67 = icmp ugt i32 %1, %i.bm
  br i1 %.not67, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.bo = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not68 = icmp ugt i32 %i.bo, %i.bn
  br i1 %.not68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr i8, ptr %.056, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11
  %.not69 = icmp ugt i32 %i.bn, %i.bq
  br i1 %.not69, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.br = getelementptr i8, ptr %.056, i64 12
  br label %.split.split.backedge

bb.af:                                            ; preds = %.split.split
  %i.bs = xor i32 %.052.ph, 1
  br label %.split.split.outer

.split.split.outer:                               ; preds = %bb.a, %bb.af
  %.056.ph = phi ptr [ %i.ax, %bb.af ], [ %0, %bb.a ]
  %.052.ph = phi i32 [ %i.bs, %bb.af ], [ 1, %bb.a ] ; 7 uses
  br label %.split.split

.thread7:                                         ; preds = %.split.split
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %.056, i64 264
  %.idx = shl nuw nsw i64 %i.bu, 5
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx
  br label %.split.split.backedge

.split.split.backedge:                            ; preds = %.thread7, %bb.ae, %bb.z, %bb.w, %bb.v, %bb.t
  %.056.be = phi ptr [ %i.bw, %.thread7 ], [ %i.bb, %bb.t ], [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bj, %bb.z ], [ %i.br, %bb.ae ]
  br label %.split.split

.thread:                                          ; preds = %bb.ad, %bb.ab, %.split.split, %bb.y, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.j, %bb.g, %bb.e, %bb.b, %.split.us, %.split13.us
  %.4 = phi i32 [ %2, %.split13.us ], [ %.052.us.ph, %bb.j ], [ %.052.us.ph, %bb.g ], [ %.052.us.ph, %bb.e ], [ %.052.us.ph, %bb.b ], [ %.052.us.ph, %bb.m ], [ %.052.us.ph, %bb.o ], [ %.052.us.ph, %bb.q ], [ 0, %.split.us ], [ %.052.ph, %bb.ad ], [ %.052.ph, %bb.u ], [ %.052.ph, %bb.s ], [ 0, %.split.split ], [ %.052.ph, %bb.y ], [ %.052.ph, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @sre_ucs1_count(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 42 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 12 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp slt i64 %2, %i.f
  %i.h = icmp ne i64 %2, 4294967295
  %or.cond = and i1 %i.h, %i.g
  %i.i = getelementptr i8, ptr %i.a, i64 %2
  %spec.select = select i1 %or.cond, ptr %i.i, ptr %i.c ; 24 uses
  %spec.select207 = ptrtoaddr ptr %spec.select to i64 ; 10 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !11
  switch i32 %i.j, label %.preheader [
    i32 13, label %.preheader127
    i32 2, label %.preheader128
    i32 3, label %.critedge
    i32 16, label %bb.d
    i32 32, label %bb.g
    i32 40, label %bb.j
    i32 36, label %bb.l
    i32 20, label %bb.n
    i32 33, label %bb.q
    i32 41, label %bb.t
    i32 37, label %bb.v
  ]

.preheader128:                                    ; preds = %bb.a
  %i.k = icmp ult ptr %i.a, %spec.select
  br i1 %i.k, label %.lr.ph179.preheader, label %.critedge

.lr.ph179.preheader:                              ; preds = %.preheader128
  %i.l = sub i64 %spec.select207, %i.e
  %scevgep222 = getelementptr i8, ptr %i.a, i64 %i.l
  br label %.lr.ph179

.preheader127:                                    ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = icmp ult ptr %i.a, %spec.select
  br i1 %i.n, label %.lr.ph184.preheader, label %.critedge

.lr.ph184.preheader:                              ; preds = %.preheader127
  %i.o = sub i64 %spec.select207, %i.e
  %scevgep224 = getelementptr i8, ptr %i.a, i64 %i.o
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %bb.b
  %.0105183 = phi ptr [ %i.s, %bb.b ], [ %i.a, %.lr.ph184.preheader ] ; 3 uses
  %i.p = load i8, ptr %.0105183, align 1, !tbaa !26
  %i.q = zext i8 %i.p to i32
  %i.r = tail call fastcc i32 @sre_ucs1_charset(ptr noundef %i.m, i32 noundef %i.q)
  %.not117 = icmp eq i32 %i.r, 0
  br i1 %.not117, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph184
  %i.s = getelementptr i8, ptr %.0105183, i64 1   ; 2 uses
  %exitcond225.not = icmp eq ptr %i.s, %spec.select
  br i1 %exitcond225.not, label %.critedge, label %.lr.ph184, !llvm.loop !196

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %bb.c
  %.1178 = phi ptr [ %i.u, %bb.c ], [ %i.a, %.lr.ph179.preheader ] ; 3 uses
  %i.t = load i8, ptr %.1178, align 1, !tbaa !26
  %.not116 = icmp eq i8 %i.t, 10
  br i1 %.not116, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph179
  %i.u = getelementptr i8, ptr %.1178, i64 1      ; 2 uses
  %exitcond223.not = icmp eq ptr %i.u, %spec.select
  br i1 %exitcond223.not, label %.critedge, label %.lr.ph179, !llvm.loop !197

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11   ; 2 uses
  %.not115 = icmp ult i32 %i.w, 256
  %i.x = icmp ult ptr %i.a, %spec.select
  %or.cond188 = select i1 %.not115, i1 %i.x, i1 false
  br i1 %or.cond188, label %.lr.ph174, label %.critedge

.lr.ph174:                                        ; preds = %bb.d
  %i.y = trunc nuw i32 %i.w to i8
  %i.z = sub i64 %spec.select207, %i.e
  %scevgep220 = getelementptr i8, ptr %i.a, i64 %i.z
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph174, %bb.f
  %.2173 = phi ptr [ %i.a, %.lr.ph174 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.aa = load i8, ptr %.2173, align 1, !tbaa !26
  %i.ab = icmp eq i8 %i.aa, %i.y
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.2173, i64 1     ; 2 uses
  %exitcond221.not = icmp eq ptr %i.ac, %spec.select
  br i1 %exitcond221.not, label %.critedge, label %bb.e, !llvm.loop !198

bb.g:                                             ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = icmp ult ptr %i.a, %spec.select
  br i1 %i.af, label %.lr.ph170.preheader, label %.critedge

end_hunk_0
begin_hunk_1_@repeat_pool_malloc:bb.a
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.g, i64 32
  store ptr %.0, ptr %i.h, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr i8, ptr %.0, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !112
  %i.j = getelementptr i8, ptr %.0, i64 40
  store ptr %i.g, ptr %i.j, align 8, !tbaa !92
  store ptr %.0, ptr %i.f, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.016 = phi ptr [ %.0, %bb.f ], [ null, %bb.c ]
  ret ptr %.016
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

declare i32 @_PyUnicode_IsAlpha(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsDecimalDigit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsDigit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsNumeric(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsLinebreak(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsWhitespace(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sre_ucs2_charset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  %i.b = lshr i32 %1, 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = and i32 %1, 224
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i32 %1, 31
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = icmp ult i32 %1, 256
  %i.i = lshr i32 %1, 5
  %i.j = zext nneg i32 %i.i to i64
  br i1 %i.a, label %.split.us.outer, label %.split.split.outer

.split.us.outer:                                  ; preds = %bb.a, %bb.c
  %.056.us.ph = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]
  %.052.us.ph = phi i32 [ %i.aa, %bb.c ], [ 1, %bb.a ] ; 9 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.backedge, %.split.us.outer
  %.056.us = phi ptr [ %.056.us.ph, %.split.us.outer ], [ %.056.us.be, %.split.us.backedge ] ; 12 uses
  %i.k = getelementptr i8, ptr %.056.us, i64 4    ; 8 uses
  %i.l = load i32, ptr %.056.us, align 4, !tbaa !11
  switch i32 %i.l, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.q
    i32 8, label %bb.o
    i32 9, label %bb.l
    i32 22, label %bb.i
    i32 42, label %bb.d
    i32 21, label %bb.c
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = getelementptr i8, ptr %.056.us, i64 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %.056.us, i64 264  ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.r, %i.e
  %i.t = lshr exact i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = and i32 %i.v, %i.g
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.thread7.us, label %.thread

.thread7.us:                                      ; preds = %bb.b
  %i.x = load i32, ptr %i.k, align 4, !tbaa !11
  %i.y = zext i32 %i.x to i64
  %.idx.us = shl nuw nsw i64 %i.y, 5
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx.us
  br label %.split.us.backedge

bb.c:                                             ; preds = %.split.us
  %i.aa = xor i32 %.052.us.ph, 1
  br label %.split.us.outer

bb.d:                                             ; preds = %.split.us
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !11
  %.not66.us = icmp ugt i32 %i.ab, %1
  br i1 %.not66.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.056.us, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %.not67.us = icmp ugt i32 %1, %i.ad
  br i1 %.not67.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.af = load i32, ptr %i.k, align 4, !tbaa !11
  %.not68.us = icmp ugt i32 %i.af, %i.ae
  br i1 %.not68.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %.056.us, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %.not69.us = icmp ugt i32 %i.ae, %i.ah
  br i1 %.not69.us, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr i8, ptr %.056.us, i64 12
  br label %.split.us.backedge

bb.i:                                             ; preds = %.split.us
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !11
  %.not70.us = icmp ugt i32 %i.aj, %1
  br i1 %.not70.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.056.us, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %.not71.us = icmp ugt i32 %1, %i.al
  br i1 %.not71.us, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %.056.us, i64 12
  br label %.split.us.backedge

bb.l:                                             ; preds = %.split.us
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = and i32 %i.ao, %i.g
  %.not72.us = icmp eq i32 %i.ap, 0
  br i1 %.not72.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr i8, ptr %.056.us, i64 36
  br label %.split.us.backedge

bb.o:                                             ; preds = %.split.us
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !11
  %i.as = tail call fastcc i32 @sre_category(i32 noundef %i.ar, i32 noundef %1)
  %.not73.us = icmp eq i32 %i.as, 0
  br i1 %.not73.us, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %.056.us, i64 8
  br label %.split.us.backedge

bb.q:                                             ; preds = %.split.us
  %i.au = load i32, ptr %i.k, align 4, !tbaa !11
  %i.av = icmp eq i32 %1, %i.au
  br i1 %i.av, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.056.us, i64 8
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.h, %.thread7.us
  %.056.us.be = phi ptr [ %i.z, %.thread7.us ], [ %i.aw, %bb.r ], [ %i.at, %bb.p ], [ %i.aq, %bb.n ], [ %i.am, %bb.k ], [ %i.ai, %bb.h ]
  br label %.split.us

.split.split:                                     ; preds = %.split.split.backedge, %.split.split.outer
  %.056 = phi ptr [ %.056.ph, %.split.split.outer ], [ %.056.be, %.split.split.backedge ] ; 11 uses
  %i.ax = getelementptr i8, ptr %.056, i64 4      ; 7 uses
  %i.ay = load i32, ptr %.056, align 4, !tbaa !11
  switch i32 %i.ay, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.s
    i32 8, label %bb.u
    i32 9, label %bb.w
    i32 22, label %bb.x
    i32 42, label %bb.aa
    i32 21, label %bb.af
    i32 10, label %.thread7
  ]

.split13.us:                                      ; preds = %.split.split, %.split.us
  %.us-phi14 = phi i32 [ %.052.us.ph, %.split.us ], [ %.052.ph, %.split.split ]
  %.not74 = icmp eq i32 %.us-phi14, 0
  %2 = zext i1 %.not74 to i32
  br label %.thread

bb.s:                                             ; preds = %.split.split
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.ba = icmp eq i32 %1, %i.az
  br i1 %i.ba, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr i8, ptr %.056, i64 8
  br label %.split.split.backedge

bb.u:                                             ; preds = %.split.split
  %i.bc = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.bd = tail call fastcc i32 @sre_category(i32 noundef %i.bc, i32 noundef %1)
  %.not73 = icmp eq i32 %i.bd, 0
  br i1 %.not73, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr i8, ptr %.056, i64 8
  br label %.split.split.backedge

bb.w:                                             ; preds = %.split.split
  %i.bf = getelementptr i8, ptr %.056, i64 36
  br label %.split.split.backedge

bb.x:                                             ; preds = %.split.split
  %i.bg = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not70 = icmp ugt i32 %i.bg, %1
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr i8, ptr %.056, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %.not71 = icmp ugt i32 %1, %i.bi
  br i1 %.not71, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bj = getelementptr i8, ptr %.056, i64 12
  br label %.split.split.backedge

bb.aa:                                            ; preds = %.split.split
  %i.bk = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not66 = icmp ugt i32 %i.bk, %1
  br i1 %.not66, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr i8, ptr %.056, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %.not67 = icmp ugt i32 %1, %i.bm
  br i1 %.not67, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.bo = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not68 = icmp ugt i32 %i.bo, %i.bn
  br i1 %.not68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr i8, ptr %.056, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11
  %.not69 = icmp ugt i32 %i.bn, %i.bq
  br i1 %.not69, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.br = getelementptr i8, ptr %.056, i64 12
  br label %.split.split.backedge

bb.af:                                            ; preds = %.split.split
  %i.bs = xor i32 %.052.ph, 1
  br label %.split.split.outer

.split.split.outer:                               ; preds = %bb.a, %bb.af
  %.056.ph = phi ptr [ %i.ax, %bb.af ], [ %0, %bb.a ]
  %.052.ph = phi i32 [ %i.bs, %bb.af ], [ 1, %bb.a ] ; 7 uses
  br label %.split.split

.thread7:                                         ; preds = %.split.split
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %.056, i64 264
  %.idx = shl nuw nsw i64 %i.bu, 5
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx
  br label %.split.split.backedge

.split.split.backedge:                            ; preds = %.thread7, %bb.ae, %bb.z, %bb.w, %bb.v, %bb.t
  %.056.be = phi ptr [ %i.bw, %.thread7 ], [ %i.bb, %bb.t ], [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bj, %bb.z ], [ %i.br, %bb.ae ]
  br label %.split.split

.thread:                                          ; preds = %bb.ad, %bb.ab, %.split.split, %bb.y, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.j, %bb.g, %bb.e, %bb.b, %.split.us, %.split13.us
  %.4 = phi i32 [ %2, %.split13.us ], [ %.052.us.ph, %bb.j ], [ %.052.us.ph, %bb.g ], [ %.052.us.ph, %bb.e ], [ %.052.us.ph, %bb.b ], [ %.052.us.ph, %bb.m ], [ %.052.us.ph, %bb.o ], [ %.052.us.ph, %bb.q ], [ 0, %.split.us ], [ %.052.ph, %bb.ad ], [ %.052.ph, %bb.u ], [ %.052.ph, %bb.s ], [ 0, %.split.split ], [ %.052.ph, %bb.y ], [ %.052.ph, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 4611686018427387904) i64 @sre_ucs2_count(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 32 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 1
  %i.h = icmp slt i64 %2, %i.g
  %i.i = icmp ne i64 %2, 4294967295
  %or.cond = and i1 %i.i, %i.h
  %i.j = getelementptr [2 x i8], ptr %i.a, i64 %2
  %spec.select = select i1 %or.cond, ptr %i.j, ptr %i.c ; 23 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !11
  switch i32 %i.k, label %.preheader [
    i32 13, label %.preheader131
    i32 2, label %.preheader132
    i32 3, label %.critedge
    i32 16, label %bb.d
    i32 32, label %bb.g
    i32 40, label %bb.j
    i32 36, label %bb.l
    i32 20, label %bb.n
    i32 33, label %bb.q
    i32 41, label %bb.t
    i32 37, label %bb.v
  ]

.preheader132:                                    ; preds = %bb.a
  %i.l = icmp ult ptr %i.a, %spec.select
  br i1 %i.l, label %.lr.ph184, label %.critedge

.preheader131:                                    ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = icmp ult ptr %i.a, %spec.select
  br i1 %i.n, label %.lr.ph189, label %.critedge

.lr.ph189:                                        ; preds = %.preheader131, %bb.b
  %.0105188 = phi ptr [ %i.r, %bb.b ], [ %i.a, %.preheader131 ] ; 3 uses
  %i.o = load i16, ptr %.0105188, align 2, !tbaa !106
  %i.p = zext i16 %i.o to i32
  %i.q = tail call fastcc i32 @sre_ucs2_charset(ptr noundef %i.m, i32 noundef %i.p)
  %.not117 = icmp eq i32 %i.q, 0
  br i1 %.not117, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph189
  %i.r = getelementptr i8, ptr %.0105188, i64 2   ; 3 uses
  %i.s = icmp ult ptr %i.r, %spec.select
  br i1 %i.s, label %.lr.ph189, label %.critedge, !llvm.loop !207

.lr.ph184:                                        ; preds = %.preheader132, %bb.c
  %.1183 = phi ptr [ %i.u, %bb.c ], [ %i.a, %.preheader132 ] ; 3 uses
  %i.t = load i16, ptr %.1183, align 2, !tbaa !106
  %.not116 = icmp eq i16 %i.t, 10
  br i1 %.not116, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph184
  %i.u = getelementptr i8, ptr %.1183, i64 2      ; 3 uses
  %i.v = icmp ult ptr %i.u, %spec.select
  br i1 %i.v, label %.lr.ph184, label %.critedge, !llvm.loop !208

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11   ; 2 uses
  %.not115 = icmp ult i32 %i.x, 65536
  %i.y = icmp ult ptr %i.a, %spec.select
  %or.cond193 = select i1 %.not115, i1 %i.y, i1 false
  br i1 %or.cond193, label %.lr.ph179, label %.critedge

.lr.ph179:                                        ; preds = %bb.d
  %i.z = trunc nuw i32 %i.x to i16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph179, %bb.f
  %.2178 = phi ptr [ %i.a, %.lr.ph179 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.aa = load i16, ptr %.2178, align 2, !tbaa !106
  %i.ab = icmp eq i16 %i.aa, %i.z
  br i1 %i.ab, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %.2178, i64 2     ; 3 uses
  %i.ad = icmp ult ptr %i.ac, %spec.select
  br i1 %i.ad, label %bb.e, label %.critedge, !llvm.loop !209

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %1, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !11
  %i.ag = icmp ult ptr %i.a, %spec.select
  br i1 %i.ag, label %.lr.ph175, label %.critedge

.lr.ph175:                                        ; preds = %bb.g, %bb.i
  %.3174 = phi ptr [ %i.aq, %bb.i ], [ %i.a, %bb.g ] ; 3 uses
  %i.ah = load i16, ptr %.3174, align 2, !tbaa !106 ; 3 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = icmp ult i16 %i.ah, 128
  br i1 %i.aj, label %bb.h, label %sre_lower_ascii.exit

bb.h:                                             ; preds = %.lr.ph175
  %i.ak = zext nneg i16 %i.ah to i64
  %i.al = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %i.an = zext i8 %i.am to i32
  br label %sre_lower_ascii.exit

sre_lower_ascii.exit:                             ; preds = %.lr.ph175, %bb.h
end_hunk_1
begin_hunk_2_@sre_ucs2_count:bb.a
  %i.dj = getelementptr i8, ptr %.9144, i64 2     ; 3 uses
  %i.dk = icmp ult ptr %i.dj, %spec.select
  br i1 %i.dk, label %.lr.ph, label %.critedge, !llvm.loop !216

.preheader:                                       ; preds = %bb.a, %bb.y
  %i.dl = load ptr, ptr %0, align 8, !tbaa !70    ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %spec.select
  br i1 %i.dm, label %bb.x, label %split

bb.x:                                             ; preds = %.preheader
  %i.dn = tail call fastcc i64 @sre_ucs2_match(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) ; 3 uses
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not118 = icmp eq i64 %i.dn, 0
  br i1 %.not118, label %._crit_edge, label %.preheader, !llvm.loop !217

._crit_edge:                                      ; preds = %bb.y
  %.pre = load ptr, ptr %0, align 8, !tbaa !70
  br label %split, !llvm.loop !217

split:                                            ; preds = %.preheader, %._crit_edge
  %i.dp = phi ptr [ %.pre, %._crit_edge ], [ %i.dl, %.preheader ]
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.e
  %i.ds = ashr exact i64 %i.dr, 1
  br label %.loopexit

.critedge:                                        ; preds = %char_loc_ignore.exit123.thread128, %char_loc_ignore.exit123, %sre_lower_locale.exit.i120, %.lr.ph, %bb.u, %.lr.ph150, %bb.s, %sre_lower_ascii.exit119, %bb.o, %bb.p, %char_loc_ignore.exit.thread, %char_loc_ignore.exit, %bb.m, %bb.k, %.lr.ph170, %bb.i, %sre_lower_ascii.exit, %bb.e, %bb.f, %bb.c, %.lr.ph184, %bb.b, %.lr.ph189, %bb.v, %bb.t, %bb.q, %.preheader139, %bb.l, %bb.j, %bb.g, %.preheader132, %.preheader131, %bb.n, %bb.a, %bb.d
  %.10 = phi ptr [ %i.ac, %bb.f ], [ %.1183, %.lr.ph184 ], [ %i.a, %bb.t ], [ %.7154, %sre_lower_ascii.exit119 ], [ %spec.select, %bb.a ], [ %i.a, %bb.d ], [ %spec.select, %bb.n ], [ %.3174, %sre_lower_ascii.exit ], [ %i.a, %.preheader139 ], [ %i.a, %bb.l ], [ %i.a, %bb.q ], [ %i.a, %bb.v ], [ %i.a, %.preheader131 ], [ %i.cs, %bb.u ], [ %i.a, %.preheader132 ], [ %.5163, %bb.m ], [ %i.bx, %bb.p ], [ %.4169, %.lr.ph170 ], [ %i.a, %bb.g ], [ %.0105188, %.lr.ph189 ], [ %i.a, %bb.j ], [ %i.r, %bb.b ], [ %i.u, %bb.c ], [ %.2178, %bb.e ], [ %i.aq, %bb.i ], [ %i.az, %bb.k ], [ %i.bq, %char_loc_ignore.exit.thread ], [ %.5163, %char_loc_ignore.exit ], [ %.6158, %bb.o ], [ %i.ck, %bb.s ], [ %.8149, %.lr.ph150 ], [ %.9144, %char_loc_ignore.exit123 ], [ %.9144, %sre_lower_locale.exit.i120 ], [ %i.dj, %char_loc_ignore.exit123.thread128 ], [ %.9144, %.lr.ph ]
  %i.dt = load ptr, ptr %0, align 8, !tbaa !70
  %i.du = ptrtoint ptr %.10 to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %.critedge, %split
  %.0106 = phi i64 [ %i.dx, %.critedge ], [ %i.ds, %split ], [ %i.dn, %bb.x ]
  ret i64 %.0106
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sre_ucs4_charset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  %i.b = lshr i32 %1, 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = and i32 %1, 224
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i32 %1, 31
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = icmp ult i32 %1, 256
  %i.i = lshr i32 %1, 5
  %i.j = zext nneg i32 %i.i to i64
  br i1 %i.a, label %.split.us.outer, label %.split.split.outer

.split.us.outer:                                  ; preds = %bb.a, %bb.c
  %.056.us.ph = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]
  %.052.us.ph = phi i32 [ %i.aa, %bb.c ], [ 1, %bb.a ] ; 9 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.backedge, %.split.us.outer
  %.056.us = phi ptr [ %.056.us.ph, %.split.us.outer ], [ %.056.us.be, %.split.us.backedge ] ; 12 uses
  %i.k = getelementptr i8, ptr %.056.us, i64 4    ; 8 uses
  %i.l = load i32, ptr %.056.us, align 4, !tbaa !11
  switch i32 %i.l, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.q
    i32 8, label %bb.o
    i32 9, label %bb.l
    i32 22, label %bb.i
    i32 42, label %bb.d
    i32 21, label %bb.c
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = getelementptr i8, ptr %.056.us, i64 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %.056.us, i64 264  ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.r, %i.e
  %i.t = lshr exact i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !11
  %i.w = and i32 %i.v, %i.g
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.thread7.us, label %.thread

.thread7.us:                                      ; preds = %bb.b
  %i.x = load i32, ptr %i.k, align 4, !tbaa !11
  %i.y = zext i32 %i.x to i64
  %.idx.us = shl nuw nsw i64 %i.y, 5
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx.us
  br label %.split.us.backedge

bb.c:                                             ; preds = %.split.us
  %i.aa = xor i32 %.052.us.ph, 1
  br label %.split.us.outer

bb.d:                                             ; preds = %.split.us
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !11
  %.not66.us = icmp ugt i32 %i.ab, %1
  br i1 %.not66.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.056.us, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %.not67.us = icmp ugt i32 %1, %i.ad
  br i1 %.not67.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.af = load i32, ptr %i.k, align 4, !tbaa !11
  %.not68.us = icmp ugt i32 %i.af, %i.ae
  br i1 %.not68.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %.056.us, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !11
  %.not69.us = icmp ugt i32 %i.ae, %i.ah
  br i1 %.not69.us, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr i8, ptr %.056.us, i64 12
  br label %.split.us.backedge

bb.i:                                             ; preds = %.split.us
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !11
  %.not70.us = icmp ugt i32 %i.aj, %1
  br i1 %.not70.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.056.us, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !11
  %.not71.us = icmp ugt i32 %1, %i.al
  br i1 %.not71.us, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %.056.us, i64 12
  br label %.split.us.backedge

bb.l:                                             ; preds = %.split.us
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = and i32 %i.ao, %i.g
  %.not72.us = icmp eq i32 %i.ap, 0
  br i1 %.not72.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr i8, ptr %.056.us, i64 36
  br label %.split.us.backedge

bb.o:                                             ; preds = %.split.us
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !11
  %i.as = tail call fastcc i32 @sre_category(i32 noundef %i.ar, i32 noundef %1)
  %.not73.us = icmp eq i32 %i.as, 0
  br i1 %.not73.us, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %.056.us, i64 8
  br label %.split.us.backedge

bb.q:                                             ; preds = %.split.us
  %i.au = load i32, ptr %i.k, align 4, !tbaa !11
  %i.av = icmp eq i32 %1, %i.au
  br i1 %i.av, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.056.us, i64 8
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.h, %.thread7.us
  %.056.us.be = phi ptr [ %i.z, %.thread7.us ], [ %i.aw, %bb.r ], [ %i.at, %bb.p ], [ %i.aq, %bb.n ], [ %i.am, %bb.k ], [ %i.ai, %bb.h ]
  br label %.split.us

.split.split:                                     ; preds = %.split.split.backedge, %.split.split.outer
  %.056 = phi ptr [ %.056.ph, %.split.split.outer ], [ %.056.be, %.split.split.backedge ] ; 11 uses
  %i.ax = getelementptr i8, ptr %.056, i64 4      ; 7 uses
  %i.ay = load i32, ptr %.056, align 4, !tbaa !11
  switch i32 %i.ay, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.s
    i32 8, label %bb.u
    i32 9, label %bb.w
    i32 22, label %bb.x
    i32 42, label %bb.aa
    i32 21, label %bb.af
    i32 10, label %.thread7
  ]

.split13.us:                                      ; preds = %.split.split, %.split.us
  %.us-phi14 = phi i32 [ %.052.us.ph, %.split.us ], [ %.052.ph, %.split.split ]
  %.not74 = icmp eq i32 %.us-phi14, 0
  %2 = zext i1 %.not74 to i32
  br label %.thread

bb.s:                                             ; preds = %.split.split
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.ba = icmp eq i32 %1, %i.az
  br i1 %i.ba, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr i8, ptr %.056, i64 8
  br label %.split.split.backedge

bb.u:                                             ; preds = %.split.split
  %i.bc = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.bd = tail call fastcc i32 @sre_category(i32 noundef %i.bc, i32 noundef %1)
  %.not73 = icmp eq i32 %i.bd, 0
  br i1 %.not73, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr i8, ptr %.056, i64 8
  br label %.split.split.backedge

bb.w:                                             ; preds = %.split.split
  %i.bf = getelementptr i8, ptr %.056, i64 36
  br label %.split.split.backedge

bb.x:                                             ; preds = %.split.split
  %i.bg = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not70 = icmp ugt i32 %i.bg, %1
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr i8, ptr %.056, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11
  %.not71 = icmp ugt i32 %1, %i.bi
  br i1 %.not71, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bj = getelementptr i8, ptr %.056, i64 12
  br label %.split.split.backedge

bb.aa:                                            ; preds = %.split.split
  %i.bk = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not66 = icmp ugt i32 %i.bk, %1
  br i1 %.not66, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bl = getelementptr i8, ptr %.056, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %.not67 = icmp ugt i32 %1, %i.bm
  br i1 %.not67, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bn = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
  %i.bo = load i32, ptr %i.ax, align 4, !tbaa !11
  %.not68 = icmp ugt i32 %i.bo, %i.bn
  br i1 %.not68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = getelementptr i8, ptr %.056, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11
  %.not69 = icmp ugt i32 %i.bn, %i.bq
  br i1 %.not69, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.br = getelementptr i8, ptr %.056, i64 12
  br label %.split.split.backedge

bb.af:                                            ; preds = %.split.split
  %i.bs = xor i32 %.052.ph, 1
  br label %.split.split.outer

.split.split.outer:                               ; preds = %bb.a, %bb.af
  %.056.ph = phi ptr [ %i.ax, %bb.af ], [ %0, %bb.a ]
  %.052.ph = phi i32 [ %i.bs, %bb.af ], [ 1, %bb.a ] ; 7 uses
  br label %.split.split

.thread7:                                         ; preds = %.split.split
  %i.bt = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %.056, i64 264
  %.idx = shl nuw nsw i64 %i.bu, 5
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx
  br label %.split.split.backedge

.split.split.backedge:                            ; preds = %.thread7, %bb.ae, %bb.z, %bb.w, %bb.v, %bb.t
  %.056.be = phi ptr [ %i.bw, %.thread7 ], [ %i.bb, %bb.t ], [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bj, %bb.z ], [ %i.br, %bb.ae ]
  br label %.split.split

.thread:                                          ; preds = %bb.ad, %bb.ab, %.split.split, %bb.y, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.j, %bb.g, %bb.e, %bb.b, %.split.us, %.split13.us
  %.4 = phi i32 [ %2, %.split13.us ], [ %.052.us.ph, %bb.j ], [ %.052.us.ph, %bb.g ], [ %.052.us.ph, %bb.e ], [ %.052.us.ph, %bb.b ], [ %.052.us.ph, %bb.m ], [ %.052.us.ph, %bb.o ], [ %.052.us.ph, %bb.q ], [ 0, %.split.us ], [ %.052.ph, %bb.ad ], [ %.052.ph, %bb.u ], [ %.052.ph, %bb.s ], [ 0, %.split.split ], [ %.052.ph, %bb.y ], [ %.052.ph, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i64 -9223372036854775808, 2305843009213693952) i64 @sre_ucs4_count(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 32 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp slt i64 %2, %i.g
  %i.i = icmp ne i64 %2, 4294967295
  %or.cond = and i1 %i.i, %i.h
  %i.j = getelementptr [4 x i8], ptr %i.a, i64 %2
  %spec.select = select i1 %or.cond, ptr %i.j, ptr %i.c ; 22 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !11
  switch i32 %i.k, label %.preheader [
    i32 13, label %.preheader124
    i32 2, label %.preheader125
    i32 3, label %.critedge
    i32 16, label %bb.d
    i32 32, label %bb.f
    i32 40, label %bb.i
    i32 36, label %bb.k
    i32 20, label %bb.m
    i32 33, label %bb.o
    i32 41, label %bb.r
    i32 37, label %bb.t
  ]

.preheader125:                                    ; preds = %bb.a
  %i.l = icmp ult ptr %i.a, %spec.select
  br i1 %i.l, label %.lr.ph175, label %.critedge

.preheader124:                                    ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = icmp ult ptr %i.a, %spec.select
  br i1 %i.n, label %.lr.ph180, label %.critedge

.lr.ph180:                                        ; preds = %.preheader124, %bb.b
  %.0100179 = phi ptr [ %i.q, %bb.b ], [ %i.a, %.preheader124 ] ; 3 uses
  %i.o = load i32, ptr %.0100179, align 4, !tbaa !11
  %i.p = tail call fastcc i32 @sre_ucs4_charset(ptr noundef %i.m, i32 noundef %i.o)
  %.not110 = icmp eq i32 %i.p, 0
  br i1 %.not110, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph180
  %i.q = getelementptr i8, ptr %.0100179, i64 4   ; 3 uses
  %i.r = icmp ult ptr %i.q, %spec.select
  br i1 %i.r, label %.lr.ph180, label %.critedge, !llvm.loop !218

.lr.ph175:                                        ; preds = %.preheader125, %bb.c
  %.1174 = phi ptr [ %i.t, %bb.c ], [ %i.a, %.preheader125 ] ; 3 uses
  %i.s = load i32, ptr %.1174, align 4, !tbaa !11
  %.not109 = icmp eq i32 %i.s, 10
  br i1 %.not109, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph175
  %i.t = getelementptr i8, ptr %.1174, i64 4      ; 3 uses
  %i.u = icmp ult ptr %i.t, %spec.select
  br i1 %i.u, label %.lr.ph175, label %.critedge, !llvm.loop !219

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr i8, ptr %1, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %i.x = icmp ult ptr %i.a, %spec.select
  br i1 %i.x, label %.lr.ph170, label %.critedge

.lr.ph170:                                        ; preds = %bb.d, %bb.e
  %.2169 = phi ptr [ %i.aa, %bb.e ], [ %i.a, %bb.d ] ; 3 uses
  %i.y = load i32, ptr %.2169, align 4, !tbaa !11
  %i.z = icmp eq i32 %i.y, %i.w
  br i1 %i.z, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph170
  %i.aa = getelementptr i8, ptr %.2169, i64 4     ; 3 uses
  %i.ab = icmp ult ptr %i.aa, %spec.select
  br i1 %i.ab, label %.lr.ph170, label %.critedge, !llvm.loop !220

bb.f:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = icmp ult ptr %i.a, %spec.select
  br i1 %i.ae, label %.lr.ph166, label %.critedge

.lr.ph166:                                        ; preds = %bb.f, %bb.h
  %.3165 = phi ptr [ %i.an, %bb.h ], [ %i.a, %bb.f ] ; 3 uses
  %i.af = load i32, ptr %.3165, align 4, !tbaa !11 ; 3 uses
  %i.ag = icmp ult i32 %i.af, 128
  br i1 %i.ag, label %bb.g, label %sre_lower_ascii.exit

bb.g:                                             ; preds = %.lr.ph166
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !26
  %i.ak = zext i8 %i.aj to i32
  br label %sre_lower_ascii.exit

sre_lower_ascii.exit:                             ; preds = %.lr.ph166, %bb.g
  %i.al = phi i32 [ %i.ak, %bb.g ], [ %i.af, %.lr.ph166 ]
  %i.am = icmp eq i32 %i.al, %i.ad
  br i1 %i.am, label %bb.h, label %.critedge

bb.h:                                             ; preds = %sre_lower_ascii.exit
  %i.an = getelementptr i8, ptr %.3165, i64 4     ; 3 uses
  %i.ao = icmp ult ptr %i.an, %spec.select
  br i1 %i.ao, label %.lr.ph166, label %.critedge, !llvm.loop !221
end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@rb_big_plus:bb.a
  %i.bw = and i64 %1, -4
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.bx, i64 range(i64 1, 0) %i.bx, i64 61)
  %i.bz = bitcast i64 %i.by to double
  br label %rb_float_value_inline.exit

bb.s:                                             ; preds = %rb_big2dbl.exit
  %i.ca = inttoptr i64 %1 to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i28 = phi double [ %i.cc, %bb.s ], [ %i.bz, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cd = fadd double %.0.i27, %.0.i28            ; 2 uses
  %i.ce = bitcast double %i.cd to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.ce, 3458764513820540928
  br i1 %cond.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %rb_float_value_inline.exit
  %i.cf = lshr i64 %i.ce, 60
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 7
  %i.ci = add nsw i32 %i.ch, -5
  %i.cj = icmp ult i32 %i.ci, -2
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ce, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ce, i64 3)
  %i.cl = and i64 %i.ck, -4
  %i.cm = or disjoint i64 %i.cl, 2
  br label %bignorm.exit

bb.v:                                             ; preds = %bb.t
  %i.cn = icmp eq i64 %i.ce, 0
  br i1 %i.cn, label %bignorm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_float_value_inline.exit
  %i.co = tail call i64 @rb_float_new_in_heap(double noundef %i.cd) #23
  br label %bignorm.exit

RB_FLOAT_TYPE_P.exit.thread35:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cp = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 43) #23
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.w, %bb.v, %bb.u, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f, %RB_FLOAT_TYPE_P.exit.thread35, %bb.d, %bb.c
  %.021 = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.cp, %RB_FLOAT_TYPE_P.exit.thread35 ], [ -9223372036854775806, %bb.v ], [ %i.q, %bb.f ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bp, %bb.n ], [ %i.q, %bb.o ], [ %i.bn, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.cm, %bb.u ], [ %i.co, %bb.w ], [ 1, %bb.j ]
  ret i64 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigsub_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i92 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.0.i83 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %.0.i92201 = ptrtoaddr ptr %.0.i92 to i64
  %i.m = icmp eq i64 %.0.i83, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %.neg = mul nsw i64 %1, -2
  %i.n = or disjoint i64 %.neg, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i83, i64 2) ; 5 uses
  %i.o = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.p = trunc i64 %i.d to i32
  %i.q = lshr i32 %i.p, 13
  %i.r = and i32 %i.q, 1
  %i.s = tail call fastcc i64 @bignew_1(i64 noundef %i.o, i64 noundef %spec.store.select, i32 noundef %i.r) ; 8 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 16 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13   ; 6 uses
  %i.v = and i64 %i.u, 16384
  %.not.i85 = icmp eq i64 %i.v, 0                 ; 3 uses
  br i1 %.not.i85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit87

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit87

BIGNUM_DIGITS.exit87:                             ; preds = %bb.f, %bb.g
  %.0.i86 = phi ptr [ %i.w, %bb.f ], [ %i.y, %bb.g ] ; 10 uses
  %.0.i86200 = ptrtoaddr ptr %.0.i86 to i64
  %i.z = icmp sgt i64 %.0.i83, 0
  br i1 %i.z, label %.lr.ph, label %.lr.ph123

.preheader96:                                     ; preds = %bb.i, %bb.h
  %.lcssa232 = phi i64 [ %i.ah, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %.lcssa231 = phi i64 [ %i.ai, %bb.h ], [ 0, %bb.i ]
  %i.aa = icmp eq i64 %.0.i83, 1
  br i1 %i.aa, label %.lr.ph123, label %.loopexit97

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit87
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %.preheader94.preheader, label %bb.h

.preheader94.preheader:                           ; preds = %bb.i, %.lr.ph.1, %.lr.ph
  %.068116.lcssa = phi i64 [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %bb.i ] ; 3 uses
  %.070115.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.ar, %bb.i ]
  br label %.preheader94

bb.h:                                             ; preds = %.lr.ph
  %i.ac = load i32, ptr %.0.i92, align 4, !tbaa !7
  %i.ad = zext i32 %i.ac to i64
  %i.ae = and i64 %1, 4294967295
  %i.af = sub nsw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %.0.i86, align 4, !tbaa !7
  %i.ah = ashr i64 %i.af, 32                      ; 3 uses
  %i.ai = lshr i64 %1, 32                         ; 3 uses
  %exitcond.not = icmp eq i64 %.0.i83, 1
  br i1 %exitcond.not, label %.preheader96, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.preheader94.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1
  %i.ak = getelementptr i8, ptr %.0.i92, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = zext i32 %i.al to i64
  %i.an = sub nsw i64 %i.am, %i.ai
  %i.ao = add nsw i64 %i.an, %i.ah                ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr i8, ptr %.0.i86, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !7
  %i.ar = ashr i64 %i.ao, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.0.i83, 2
  br i1 %exitcond.not.1, label %.preheader96, label %.preheader94.preheader

.lr.ph123:                                        ; preds = %.preheader96, %BIGNUM_DIGITS.exit87
  %.1122.ph = phi i64 [ %1, %BIGNUM_DIGITS.exit87 ], [ %.lcssa231, %.preheader96 ] ; 3 uses
  %.169121.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit87 ], [ %.0.i83, %.preheader96 ] ; 4 uses
  %.171120.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit87 ], [ %.lcssa232, %.preheader96 ] ; 2 uses
  %i.as = icmp eq i64 %.1122.ph, 0
  br i1 %i.as, label %.loopexit98, label %bb.j

bb.j:                                             ; preds = %.lr.ph123
  %i.at = and i64 %.1122.ph, 4294967295
  %i.au = sub nsw i64 %.171120.ph, %i.at          ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr [4 x i8], ptr %.0.i86, i64 %.169121.ph
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !7
  %i.ax = ashr i64 %i.au, 32                      ; 3 uses
  %i.ay = lshr i64 %.1122.ph, 32                  ; 2 uses
  %i.az = add nuw nsw i64 %.169121.ph, 1          ; 3 uses
  %exitcond143.not = icmp eq i64 %i.az, %spec.store.select
  br i1 %exitcond143.not, label %.loopexit97, label %.lr.ph123.1

.lr.ph123.1:                                      ; preds = %bb.j
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %.loopexit98, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.1
  %i.bb = sub nsw i64 %i.ax, %i.ay                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr [4 x i8], ptr %.0.i86, i64 %i.az
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !7
  %i.be = ashr i64 %i.bb, 32                      ; 2 uses
  %i.bf = or disjoint i64 %.169121.ph, 2          ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %i.bf, %spec.store.select
  br i1 %exitcond143.not.1, label %.loopexit97, label %.loopexit98

.preheader94:                                     ; preds = %.preheader94.preheader, %bb.l
  %indvar = phi i64 [ %indvar.next, %bb.l ], [ 0, %.preheader94.preheader ] ; 3 uses
  %.272 = phi i64 [ %i.by, %bb.l ], [ %.070115.lcssa, %.preheader94.preheader ]
  %.2 = phi i64 [ %i.bz, %bb.l ], [ %.068116.lcssa, %.preheader94.preheader ] ; 6 uses
  %i.bg = icmp eq i64 %.272, 0
  br i1 %i.bg, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %.preheader94
  %i.bh = add nuw nsw i64 %.068116.lcssa, 1
  %i.bi = add i64 %i.bh, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %.0.i83, i64 %i.bi)
  %2 = add i64 %indvar, %.068116.lcssa
  %i.bj = sub i64 %smax, %2                       ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.bj, 8
  %i.bk = sub i64 %.0.i92201, %.0.i86200
  %diff.check = icmp ugt i64 %i.bk, -32
  %or.cond = select i1 %min.iters.check203, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader216, label %vector.ph204

vector.ph204:                                     ; preds = %.preheader.preheader
  %n.vec205 = and i64 %i.bj, -8                   ; 3 uses
  %i.bl = add i64 %.2, %n.vec205                  ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph204
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next210, %vector.body206 ] ; 2 uses
  %i.bm = add nuw i64 %.2, %index207              ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %.0.i92, i64 %i.bm ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %wide.load208 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !7
  %wide.load209 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !7
  %i.bp = getelementptr [4 x i8], ptr %.0.i86, i64 %i.bm ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <4 x i32> %wide.load208, ptr %i.bp, align 4, !tbaa !7
  store <4 x i32> %wide.load209, ptr %i.bq, align 4, !tbaa !7
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next210, %n.vec205
  br i1 %i.br, label %middle.block211, label %vector.body206, !llvm.loop !283

middle.block211:                                  ; preds = %vector.body206
  %cmp.n212 = icmp eq i64 %i.bj, %n.vec205
  br i1 %cmp.n212, label %.loopexit, label %.preheader.preheader216

.preheader.preheader216:                          ; preds = %.preheader.preheader, %middle.block211
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.bl, %middle.block211 ]
  br label %.preheader

bb.l:                                             ; preds = %.preheader94
  %i.bs = getelementptr [4 x i8], ptr %.0.i92, i64 %.2
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, -1                   ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = getelementptr [4 x i8], ptr %.0.i86, i64 %.2
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !7
  %i.by = ashr i64 %i.bv, 32                      ; 2 uses
  %i.bz = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.ca = icmp slt i64 %i.bz, %.0.i83
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ca, label %.preheader94, label %.loopexit95

.loopexit95:                                      ; preds = %bb.l, %bb.m
  %.373 = phi i64 [ -1, %bb.m ], [ %i.by, %bb.l ] ; 2 uses
  %.3 = phi i64 [ %i.ce, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %i.cb = icmp slt i64 %.3, %spec.store.select
  br i1 %i.cb, label %.loopexit98, label %.loopexit97

.loopexit98:                                      ; preds = %.lr.ph123, %.lr.ph123.1, %bb.k, %.loopexit95
  %.474 = phi i64 [ %.373, %.loopexit95 ], [ %.171120.ph, %.lr.ph123 ], [ %i.ax, %.lr.ph123.1 ], [ %i.be, %bb.k ]
  %.4 = phi i64 [ %.3, %.loopexit95 ], [ %.169121.ph, %.lr.ph123 ], [ %i.az, %.lr.ph123.1 ], [ %i.bf, %bb.k ] ; 3 uses
  %i.cc = icmp eq i64 %.474, 0
  br i1 %i.cc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit98
  %i.cd = getelementptr [4 x i8], ptr %.0.i86, i64 %.4
  store i32 -1, ptr %i.cd, align 4, !tbaa !7
  %i.ce = add nsw i64 %.4, 1
  br label %.loopexit95, !llvm.loop !284

.preheader:                                       ; preds = %.preheader.preheader216, %.preheader
  %.5 = phi i64 [ %i.ci, %.preheader ], [ %.5.ph, %.preheader.preheader216 ] ; 3 uses
  %i.cf = getelementptr [4 x i8], ptr %.0.i92, i64 %.5
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = getelementptr [4 x i8], ptr %.0.i86, i64 %.5
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !7
  %i.ci = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.cj = icmp slt i64 %i.ci, %.0.i83
  br i1 %i.cj, label %.preheader, label %.loopexit, !llvm.loop !285

.loopexit:                                        ; preds = %.preheader, %middle.block211, %bb.n
  %.6 = phi i64 [ %i.cm, %bb.n ], [ %i.bl, %middle.block211 ], [ %i.ci, %.preheader ] ; 2 uses
  %i.ck = icmp slt i64 %.6, %spec.store.select
  br i1 %i.ck, label %bb.n, label %.loopexit97.thread

bb.n:                                             ; preds = %.loopexit, %.loopexit98
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit98 ] ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %.0.i86, i64 %.7
  store i32 0, ptr %i.cl, align 4, !tbaa !7
  %i.cm = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !286

.loopexit97:                                      ; preds = %bb.j, %bb.k, %.preheader96, %.loopexit95
  %.777 = phi i64 [ %.lcssa232, %.preheader96 ], [ %.373, %.loopexit95 ], [ %i.ax, %bb.j ], [ %i.be, %bb.k ]
  %i.cn = icmp slt i64 %.777, 0
  br i1 %i.cn, label %bb.o, label %.loopexit97.thread

bb.o:                                             ; preds = %.loopexit97
  br i1 %.not.i85, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = lshr i64 %i.u, 15
  %i.cp = and i64 %i.co, 511
  %i.cq = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cr = getelementptr i8, ptr %i.t, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !15
  %i.ct = getelementptr i8, ptr %i.t, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i8.i = phi i64 [ %i.cp, %bb.p ], [ %i.cs, %bb.q ] ; 5 uses
  %.0.i5.i = phi ptr [ %i.cq, %bb.p ], [ %i.cu, %bb.q ] ; 4 uses
  %.not27.i.i = icmp eq i64 %.0.i8.i, 0
  br i1 %.not27.i.i, label %bary_2comp.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i, %bb.r
  %.023.i.i = phi i64 [ %i.cx, %bb.r ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 5 uses
  %i.cv = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.023.i.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i6.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cx = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cx, %.0.i8.i
  br i1 %exitcond.not.i.i, label %bary_2comp.exit.i, label %.lr.ph.i.i, !llvm.loop !55

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cy = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.023.i.i
  %i.cz = sub i32 0, %i.cw
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !7
  %.124.i.i = add i64 %.023.i.i, 1                ; 4 uses
  %i.da = icmp ult i64 %.124.i.i, %.0.i8.i
  br i1 %i.da, label %.lr.ph26.i.i.preheader, label %get2comp.exit

.lr.ph26.i.i.preheader:                           ; preds = %bb.s
  %i.db = xor i64 %.023.i.i, -1
  %i.dc = add i64 %.0.i8.i, %i.db                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check, label %.lr.ph26.i.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.i.preheader
  %n.vec = and i64 %i.dc, -8                      ; 3 uses
  %i.dd = add i64 %.124.i.i, %n.vec
  %i.de = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.124.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %index ; 3 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.df, align 4, !tbaa !7
  %wide.load199 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !7
  %i.dh = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.di = xor <4 x i32> %wide.load199, splat (i32 -1)
  store <4 x i32> %i.dh, ptr %i.df, align 4, !tbaa !7
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %get2comp.exit, label %.lr.ph26.i.i.preheader218

.lr.ph26.i.i.preheader218:                        ; preds = %.lr.ph26.i.i.preheader, %middle.block
  %.125.i.i.ph = phi i64 [ %.124.i.i, %.lr.ph26.i.i.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.lr.ph26.i.i.preheader218, %.lr.ph26.i.i
  %.125.i.i = phi i64 [ %.1.i.i, %.lr.ph26.i.i ], [ %.125.i.i.ph, %.lr.ph26.i.i.preheader218 ] ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.125.i.i ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = xor i32 %i.dl, -1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !7
  %.1.i.i = add nuw i64 %.125.i.i, 1              ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %.1.i.i, %.0.i8.i
  br i1 %exitcond31.not.i.i, label %get2comp.exit, label %.lr.ph26.i.i, !llvm.loop !288

bary_2comp.exit.i:                                ; preds = %bb.r, %BIGNUM_DIGITS.exit.i
  br i1 %.not.i85, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bary_2comp.exit.i
  %i.dn = getelementptr i8, ptr %i.t, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i.i

bb.u:                                             ; preds = %bary_2comp.exit.i
  %i.dp = lshr i64 %i.u, 15
  %i.dq = and i64 %i.dp, 511
  br label %BIGNUM_LEN.exit.i.i

BIGNUM_LEN.exit.i.i:                              ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi i64 [ %i.dq, %bb.u ], [ %i.do, %bb.t ]
  %i.dr = add i64 %.0.i.i.i, 1
  tail call void @rb_big_resize(i64 noundef %i.s, i64 noundef %i.dr)
  %i.ds = load i64, ptr %i.t, align 8, !tbaa !13  ; 3 uses
  %i.dt = and i64 %i.ds, 16384
  %.not.i4.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i4.i.i, label %bb.v, label %bb.w
end_hunk_0
begin_hunk_1_@bigsub_int:bb.a

bb.ad:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.gd = icmp ult i64 %i.fy, 4611686018427387905
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.neg.i.i = mul nsw i64 %i.fy, -2
  %i.ge = or disjoint i64 %.neg.i.i, 1
  br label %rb_long2num_inline.exit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.s, i64 noundef %.02232.i.i)
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.aa, %bb.af, %bb.ae, %bb.ac, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %.loopexit97.thread, %bb.d
  %.0 = phi i64 [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.n, %bb.d ], [ %i.gc, %bb.ac ], [ %i.s, %.loopexit97.thread ], [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ge, %bb.ae ], [ %i.s, %bb.af ], [ 1, %bb.aa ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigadd_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i84 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.0.i77 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %.0.i84163 = ptrtoaddr ptr %.0.i84 to i64
  %i.m = icmp eq i64 %.0.i77, 0
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.n = icmp samesign ult i64 %1, 4611686018427387904
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %1, 1
  %i.p = or disjoint i64 %i.o, 1
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.r = tail call fastcc i64 @bignew_1(i64 noundef %i.q, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = and i64 %i.t, 16384
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 4611686018427387904, ptr %i.v, align 8
  %i.w = and i64 %i.t, -16744449
  %i.x = or disjoint i64 %i.w, 65536
  store i64 %i.x, ptr %i.s, align 8, !tbaa !13
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  store i64 4611686018427387904, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  store i64 2, ptr %i.aa, align 8, !tbaa !15
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 2) ; 3 uses
  %i.ab = add nuw i64 %spec.store.select, 1       ; 4 uses
  %i.ac = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ad = trunc i64 %i.d to i32
  %i.ae = lshr i32 %i.ad, 13
  %i.af = and i32 %i.ae, 1
  %i.ag = tail call fastcc i64 @bignew_1(i64 noundef %i.ac, i64 noundef %i.ab, i32 noundef %i.af) ; 7 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 7 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, 16384
  %.not.i79 = icmp eq i64 %i.aj, 0
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit81

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ah, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit81

BIGNUM_DIGITS.exit81:                             ; preds = %bb.j, %bb.k
  %.0.i80 = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ] ; 10 uses
  %.0.i80162 = ptrtoaddr ptr %.0.i80 to i64
  %i.an = icmp sgt i64 %.0.i77, 0
  br i1 %i.an, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %bb.l, %bb.m, %BIGNUM_DIGITS.exit81
  %.070.lcssa = phi i64 [ %1, %BIGNUM_DIGITS.exit81 ], [ %i.aw, %bb.l ], [ 0, %bb.m ] ; 3 uses
  %.065.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %i.av, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %.064.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %.0.i77, %bb.m ], [ %.0.i77, %bb.l ] ; 6 uses
  %i.ao = icmp slt i64 %.064.lcssa, %i.ab
  br i1 %i.ao, label %.lr.ph110, label %.loopexit89

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit81
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %.preheader86.preheader, label %bb.l

.preheader86.preheader:                           ; preds = %bb.m, %.lr.ph.1, %.lr.ph
  %.064104.lcssa = phi i64 [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %bb.m ] ; 3 uses
  %.065103.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.av, %.lr.ph.1 ], [ %i.bf, %bb.m ]
  br label %.preheader86

bb.l:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %.0.i84, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = and i64 %1, 4294967295
  %i.at = add nuw nsw i64 %i.as, %i.ar            ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %.0.i80, align 4, !tbaa !7
  %i.av = lshr i64 %i.at, 32                      ; 3 uses
  %i.aw = lshr i64 %1, 32                         ; 3 uses
  %exitcond.not = icmp eq i64 %.0.i77, 1
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.l
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.preheader86.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph.1
  %i.ay = getelementptr i8, ptr %.0.i84, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.av, %i.aw
  %i.bc = add nuw nsw i64 %i.bb, %i.ba            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr i8, ptr %.0.i80, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %i.bf = lshr i64 %i.bc, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.0.i77, 2
  br i1 %exitcond.not.1, label %.preheader88, label %.preheader86.preheader

.lr.ph110:                                        ; preds = %.preheader88
  %i.bg = icmp eq i64 %.070.lcssa, 0
  br i1 %i.bg, label %.loopexit90, label %bb.n

bb.n:                                             ; preds = %.lr.ph110
  %i.bh = and i64 %.070.lcssa, 4294967295
  %i.bi = add nuw nsw i64 %.065.lcssa, %i.bh      ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr [4 x i8], ptr %.0.i80, i64 %.064.lcssa
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !7
  %i.bl = lshr i64 %i.bi, 32                      ; 2 uses
  %i.bm = lshr i64 %.070.lcssa, 32                ; 2 uses
  %i.bn = add nuw i64 %.064.lcssa, 1              ; 3 uses
  %exitcond124.not = icmp eq i64 %.064.lcssa, %spec.store.select
  br i1 %exitcond124.not, label %.loopexit89, label %.lr.ph110.1

.lr.ph110.1:                                      ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %.lr.ph110.1
  %i.bp = add nuw nsw i64 %i.bl, %i.bm            ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr [4 x i8], ptr %.0.i80, i64 %i.bn
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !7
  %exitcond124.not.1 = icmp eq i64 %i.bn, %spec.store.select
  br i1 %exitcond124.not.1, label %.loopexit89, label %.lr.ph110.2

.lr.ph110.2:                                      ; preds = %bb.o
  %i.bs = lshr i64 %i.bp, 32
  %i.bt = add nuw i64 %.064.lcssa, 2
  br label %.loopexit90

.preheader86:                                     ; preds = %.preheader86.preheader, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %.preheader86.preheader ] ; 3 uses
  %.267 = phi i64 [ %i.cm, %bb.p ], [ %.065103.lcssa, %.preheader86.preheader ]
  %.2 = phi i64 [ %i.cn, %bb.p ], [ %.064104.lcssa, %.preheader86.preheader ] ; 6 uses
  %i.bu = icmp eq i64 %.267, 0
  br i1 %i.bu, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %.preheader86
  %i.bv = add nuw nsw i64 %.064104.lcssa, 1
  %i.bw = add i64 %i.bv, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 %i.bw)
  %2 = add i64 %indvar, %.064104.lcssa
  %i.bx = sub i64 %smax, %2                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 8
  %i.by = sub i64 %.0.i84163, %.0.i80162
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.bx, -8                      ; 3 uses
  %i.bz = add i64 %.2, %n.vec                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add nuw i64 %.2, %index                 ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.0.i84, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !7
  %wide.load164 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !7
  %i.cd = getelementptr [4 x i8], ptr %.0.i80, i64 %i.ca ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !7
  store <4 x i32> %wide.load164, ptr %i.ce, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader167

.preheader.preheader167:                          ; preds = %.preheader.preheader, %middle.block
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.bz, %middle.block ]
  br label %.preheader

bb.p:                                             ; preds = %.preheader86
  %i.cg = getelementptr [4 x i8], ptr %.0.i84, i64 %.2
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr [4 x i8], ptr %.0.i80, i64 %.2
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !7
  %i.cm = lshr i64 %i.cj, 32                      ; 2 uses
  %i.cn = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.co = icmp slt i64 %i.cn, %.0.i77
  %indvar.next = add i64 %indvar, 1
  br i1 %i.co, label %.preheader86, label %.loopexit87

.loopexit87:                                      ; preds = %bb.p, %bb.q
  %.368 = phi i64 [ 0, %bb.q ], [ %i.cm, %bb.p ]
  %.3 = phi i64 [ %i.cs, %bb.q ], [ %i.cn, %bb.p ] ; 2 uses
  %i.cp = icmp slt i64 %.3, %i.ab
  br i1 %i.cp, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %.lr.ph110, %.lr.ph110.1, %.lr.ph110.2, %.loopexit87
  %.469 = phi i64 [ %.368, %.loopexit87 ], [ %.065.lcssa, %.lr.ph110 ], [ %i.bl, %.lr.ph110.1 ], [ %i.bs, %.lr.ph110.2 ]
  %.4 = phi i64 [ %.3, %.loopexit87 ], [ %.064.lcssa, %.lr.ph110 ], [ %i.bn, %.lr.ph110.1 ], [ %i.bt, %.lr.ph110.2 ] ; 3 uses
  %i.cq = icmp eq i64 %.469, 0
  br i1 %i.cq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit90
  %i.cr = getelementptr [4 x i8], ptr %.0.i80, i64 %.4
  store i32 1, ptr %i.cr, align 4, !tbaa !7
  %i.cs = add nsw i64 %.4, 1
  br label %.loopexit87, !llvm.loop !292

.preheader:                                       ; preds = %.preheader.preheader167, %.preheader
  %.5 = phi i64 [ %i.cw, %.preheader ], [ %.5.ph, %.preheader.preheader167 ] ; 3 uses
  %i.ct = getelementptr [4 x i8], ptr %.0.i84, i64 %.5
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !7
  %i.cv = getelementptr [4 x i8], ptr %.0.i80, i64 %.5
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !7
  %i.cw = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.cx = icmp slt i64 %i.cw, %.0.i77
  br i1 %i.cx, label %.preheader, label %.loopexit, !llvm.loop !293

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.r
  %.6 = phi i64 [ %i.da, %bb.r ], [ %i.bz, %middle.block ], [ %i.cw, %.preheader ] ; 2 uses
  %i.cy = icmp slt i64 %.6, %i.ab
  br i1 %i.cy, label %bb.r, label %.loopexit89

bb.r:                                             ; preds = %.loopexit, %.loopexit90
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit90 ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %.0.i80, i64 %.7
  store i32 0, ptr %i.cz, align 4, !tbaa !7
  %i.da = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !294

.loopexit89:                                      ; preds = %bb.n, %bb.o, %.preheader88, %.loopexit, %.loopexit87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !295
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.dc = load volatile i64, ptr %i.db, align 8, !tbaa !11 ; 0 uses
  %i.dd = icmp eq i64 %i.ag, 0
  %i.de = and i64 %i.ag, 7
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = or i1 %i.dd, %i.df
  br i1 %i.dg, label %rb_long2num_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.loopexit89
  %i.dh = load i64, ptr %i.ah, align 8, !tbaa !13 ; 4 uses
  %i.di = and i64 %i.dh, 31
  %i.dj = icmp eq i64 %i.di, 10
  br i1 %i.dj, label %bb.s, label %rb_long2num_inline.exit

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.dk = and i64 %i.dh, 16384
  %.not.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = lshr i64 %i.dh, 15
  %i.dm = and i64 %i.dl, 511
  %i.dn = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.do = getelementptr i8, ptr %i.ah, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dq = getelementptr i8, ptr %i.ah, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i28.i.i = phi i64 [ %i.dm, %bb.t ], [ %i.dp, %bb.u ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.dn, %bb.t ], [ %i.dr, %bb.u ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.v
  %indvar179 = phi i32 [ %indvar.next180, %bb.v ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.dw, %bb.v ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ds = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dw = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.dw, 0
  %indvar.next180 = add i32 %indvar179, 1
  br i1 %cond.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dx = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.dx, label %bb.aa, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.dy = trunc nuw i64 %.02232.i.i to i32        ; 3 uses
  %i.dz = trunc i64 %.0.i28.i.i to i32
  %i.ea = sub i32 %indvar179, %i.dz
  %i.eb = icmp ugt i32 %i.ea, -4
  br i1 %i.eb, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ec, %.lr.ph36.i.i ], [ %i.dy, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ec = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.ed = add i32 %.035.i.i, -3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw i64 %i.eh, 32
  %i.ej = sext i32 %i.ec to i64
  %i.ek = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !7
  %i.em = zext i32 %i.el to i64
  %i.en = or disjoint i64 %i.ei, %i.em
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.dy, %.lr.ph36.preheader.i.i ], [ %i.ec, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.en, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.eo, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.eu, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.eo = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.ep = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.eq = sext i32 %i.eo to i64
  %i.er = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  %i.et = zext i32 %i.es to i64
  %i.eu = or disjoint i64 %i.ep, %i.et            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.dy
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !296

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
end_hunk_1

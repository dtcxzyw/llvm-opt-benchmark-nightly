Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 59
begin_hunk_0_@PyLong_AsNativeBytes:bb.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1286) #16
  br label %Py_DECREF.exit134

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %3, 3
  %i.d = icmp ne i32 %i.c, 0                      ; 6 uses
  %storemerge.i = zext i1 %i.d to i32
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val138 = load i64, ptr %i.f, align 8, !tbaa !194
  %i.g = and i64 %.val138, 16777216
  %.not.not.not = icmp eq i64 %i.g, 0             ; 3 uses
  br i1 %.not.not.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not109 = icmp eq i32 %3, -1
  %i.h = and i32 %3, 16
  %.not110 = icmp eq i32 %i.h, 0
  %or.cond125 = or i1 %.not109, %.not110
  br i1 %or.cond125, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #16 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %Py_DECREF.exit134, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !171
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) #16 ; 0 uses
  br label %Py_DECREF.exit134

bb.g:                                             ; preds = %bb.e, %bb.c
  %.095 = phi ptr [ %0, %bb.c ], [ %i.i, %bb.e ]  ; 11 uses
  %.not111 = icmp ne i32 %3, -1
  %i.m = and i32 %3, 8
  %.not112 = icmp ne i32 %i.m, 0
  %or.cond126.not184 = and i1 %.not111, %.not112
  %.phi.trans.insert = getelementptr i8, ptr %.095, i64 16
  %.095.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !185 ; 4 uses
  %i.n = and i64 %.095.val.pre, 3
  %i.o = icmp eq i64 %i.n, 2
  %or.cond183 = select i1 %or.cond126.not184, i1 %i.o, i1 false
  br i1 %or.cond183, label %bb.h, label %._crit_edge172

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !171
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.15) #16
  br i1 %.not.not.not, label %bb.i, label %Py_DECREF.exit134

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %.095, align 8, !tbaa !182 ; 2 uses
  %.not.i133 = icmp sgt i32 %i.q, -1
  br i1 %.not.i133, label %bb.j, label %Py_DECREF.exit134

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %.095, align 8, !tbaa !182
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_DECREF.exit134

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.095) #16
  br label %Py_DECREF.exit134

._crit_edge172:                                   ; preds = %bb.g
  %i.t = getelementptr i8, ptr %.095, i64 16
  %i.u = icmp ugt i64 %.095.val.pre, 15
  br i1 %i.u, label %bb.z, label %bb.l

bb.l:                                             ; preds = %._crit_edge172
  %i.v = getelementptr i8, ptr %.095, i64 24
  %.095.val137 = load i32, ptr %i.v, align 8, !tbaa !26
  %i.w = and i64 %.095.val.pre, 3
  %i.x = sub nsw i64 1, %i.w
  %i.y = zext i32 %.095.val137 to i64
  %i.z = mul nsw i64 %i.x, %i.y                   ; 7 uses
  store i64 %i.z, ptr %.sroa.0, align 8, !tbaa !182
  %i.aa = icmp eq i64 %2, 0
  br i1 %i.aa, label %_fits_in_n_bits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp samesign ult i64 %2, 9
  br i1 %i.ab, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  br i1 %i.d, label %bb.o, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.n
  %i.ac = getelementptr i8, ptr %1, i64 %2        ; 8 uses
  %.sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 8, !tbaa !182
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  store i8 %.sroa.0.0..sroa.0.0., ptr %i.ad, align 1, !tbaa !182
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %.sroa.0, i64 %2, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph166
  %.sroa.0.1..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx187, align 1, !tbaa !182
  %i.ae = getelementptr i8, ptr %i.ac, i64 -2
  store i8 %.sroa.0.1..sroa.0.1., ptr %i.ae, align 1, !tbaa !182
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.2..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx188, align 2, !tbaa !182
  %i.af = getelementptr i8, ptr %i.ac, i64 -3
  store i8 %.sroa.0.2..sroa.0.2., ptr %i.af, align 1, !tbaa !182
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.3..sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.3..sroa.0.3. = load i8, ptr %.sroa.0.3..sroa_idx189, align 1, !tbaa !182
  %i.ag = getelementptr i8, ptr %i.ac, i64 -4
  store i8 %.sroa.0.3..sroa.0.3., ptr %i.ag, align 1, !tbaa !182
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.4..sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4. = load i8, ptr %.sroa.0.4..sroa_idx190, align 4, !tbaa !182
  %i.ah = getelementptr i8, ptr %i.ac, i64 -5
  store i8 %.sroa.0.4..sroa.0.4., ptr %i.ah, align 1, !tbaa !182
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0.5..sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 5
  %.sroa.0.5..sroa.0.5. = load i8, ptr %.sroa.0.5..sroa_idx191, align 1, !tbaa !182
  %i.ai = getelementptr i8, ptr %i.ac, i64 -6
  store i8 %.sroa.0.5..sroa.0.5., ptr %i.ai, align 1, !tbaa !182
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.6..sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.sroa.0.6..sroa.0.6. = load i8, ptr %.sroa.0.6..sroa_idx192, align 2, !tbaa !182
  %i.aj = getelementptr i8, ptr %i.ac, i64 -7
  store i8 %.sroa.0.6..sroa.0.6., ptr %i.aj, align 1, !tbaa !182
  %exitcond.not.6 = icmp eq i64 %2, 7
  br i1 %exitcond.not.6, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.7..sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 7
  %.sroa.0.7..sroa.0.7. = load i8, ptr %.sroa.0.7..sroa_idx193, align 1, !tbaa !182
  %i.ak = getelementptr i8, ptr %i.ac, i64 -8
  store i8 %.sroa.0.7..sroa.0.7., ptr %i.ak, align 1, !tbaa !182
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph166, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.o
  %i.al = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.am = icmp eq i64 %2, 8
  br i1 %i.am, label %_fits_in_n_bits.exit.thread, label %_fits_in_n_bits.exit

_fits_in_n_bits.exit:                             ; preds = %.loopexit
  %i.an = add nsw i64 %i.al, -1
  %i.ao = ashr i64 %i.z, %i.an
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = icmp ult i64 %i.ap, -2
  br i1 %i.aq, label %bb.w, label %_fits_in_n_bits.exit.thread

bb.w:                                             ; preds = %_fits_in_n_bits.exit
  %i.ar = icmp sgt i64 %i.z, 0
  %i.as = lshr i64 %i.z, %i.al
  %.not = icmp eq i64 %i.as, 0
  %or.cond157 = select i1 %i.ar, i1 %.not, i1 false
  br i1 %or.cond157, label %_fits_in_n_bits.exit142.thread, label %_fits_in_n_bits.exit.thread

_fits_in_n_bits.exit142.thread:                   ; preds = %bb.w
  %i.at = and i32 %3, 4
  %.not123 = icmp eq i32 %i.at, 0
  %i.au = zext i1 %.not123 to i64
  %spec.select131 = add nuw nsw i64 %2, %i.au
  br label %_fits_in_n_bits.exit.thread

bb.x:                                             ; preds = %bb.m
  %.lobit = ashr i64 %i.z, 63
  %i.av = trunc nsw i64 %.lobit to i8             ; 2 uses
  br i1 %i.d, label %bb.y, label %.preheader159

bb.y:                                             ; preds = %bb.x
  store i64 %i.z, ptr %1, align 1
  %i.aw = getelementptr i8, ptr %1, i64 8
  %i.ax = add nsw i64 %2, -8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 %i.av, i64 %i.ax, i1 false)
  br label %_fits_in_n_bits.exit.thread

.preheader159:                                    ; preds = %bb.x
  %i.ay = add nsw i64 %2, -8                      ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.av, i64 %i.ay, i1 false), !tbaa !182
  %scevgep = getelementptr i8, ptr %1, i64 %i.ay
  %4 = tail call i64 @llvm.bswap.i64(i64 %i.z)
  store i64 %4, ptr %scevgep, align 1, !tbaa !182
  br label %_fits_in_n_bits.exit.thread

bb.z:                                             ; preds = %._crit_edge172
  %.not156 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not156, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call i32 @_PyLong_AsByteArray(ptr noundef nonnull %.095, ptr noundef %1, i64 noundef %2, i32 noundef %storemerge.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.val.i.pre = load i64, ptr %i.t, align 8, !tbaa !185
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val.i = phi i64 [ %.val.i.pre, %bb.aa ], [ %.095.val.pre, %bb.z ] ; 2 uses
  %i.ba = lshr i64 %.val.i, 3                     ; 2 uses
  %.not.i143 = icmp eq i64 %i.ba, 0
  br i1 %.not.i143, label %_PyLong_NumBits.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr i8, ptr %.095, i64 24
  %i.bc = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !26
  %i.bf = mul i64 %i.bc, 30
  %i.bg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 false)
  %i.bh = sub nuw nsw i32 32, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = add i64 %i.bf, %i.bi
  br label %_PyLong_NumBits.exit

_PyLong_NumBits.exit:                             ; preds = %bb.ab, %bb.ac
  %.0.i144 = phi i64 [ %i.bj, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.bk = sdiv i64 %.0.i144, 8                    ; 2 uses
  %i.bl = add nsw i64 %i.bk, 1                    ; 4 uses
  br i1 %.not156, label %_fits_in_n_bits.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_PyLong_NumBits.exit
  %i.bm = icmp eq i64 %i.bk, %2
  %i.bn = and i64 %.0.i144, 7
  %i.bo = icmp eq i64 %i.bn, 0
  %or.cond129 = and i1 %i.bm, %i.bo
  br i1 %or.cond129, label %bb.ae, label %_fits_in_n_bits.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.bp = and i64 %.val.i, 3
  %i.bq = icmp eq i64 %i.bp, 2
  %i.br = add nsw i64 %2, -1                      ; 2 uses
  br i1 %i.bq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bs = select i1 %i.d, i32 128, i32 0
  %i.bt = select i1 %i.d, i32 0, i32 128
  %i.bu = load i8, ptr %1, align 1, !tbaa !182
  %i.bv = zext i8 %i.bu to i32
  %i.bw = icmp eq i32 %i.bt, %i.bv                ; 2 uses
  %i.bx = icmp ne i64 %2, 1
  %i.by = select i1 %i.bx, i1 %i.bw, i1 false
  br i1 %i.by, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.af
  %.1.in.lcssa = phi i1 [ %i.bw, %bb.af ], [ %.1.in, %.peel.next ]
  %spec.select = select i1 %.1.in.lcssa, i64 %2, i64 %i.bl
  br label %_fits_in_n_bits.exit.thread

.peel.next:                                       ; preds = %bb.af, %.peel.next
  %.0168 = phi i64 [ %i.ce, %.peel.next ], [ 1, %bb.af ] ; 2 uses
  %.pn = phi ptr [ %.085167, %.peel.next ], [ %1, %bb.af ]
  %.085167 = getelementptr i8, ptr %.pn, i64 1    ; 2 uses
  %i.bz = icmp slt i64 %.0168, %i.br
  %i.ca = load i8, ptr %.085167, align 1, !tbaa !182 ; 2 uses
  %i.cb = zext i8 %i.ca to i32
  %i.cc = icmp eq i32 %i.bs, %i.cb
  %i.cd = icmp eq i8 %i.ca, 0
  %.1.in = select i1 %i.bz, i1 %i.cd, i1 %i.cc    ; 2 uses
  %i.ce = add nuw nsw i64 %.0168, 1               ; 2 uses
  %i.cf = icmp slt i64 %i.ce, %2
  %i.cg = select i1 %i.cf, i1 %.1.in, i1 false
  br i1 %i.cg, label %.peel.next, label %._crit_edge, !llvm.loop !350

bb.ag:                                            ; preds = %bb.ae
  %i.ch = select i1 %i.d, i64 %i.br, i64 0
  %i.ci = getelementptr i8, ptr %1, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !182
  %.not115 = icmp sgt i8 %i.cj, -1
  br i1 %.not115, label %_fits_in_n_bits.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = and i32 %3, 4
  %.not116 = icmp eq i32 %i.ck, 0
  %i.cl = zext i1 %.not116 to i64
  %spec.select132 = add nuw nsw i64 %2, %i.cl
  br label %_fits_in_n_bits.exit.thread

_fits_in_n_bits.exit.thread:                      ; preds = %.preheader159, %.loopexit, %bb.ah, %_fits_in_n_bits.exit142.thread, %_PyLong_NumBits.exit, %bb.ad, %._crit_edge, %bb.ag, %bb.y, %_fits_in_n_bits.exit, %bb.l, %bb.w
  %.3 = phi i64 [ 8, %bb.l ], [ 8, %bb.y ], [ %2, %_fits_in_n_bits.exit ], [ %spec.select131, %_fits_in_n_bits.exit142.thread ], [ 8, %.loopexit ], [ 8, %bb.w ], [ %spec.select132, %bb.ah ], [ %i.bl, %bb.ag ], [ %spec.select, %._crit_edge ], [ %i.bl, %bb.ad ], [ %i.bl, %_PyLong_NumBits.exit ], [ 8, %.preheader159 ] ; 4 uses
  br i1 %.not.not.not, label %bb.ai, label %Py_DECREF.exit134

bb.ai:                                            ; preds = %_fits_in_n_bits.exit.thread
  %i.cm = load i32, ptr %.095, align 8, !tbaa !182 ; 2 uses
  %.not.i = icmp sgt i32 %i.cm, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit134

bb.aj:                                            ; preds = %bb.ai
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  store i32 %i.cn, ptr %.095, align 8, !tbaa !182
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ak, label %Py_DECREF.exit134

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.095) #16
  br label %Py_DECREF.exit134

Py_DECREF.exit134:                                ; preds = %bb.f, %bb.e, %bb.h, %_fits_in_n_bits.exit.thread, %bb.i, %bb.j, %bb.k, %bb.ai, %bb.aj, %bb.ak, %bb.b
  %.197 = phi i64 [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.h ], [ %.3, %_fits_in_n_bits.exit.thread ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.j ], [ %.3, %bb.ai ], [ %.3, %bb.aj ], [ %.3, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i64 %.197
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !353 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1463) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 3
  %i.b = icmp ne i32 %i.a, 0
  %storemerge.i = zext i1 %i.b to i32
  %i.c = icmp eq i32 %2, -1
  %i.d = lshr i32 %2, 2
  %.lobit = and i32 %i.d, 1
  %i.e = xor i32 %.lobit, 1
  %i.f = select i1 %i.c, i32 1, i32 %i.e
  %i.g = tail call ptr @_PyLong_FromByteArray(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %storemerge.i, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUnsignedNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !354 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1485) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 3
  %i.b = icmp ne i32 %i.a, 0
  %storemerge.i = zext i1 %i.b to i32
  %i.c = tail call ptr @_PyLong_FromByteArray(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %storemerge.i, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromVoidPtr(ptr noundef %0) local_unnamed_addr #0 !guid !355 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_AsVoidPtr(ptr noundef %0) local_unnamed_addr #0 !guid !356 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val8 = load i64, ptr %i.c, align 8, !tbaa !194
  %i.d = and i64 %.val8, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.e, align 8, !tbaa !185
  %i.f = and i64 %.val9, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !26
end_hunk_0
begin_hunk_1_@long_new_impl:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr [4 x i8], ptr %i.q, i64 %.0.i51.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !26
  %i.aa = getelementptr [4 x i8], ptr %i.r, i64 %.0.i51.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !26
  %i.ab = add nuw nsw i64 %.0.i51.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !668

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i51.unr = phi i64 [ %.0.i51.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.0.i51.ph, %spec.store.select.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i51 = phi i64 [ %i.at, %scalar.ph ], [ %.0.i51.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [4 x i8], ptr %i.q, i64 %.0.i51
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %.0.i51
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !26
  %i.ah = add nuw nsw i64 %.0.i51, 1              ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.q, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !26
  %i.ak = getelementptr [4 x i8], ptr %i.r, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !26
  %i.al = add nuw nsw i64 %.0.i51, 2              ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.q, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = getelementptr [4 x i8], ptr %i.r, i64 %i.al
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !26
  %i.ap = add nuw nsw i64 %.0.i51, 3              ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.as = getelementptr [4 x i8], ptr %i.r, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !26
  %i.at = add nuw nsw i64 %.0.i51, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.e, %i.at
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !669

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = load i32, ptr %i.a, align 8, !tbaa !182 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i, label %bb.h, label %long_subtype_new.exit

bb.h:                                             ; preds = %.loopexit
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.a, align 8, !tbaa !182
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %long_subtype_new.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !666
  br label %long_subtype_new.exit

bb.j:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %1, null
  %.not37 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not37, label %long_subtype_new.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !171
  tail call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.96) #16
  br label %long_subtype_new.exit

bb.m:                                             ; preds = %bb.j
  br i1 %.not37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = tail call ptr @PyNumber_Long(ptr noundef nonnull %1) #16
  br label %long_subtype_new.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #16 ; 6 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call ptr @PyErr_Occurred() #16
  %.not32 = icmp eq ptr %i.bc, null
  br i1 %.not32, label %bb.q, label %long_subtype_new.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = icmp ne i64 %i.ba, 0
  %i.be = icmp slt i64 %i.ba, 2
  %or.cond = and i1 %i.bd, %i.be
  %i.bf = icmp sgt i64 %i.ba, 36
  %or.cond3 = or i1 %i.bf, %or.cond
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !171
  tail call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.97) #16
  br label %long_subtype_new.exit

bb.s:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val39 = load ptr, ptr %i.bh, align 8, !tbaa !181 ; 3 uses
  %i.bi = getelementptr i8, ptr %.val39, i64 168
  %.val41 = load i64, ptr %i.bi, align 8, !tbaa !194
  %i.bj = and i64 %.val41, 268435456
  %.not33 = icmp eq i64 %i.bj, 0
  br i1 %.not33, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = trunc nuw nsw i64 %i.ba to i32
  %i.bl = tail call ptr @PyLong_FromUnicodeObject(ptr noundef nonnull %1, i32 noundef %i.bk)
  br label %long_subtype_new.exit

bb.u:                                             ; preds = %bb.s
  %.not.i = icmp eq ptr %.val39, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit46.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.u
  %i.bm = tail call i32 @PyType_IsSubtype(ptr noundef %.val39, ptr noundef nonnull @PyByteArray_Type) #16
  %.not49 = icmp eq i32 %i.bm, 0
  %.val42.pre = load ptr, ptr %i.bh, align 8, !tbaa !181 ; 3 uses
  br i1 %.not49, label %bb.v, label %PyObject_TypeCheck.exit.thread

bb.v:                                             ; preds = %PyObject_TypeCheck.exit
  %i.bn = getelementptr i8, ptr %.val42.pre, i64 168
  %.val40 = load i64, ptr %i.bn, align 8, !tbaa !194
  %i.bo = and i64 %.val40, 134217728
  %.not35 = icmp eq i64 %i.bo, 0
  br i1 %.not35, label %bb.y, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.v, %PyObject_TypeCheck.exit
  %.not.i45 = icmp eq ptr %.val42.pre, @PyByteArray_Type
  br i1 %.not.i45, label %PyObject_TypeCheck.exit46.thread, label %PyObject_TypeCheck.exit46

PyObject_TypeCheck.exit46:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.bp = tail call i32 @PyType_IsSubtype(ptr noundef %.val42.pre, ptr noundef nonnull @PyByteArray_Type) #16
  %.not50 = icmp eq i32 %i.bp, 0
  br i1 %.not50, label %bb.w, label %PyObject_TypeCheck.exit46.thread

PyObject_TypeCheck.exit46.thread:                 ; preds = %bb.u, %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit46
  %i.bq = getelementptr i8, ptr %1, i64 40
  %.val44 = load ptr, ptr %i.bq, align 8, !tbaa !673
  br label %bb.x

bb.w:                                             ; preds = %PyObject_TypeCheck.exit46
  %i.br = getelementptr i8, ptr %1, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %PyObject_TypeCheck.exit46.thread
  %.0 = phi ptr [ %.val44, %PyObject_TypeCheck.exit46.thread ], [ %i.br, %bb.w ]
  %i.bs = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.bs, align 8, !tbaa !302
  %i.bt = trunc nuw nsw i64 %i.ba to i32
  %i.bu = tail call ptr @_PyLong_FromBytes(ptr noundef %.0, i64 noundef %.val, i32 noundef %i.bt)
  br label %long_subtype_new.exit

bb.y:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !171
  tail call void @PyErr_SetString(ptr noundef %i.bv, ptr noundef nonnull @.str.98) #16
  br label %long_subtype_new.exit

long_subtype_new.exit:                            ; preds = %bb.k, %bb.b, %bb.f, %bb.e, %bb.d, %bb.i, %bb.h, %.loopexit, %bb.p, %bb.y, %bb.x, %bb.t, %bb.r, %bb.n, %bb.l
  %.027 = phi ptr [ null, %bb.p ], [ null, %bb.l ], [ %i.h, %.loopexit ], [ %i.az, %bb.n ], [ null, %bb.y ], [ null, %bb.r ], [ %i.bl, %bb.t ], [ %i.bu, %bb.x ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.e ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.k ]
  ret ptr %.027
}

declare ptr @PyNumber_Long(ptr noundef) local_unnamed_addr #3

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyThreadState_Get() local_unnamed_addr #3

declare ptr @_PyObject_MakeTpCall(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyStructSequence_InitBuiltinWithFlags(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.ctpop.v2i32(<2 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{null}
!1 = distinct !{!1, !186}
!2 = distinct !{!2, !186}
!3 = distinct !{ptr @_Py_DECREF_INT, null}
!4 = distinct !{!4, !186}
!5 = distinct !{!5, !186}
!6 = distinct !{!6, !186}
!7 = distinct !{null}
!8 = distinct !{null, ptr @_PyLong_Copy}
!9 = distinct !{null}
!10 = distinct !{!10, !186}
!11 = distinct !{!11, !186}
!12 = distinct !{!12, !186}
!13 = distinct !{null}
!14 = distinct !{!14, !186}
!15 = distinct !{!15, !186}
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!22 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{i64 5945226307278063013}
!28 = !{i64 -9021160377573355585}
!29 = !{i64 7835780532032647698}
!30 = !{i64 2361060135004935963}
!31 = !{i64 6653692650734889298}
!32 = !{i64 637291856546318010}
!33 = !{i64 -8355431404161688659}
!34 = !{i64 -1495165956421415732}
!35 = !{i64 -8471781037504161096}
!36 = !{i64 -4853218591087487657}
!37 = !{i64 -7646497600373821888}
!38 = !{i64 1200878384255587402}
!39 = !{i64 -8649215928497068583}
!40 = !{i64 5398560868304882980}
!41 = !{i64 8521973658579178775}
!42 = !{i64 -6215038946771271412}
!43 = !{i64 679671889819879964}
!44 = !{i64 -1546187134187570274}
!45 = !{i64 -3461229465872799076}
!46 = !{i64 -4675958645539197100}
!47 = !{i64 6169788799059027725}
!48 = !{i64 -8677180453043690373}
!49 = !{i64 -7582061424617303641}
!50 = !{i64 -4921106297112782907}
!51 = !{i64 6803666785712486390}
!52 = !{i64 -2012121708737564353}
!53 = !{i64 -4791887332128845469}
!54 = !{i64 3863979495887774533}
!55 = !{i64 -2370869188966521585}
!56 = !{i64 -5117226296178406887}
!57 = !{i64 2622918501803127484}
!58 = !{i64 -2957291346208474386}
!59 = !{i64 829875352255608330}
!60 = !{i64 -3334283533053899591}
!61 = !{i64 9078399847858637064}
!62 = !{i64 5574122916914452194}
!63 = !{i64 4126170384143681937}
!64 = !{i64 -8817691520097725087}
!65 = !{i64 -8412614041978732400}
!66 = !{i64 -8068424264776846910}
!67 = !{i64 4306474717161793686}
!68 = !{i64 -5655667463597529810}
!69 = !{i64 4695365792618024016}
!70 = !{i64 -5707083176696718484}
!71 = !{i64 -5019461769224008666}
!72 = !{i64 -5281070155195192515}
!73 = !{i64 -6804338395208323661}
!74 = !{i64 -7093480760960436284}
!75 = !{i64 4609268526239224261}
!76 = !{i64 -4241202477931148455}
!77 = !{i64 -4240372253095047474}
!78 = !{i64 4427994117994109021}
!79 = !{i64 706620221428381512}
!80 = !{i64 -1207053837783121927}
!81 = !{i64 840576090575307830}
!82 = !{i64 873932028336859095}
!83 = !{i64 -5808634570235429637}
!84 = !{i64 -8396901435457296772}
!85 = !{i64 -428309734728530653}
!86 = !{i64 -315099450226081038}
!87 = !{i64 -9066653407419353180}
!88 = !{i64 -5378890360643170701}
!89 = !{i64 8964133741570991344}
!90 = !{i64 -2881734731054241079}
!91 = !{i64 6244556523404692665}
!92 = !{i64 -8057348959876111985}
!93 = !{i64 1805858477122407685}
!94 = !{i64 2189938328124386655}
!95 = !{i64 -4433036269851681000}
!96 = !{i64 -1154022278901522594}
!97 = !{i64 -5557163489710887740}
!98 = !{i64 -4295054008361540330}
!99 = !{i64 -665325195422428102}
!100 = !{i64 9096429530919716563}
!101 = !{i64 3077650310676749556}
!102 = !{i64 -8534974980686182685}
!103 = !{i64 -2838739896533999892}
!104 = !{i64 406444935697816372}
!105 = !{i64 5084432705332223984}
!106 = !{i64 -3314939085279065557}
!107 = !{i64 4257122033313388569}
!108 = !{i64 -6890028644251213935}
!109 = !{i64 6106115472000828313}
!110 = !{i64 7236342783436315262}
!111 = !{i64 -875973919940946561}
!112 = !{i64 7457618483294240913}
!113 = !{i64 -5486802001900808369}
!114 = !{i64 317479440282182180}
!115 = !{i64 -8382238184999421316}
!116 = !{i64 -731954043220645251}
!117 = !{i64 4493209974835936461}
!118 = !{i64 -1252118227999461892}
!119 = !{i64 1329406863306298691}
!120 = !{i64 6829074150402897147}
!121 = !{i64 -7291189130448970468}
!122 = !{i64 -5870072494044050303}
!123 = !{i64 -4360363283239769895}
!124 = !{i64 -7068825392679464408}
!125 = !{i64 4963863186974738714}
!126 = !{i64 -6449729238751521615}
!127 = !{i64 -6390706111400399439}
!128 = !{i64 1678993573044078062}
!129 = !{i64 4807391594447327555}
!130 = !{i64 -7459819185433806547}
!131 = !{i64 1612434928020429482}
!132 = !{i64 -3718637386045204354}
!133 = !{i64 -8778301298549362757}
!134 = !{i64 654081408799999696}
!135 = !{i64 -1809565773022167025}
!136 = !{i64 1734464820416972297}
!137 = !{i64 -1984183520771754302}
!138 = !{i64 -8618765827860590535}
!139 = !{i64 6811906711829479482}
!140 = !{i64 -3530579693127265913}
!141 = !{i64 2000133986732486018}
!142 = !{i64 2102121836786599731}
!143 = !{i64 2356992173687480963}
!144 = !{i64 5160458033751897610}
!145 = !{i64 5304304512914574554}
!146 = !{i64 -3684195671036241170}
!147 = !{i64 -4484147189807949912}
!148 = !{i64 -6506105007166133019}
!149 = !{i64 -5840020760479150496}
!150 = !{i64 2374371045036092152}
!151 = !{i64 -743712873556762234}
!152 = !{i64 -6096906092941156134}
!153 = !{i64 -6013348666862723028}
!154 = !{i64 6157339168860144155}
!155 = !{i64 -5206414093426104393}
!156 = !{i64 -846098346786695968}
!157 = !{i64 6621270595729729034}
!158 = !{i64 779180402130007403}
!159 = !{i64 -4035991336529746694}
!160 = !{i64 3159098139537995622}
!161 = !{i64 4665339635283996612}
!162 = !{i64 -5562102445995460690}
end_hunk_1

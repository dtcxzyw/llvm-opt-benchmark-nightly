Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/longobject?download=true
inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_PyLong_AsByteArray:bb.a

bb.k:                                             ; preds = %._crit_edge139
  %.not103 = icmp ult i64 %.081.lcssa, %2
  br i1 %.not103, label %bb.l, label %.loopexit109

bb.l:                                             ; preds = %bb.k
  %i.bj = add nuw i64 %.081.lcssa, 1
  %i.bk = zext nneg i32 %.088.lcssa to i64
  %i.bl = shl nsw i64 -1, %i.bk
  %i.bm = select i1 %i.d, i64 %i.bl, i64 0
  %.294 = or i64 %i.bm, %.092.lcssa
  %i.bn = trunc i64 %.294 to i8
  store i8 %i.bn, ptr %.180.lcssa, align 1, !tbaa !40
  %i.bo = getelementptr i8, ptr %.180.lcssa, i64 %.078188
  br label %bb.p

._crit_edge139.thread:                            ; preds = %.thread, %bb.d, %._crit_edge139
  %.180.lcssa210 = phi ptr [ %.180.lcssa, %._crit_edge139 ], [ %.079178, %.thread ], [ %.079, %bb.d ] ; 2 uses
  %.081.lcssa209 = phi i64 [ %.081.lcssa, %._crit_edge139 ], [ 0, %.thread ], [ 0, %bb.d ] ; 2 uses
  %.087183208 = phi i32 [ %.087183, %._crit_edge139 ], [ 0, %.thread ], [ 1, %bb.d ]
  %.078.neg186207 = phi i64 [ %.078.neg186, %._crit_edge139 ], [ %.078.neg179, %.thread ], [ %.078.neg, %bb.d ]
  %.078188206 = phi i64 [ %.078188, %._crit_edge139 ], [ %.078180, %.thread ], [ %.078, %bb.d ]
  %i.bp = icmp eq i64 %.081.lcssa209, %2
  %i.bq = icmp ne i32 %4, 0
  %or.cond = and i1 %i.bq, %i.bp
  br i1 %or.cond, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge139.thread
  %.not101 = icmp eq i64 %2, 0
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr i8, ptr %.180.lcssa210, i64 %.078.neg186207
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40
  %.lobit = lshr i8 %i.bs, 7
  %i.bt = zext nneg i8 %.lobit to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.073 = phi i32 [ %i.bt, %bb.n ], [ 0, %bb.m ]
  %.not102 = icmp eq i32 %.073, %.087183208
  br i1 %.not102, label %.loopexit, label %.loopexit109

bb.p:                                             ; preds = %._crit_edge139.thread, %bb.l
  %.078188205 = phi i64 [ %.078188, %bb.l ], [ %.078188206, %._crit_edge139.thread ] ; 9 uses
  %.283 = phi i64 [ %i.bj, %bb.l ], [ %.081.lcssa209, %._crit_edge139.thread ] ; 5 uses
  %.3 = phi ptr [ %i.bo, %bb.l ], [ %.180.lcssa210, %._crit_edge139.thread ] ; 2 uses
  %i.bu = sext i1 %i.d to i8                      ; 9 uses
  %i.bv = icmp ult i64 %.283, %2
  br i1 %i.bv, label %.lr.ph150.preheader, label %.loopexit

.lr.ph150.preheader:                              ; preds = %bb.p
  %i.bw = sub nuw i64 %2, %.283
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph150.prol.loopexit, label %.lr.ph150.prol

.lr.ph150.prol:                                   ; preds = %.lr.ph150.preheader, %.lr.ph150.prol
  %.4148.prol = phi ptr [ %i.by, %.lr.ph150.prol ], [ %.3, %.lr.ph150.preheader ] ; 2 uses
  %.384147.prol = phi i64 [ %i.bx, %.lr.ph150.prol ], [ %.283, %.lr.ph150.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph150.prol ], [ 0, %.lr.ph150.preheader ]
  store i8 %i.bu, ptr %.4148.prol, align 1, !tbaa !40
  %i.bx = add nuw i64 %.384147.prol, 1            ; 2 uses
  %i.by = getelementptr i8, ptr %.4148.prol, i64 %.078188205 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph150.prol.loopexit, label %.lr.ph150.prol, !llvm.loop !178

.lr.ph150.prol.loopexit:                          ; preds = %.lr.ph150.prol, %.lr.ph150.preheader
  %.4148.unr = phi ptr [ %.3, %.lr.ph150.preheader ], [ %i.by, %.lr.ph150.prol ]
  %.384147.unr = phi i64 [ %.283, %.lr.ph150.preheader ], [ %i.bx, %.lr.ph150.prol ]
  %i.bz = sub i64 %.283, %2
  %i.ca = icmp ugt i64 %i.bz, -8
  br i1 %i.ca, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150
  %.4148 = phi ptr [ %i.cj, %.lr.ph150 ], [ %.4148.unr, %.lr.ph150.prol.loopexit ] ; 2 uses
  %.384147 = phi i64 [ %i.ci, %.lr.ph150 ], [ %.384147.unr, %.lr.ph150.prol.loopexit ]
  store i8 %i.bu, ptr %.4148, align 1, !tbaa !40
  %i.cb = getelementptr i8, ptr %.4148, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.cb, align 1, !tbaa !40
  %i.cc = getelementptr i8, ptr %i.cb, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.cc, align 1, !tbaa !40
  %i.cd = getelementptr i8, ptr %i.cc, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.cd, align 1, !tbaa !40
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.ce, align 1, !tbaa !40
  %i.cf = getelementptr i8, ptr %i.ce, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.cf, align 1, !tbaa !40
  %i.cg = getelementptr i8, ptr %i.cf, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.cg, align 1, !tbaa !40
  %i.ch = getelementptr i8, ptr %i.cg, i64 %.078188205 ; 2 uses
  store i8 %i.bu, ptr %i.ch, align 1, !tbaa !40
  %i.ci = add nuw i64 %.384147, 8                 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 %.078188205
  %exitcond170.not.7 = icmp eq i64 %i.ci, %2
  br i1 %exitcond170.not.7, label %.loopexit, label %.lr.ph150, !llvm.loop !179

.loopexit109:                                     ; preds = %.lr.ph126, %.lr.ph126.us, %bb.k, %bb.o
  %.not106 = icmp eq i32 %5, 0
  br i1 %.not106, label %.loopexit, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit109, %bb.c
  %.str.14.sink = phi ptr [ @.str.13, %bb.c ], [ @.str.14, %.loopexit109 ]
  %i.ck = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ck, ptr noundef nonnull %.str.14.sink) #16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph150.prol.loopexit, %.lr.ph150, %.loopexit.sink.split, %bb.p, %.loopexit109, %bb.c, %bb.o
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %.loopexit109 ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %.loopexit.sink.split ], [ 0, %.lr.ph150 ], [ 0, %.lr.ph150.prol.loopexit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1152921504606846975, 1152921504606846977) i64 @PyLong_AsNativeBytes(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1286) #16
  br label %Py_DECREF.exit134

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %3, 3
  %i.d = icmp ne i32 %i.c, 0                      ; 6 uses
  %storemerge.i = zext i1 %i.d to i32
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr i8, ptr %.val, i64 168
  %.val138 = load i64, ptr %i.f, align 8, !tbaa !52
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
  %i.k = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.k, ptr noundef nonnull @.str.12, ptr noundef nonnull %0) #16 ; 0 uses
  br label %Py_DECREF.exit134

bb.g:                                             ; preds = %bb.e, %bb.c
  %.095 = phi ptr [ %0, %bb.c ], [ %i.i, %bb.e ]  ; 11 uses
  %.not111 = icmp ne i32 %3, -1
  %i.m = and i32 %3, 8
  %.not112 = icmp ne i32 %i.m, 0
  %or.cond126.not184 = and i1 %.not111, %.not112
  %.phi.trans.insert = getelementptr i8, ptr %.095, i64 16
  %.095.val.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !43 ; 4 uses
  %i.n = and i64 %.095.val.pre, 3
  %i.o = icmp eq i64 %i.n, 2
  %or.cond183 = select i1 %or.cond126.not184, i1 %i.o, i1 false
  br i1 %or.cond183, label %bb.h, label %._crit_edge172

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.15) #16
  br i1 %.not.not.not, label %bb.i, label %Py_DECREF.exit134

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %.095, align 8, !tbaa !40  ; 2 uses
  %.not.i133 = icmp sgt i32 %i.q, -1
  br i1 %.not.i133, label %bb.j, label %Py_DECREF.exit134

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %.095, align 8, !tbaa !40
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
  store i64 %i.z, ptr %.sroa.0, align 8, !tbaa !40
  %i.aa = icmp eq i64 %2, 0
  br i1 %i.aa, label %_fits_in_n_bits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp samesign ult i64 %2, 9
  br i1 %i.ab, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  br i1 %i.d, label %bb.o, label %.lr.ph166

.lr.ph166:                                        ; preds = %bb.n
  %i.ac = getelementptr i8, ptr %1, i64 %2        ; 8 uses
  %.sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 8, !tbaa !40
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  store i8 %.sroa.0.0..sroa.0.0., ptr %i.ad, align 1, !tbaa !40
  %exitcond.not = icmp eq i64 %2, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 8 %.sroa.0, i64 %2, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %.lr.ph166
  %.sroa.0.1..sroa_idx187 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx187, align 1, !tbaa !40
  %i.ae = getelementptr i8, ptr %i.ac, i64 -2
  store i8 %.sroa.0.1..sroa.0.1., ptr %i.ae, align 1, !tbaa !40
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.0.2..sroa_idx188 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx188, align 2, !tbaa !40
  %i.af = getelementptr i8, ptr %i.ac, i64 -3
  store i8 %.sroa.0.2..sroa.0.2., ptr %i.af, align 1, !tbaa !40
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.3..sroa_idx189 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.3..sroa.0.3. = load i8, ptr %.sroa.0.3..sroa_idx189, align 1, !tbaa !40
  %i.ag = getelementptr i8, ptr %i.ac, i64 -4
  store i8 %.sroa.0.3..sroa.0.3., ptr %i.ag, align 1, !tbaa !40
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.4..sroa_idx190 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.4..sroa.0.4. = load i8, ptr %.sroa.0.4..sroa_idx190, align 4, !tbaa !40
  %i.ah = getelementptr i8, ptr %i.ac, i64 -5
  store i8 %.sroa.0.4..sroa.0.4., ptr %i.ah, align 1, !tbaa !40
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.0.5..sroa_idx191 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 5
  %.sroa.0.5..sroa.0.5. = load i8, ptr %.sroa.0.5..sroa_idx191, align 1, !tbaa !40
  %i.ai = getelementptr i8, ptr %i.ac, i64 -6
  store i8 %.sroa.0.5..sroa.0.5., ptr %i.ai, align 1, !tbaa !40
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.6..sroa_idx192 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 6
  %.sroa.0.6..sroa.0.6. = load i8, ptr %.sroa.0.6..sroa_idx192, align 2, !tbaa !40
  %i.aj = getelementptr i8, ptr %i.ac, i64 -7
  store i8 %.sroa.0.6..sroa.0.6., ptr %i.aj, align 1, !tbaa !40
  %exitcond.not.6 = icmp eq i64 %2, 7
  br i1 %exitcond.not.6, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.0.7..sroa_idx193 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 7
  %.sroa.0.7..sroa.0.7. = load i8, ptr %.sroa.0.7..sroa_idx193, align 1, !tbaa !40
  %i.ak = getelementptr i8, ptr %i.ac, i64 -8
  store i8 %.sroa.0.7..sroa.0.7., ptr %i.ak, align 1, !tbaa !40
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
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.av, i64 %i.ay, i1 false), !tbaa !40
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  %4 = bitcast i64 %i.z to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.az, align 1, !tbaa !40
  br label %_fits_in_n_bits.exit.thread

bb.z:                                             ; preds = %._crit_edge172
  %.not156 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not156, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = tail call i32 @_PyLong_AsByteArray(ptr noundef nonnull %.095, ptr noundef %1, i64 noundef %2, i32 noundef %storemerge.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.val.i.pre = load i64, ptr %i.t, align 8, !tbaa !43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.val.i = phi i64 [ %.val.i.pre, %bb.aa ], [ %.095.val.pre, %bb.z ] ; 2 uses
  %i.bb = lshr i64 %.val.i, 3                     ; 2 uses
  %.not.i143 = icmp eq i64 %i.bb, 0
  br i1 %.not.i143, label %_PyLong_NumBits.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = getelementptr i8, ptr %.095, i64 24
  %i.bd = add nsw i64 %i.bb, -1                   ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = mul i64 %i.bd, 30
  %i.bh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bf, i1 false)
  %i.bi = sub nuw nsw i32 32, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = add i64 %i.bg, %i.bj
  br label %_PyLong_NumBits.exit

_PyLong_NumBits.exit:                             ; preds = %bb.ab, %bb.ac
  %.0.i144 = phi i64 [ %i.bk, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.bl = sdiv i64 %.0.i144, 8                    ; 2 uses
  %i.bm = add nsw i64 %i.bl, 1                    ; 4 uses
  br i1 %.not156, label %_fits_in_n_bits.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_PyLong_NumBits.exit
  %i.bn = icmp eq i64 %i.bl, %2
  %i.bo = and i64 %.0.i144, 7
  %i.bp = icmp eq i64 %i.bo, 0
  %or.cond129 = and i1 %i.bn, %i.bp
  br i1 %or.cond129, label %bb.ae, label %_fits_in_n_bits.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.bq = and i64 %.val.i, 3
  %i.br = icmp eq i64 %i.bq, 2
  %i.bs = add nsw i64 %2, -1                      ; 2 uses
  br i1 %i.br, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = select i1 %i.d, i32 128, i32 0
  %i.bu = select i1 %i.d, i32 0, i32 128
  %i.bv = load i8, ptr %1, align 1, !tbaa !40
  %i.bw = zext i8 %i.bv to i32
  %i.bx = icmp eq i32 %i.bu, %i.bw                ; 2 uses
  %i.by = icmp ne i64 %2, 1
  %i.bz = select i1 %i.by, i1 %i.bx, i1 false
  br i1 %i.bz, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.af
  %.1.in.lcssa = phi i1 [ %i.bx, %bb.af ], [ %.1.in, %.peel.next ]
  %spec.select = select i1 %.1.in.lcssa, i64 %2, i64 %i.bm
  br label %_fits_in_n_bits.exit.thread

.peel.next:                                       ; preds = %bb.af, %.peel.next
  %.0168 = phi i64 [ %i.cf, %.peel.next ], [ 1, %bb.af ] ; 2 uses
  %.pn = phi ptr [ %.085167, %.peel.next ], [ %1, %bb.af ]
  %.085167 = getelementptr i8, ptr %.pn, i64 1    ; 2 uses
  %i.ca = icmp slt i64 %.0168, %i.bs
  %i.cb = load i8, ptr %.085167, align 1, !tbaa !40 ; 2 uses
  %i.cc = zext i8 %i.cb to i32
  %i.cd = icmp eq i32 %i.bt, %i.cc
  %i.ce = icmp eq i8 %i.cb, 0
  %.1.in = select i1 %i.ca, i1 %i.ce, i1 %i.cd    ; 2 uses
  %i.cf = add nuw nsw i64 %.0168, 1               ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %2
  %i.ch = select i1 %i.cg, i1 %.1.in, i1 false
  br i1 %i.ch, label %.peel.next, label %._crit_edge, !llvm.loop !180

bb.ag:                                            ; preds = %bb.ae
  %i.ci = select i1 %i.d, i64 %i.bs, i64 0
  %i.cj = getelementptr i8, ptr %1, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !40
  %.not115 = icmp sgt i8 %i.ck, -1
  br i1 %.not115, label %_fits_in_n_bits.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = and i32 %3, 4
  %.not116 = icmp eq i32 %i.cl, 0
  %i.cm = zext i1 %.not116 to i64
  %spec.select132 = add nuw nsw i64 %2, %i.cm
  br label %_fits_in_n_bits.exit.thread

_fits_in_n_bits.exit.thread:                      ; preds = %.preheader159, %.loopexit, %bb.ah, %_fits_in_n_bits.exit142.thread, %_PyLong_NumBits.exit, %bb.ad, %._crit_edge, %bb.ag, %bb.y, %_fits_in_n_bits.exit, %bb.l, %bb.w
  %.3 = phi i64 [ 8, %bb.l ], [ 8, %bb.y ], [ %2, %_fits_in_n_bits.exit ], [ %spec.select131, %_fits_in_n_bits.exit142.thread ], [ 8, %.loopexit ], [ 8, %bb.w ], [ %spec.select132, %bb.ah ], [ %i.bm, %bb.ag ], [ %spec.select, %._crit_edge ], [ %i.bm, %bb.ad ], [ %i.bm, %_PyLong_NumBits.exit ], [ 8, %.preheader159 ] ; 4 uses
  br i1 %.not.not.not, label %bb.ai, label %Py_DECREF.exit134

bb.ai:                                            ; preds = %_fits_in_n_bits.exit.thread
  %i.cn = load i32, ptr %.095, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp sgt i32 %i.cn, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit134

bb.aj:                                            ; preds = %bb.ai
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %.095, align 8, !tbaa !40
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ak, label %Py_DECREF.exit134

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
define dso_local ptr @PyLong_FromNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
define dso_local ptr @PyLong_FromUnsignedNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
define dso_local ptr @PyLong_FromVoidPtr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_AsVoidPtr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val8 = load i64, ptr %i.c, align 8, !tbaa !52
  %i.d = and i64 %.val8, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.e, align 8, !tbaa !43
  %i.f = and i64 %.val9, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !26
end_hunk_0

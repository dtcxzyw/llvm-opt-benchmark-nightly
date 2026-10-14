Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/strutil?download=true
inline.NumInlined: 4879
inline.NumDeleted: 1465
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZL18stbsp__real_to_strPPKcPjPcPidj:bb.a
  %storemerge170 = phi i64 [ %.1, %.loopexit ], [ %storemerge213, %._crit_edge166 ] ; 5 uses
  %.095 = phi i32 [ 0, %.loopexit ], [ %.398.lcssa, %._crit_edge166 ] ; 3 uses
  %.083 = phi ptr [ %i.hj, %.loopexit ], [ %.3.ptr, %._crit_edge166 ] ; 4 uses
  %i.hk = icmp samesign ugt i64 %storemerge170, 99999999
  br i1 %i.hk, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.hl = urem i64 %storemerge170, 100000000      ; 2 uses
  %i.hm = udiv i64 %storemerge170, 100000000      ; 2 uses
  %.not116152 = icmp eq i64 %i.hl, 0
  br i1 %.not116152, label %.lr.ph165.preheader, label %.lr.ph157.preheader

.thread:                                          ; preds = %bb.x
  %.not116152211 = icmp eq i64 %storemerge170, 0
  br i1 %.not116152211, label %._crit_edge158.thread.thread, label %.lr.ph157.preheader

.lr.ph157.preheader:                              ; preds = %.thread, %bb.y
  %.0216.in = phi i64 [ %storemerge170, %.thread ], [ %i.hl, %bb.y ]
  %storemerge212 = phi i64 [ 0, %.thread ], [ %i.hm, %bb.y ] ; 3 uses
  %.0216 = trunc nuw i64 %.0216.in to i32
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph157.preheader, %.lr.ph157
  %.1155 = phi i32 [ %i.hs, %.lr.ph157 ], [ %.0216, %.lr.ph157.preheader ] ; 3 uses
  %.184.idx154 = phi i64 [ %.184.add, %.lr.ph157 ], [ 0, %.lr.ph157.preheader ]
  %.196153 = phi i32 [ %i.ht, %.lr.ph157 ], [ %.095, %.lr.ph157.preheader ]
  %.184.add = add nsw i64 %.184.idx154, -2        ; 5 uses
  %.ptr118 = getelementptr inbounds i8, ptr %.083, i64 %.184.add
  %i.hn = urem i32 %.1155, 100
  %i.ho = shl nuw nsw i32 %i.hn, 1
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16stbsp__digitpair, i64 2), i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !70
  store i16 %i.hr, ptr %.ptr118, align 2, !tbaa !70
  %i.hs = udiv i32 %.1155, 100
  %i.ht = add nsw i32 %.196153, 2                 ; 4 uses
  %.not116 = icmp ult i32 %.1155, 100
  br i1 %.not116, label %._crit_edge158, label %.lr.ph157, !llvm.loop !375

._crit_edge158:                                   ; preds = %.lr.ph157
  %i.hu = icmp eq i64 %storemerge212, 0
  br i1 %i.hu, label %._crit_edge158.thread.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge158
  %.not117162 = icmp eq i64 %.184.add, -8
  br i1 %.not117162, label %._crit_edge166, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %bb.y, %.preheader
  %storemerge214 = phi i64 [ %storemerge212, %.preheader ], [ %i.hm, %bb.y ]
  %.184.idx.lcssa151199207 = phi i64 [ %.184.add, %.preheader ], [ 0, %bb.y ] ; 2 uses
  %.196.lcssa201206 = phi i32 [ %i.ht, %.preheader ], [ %.095, %bb.y ]
  %scevgep = getelementptr i8, ptr %.083, i64 -8
  %i.hv = add nsw i64 %.184.idx.lcssa151199207, 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.hv, i1 false), !tbaa !54
  %i.hw = add i32 %.196.lcssa201206, 8
  %i.hx = trunc i64 %.184.idx.lcssa151199207 to i32
  %i.hy = add i32 %i.hw, %i.hx
  br label %._crit_edge166

._crit_edge158.thread.thread:                     ; preds = %.thread, %._crit_edge158
  %.196.lcssa202 = phi i32 [ %.095, %.thread ], [ %i.ht, %._crit_edge158 ] ; 3 uses
  %.184.idx.lcssa151200 = phi i64 [ 0, %.thread ], [ %.184.add, %._crit_edge158 ]
  %.184.ptr.le.le = getelementptr inbounds i8, ptr %.083, i64 %.184.idx.lcssa151200 ; 4 uses
  %.not119 = icmp eq i32 %.196.lcssa202, 0
  br i1 %.not119, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge158.thread.thread
  %i.hz = load i8, ptr %.184.ptr.le.le, align 1, !tbaa !54
  %i.ia = icmp eq i8 %i.hz, 48
  br i1 %i.ia, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %.184.ptr.le.le, i64 1
  %i.ic = add nsw i32 %.196.lcssa202, -1
  br label %bb.ab

._crit_edge166:                                   ; preds = %.lr.ph165.preheader, %.preheader
  %storemerge213 = phi i64 [ %storemerge212, %.preheader ], [ %storemerge214, %.lr.ph165.preheader ]
  %.398.lcssa = phi i32 [ %i.ht, %.preheader ], [ %i.hy, %.lr.ph165.preheader ]
  %.3.ptr = getelementptr inbounds i8, ptr %.083, i64 -8
  br label %bb.x

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge158.thread.thread
  %.499.ph = phi i32 [ 0, %._crit_edge158.thread.thread ], [ %.196.lcssa202, %bb.z ], [ %i.ic, %bb.aa ]
  %.4.ph = phi ptr [ %.184.ptr.le.le, %._crit_edge158.thread.thread ], [ %.184.ptr.le.le, %bb.z ], [ %i.ib, %bb.aa ]
  store i32 %.494, ptr %3, align 4, !tbaa !53
  store ptr %.4.ph, ptr %0, align 8, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.d, %bb.b
  %.499.ph.sink = phi i32 [ %.499.ph, %bb.ab ], [ 1, %bb.d ], [ 3, %bb.b ]
  store i32 %.499.ph.sink, ptr %1, align 4, !tbaa !53
  %i.id = lshr i64 %i.a, 63
  %i.ie = trunc nuw nsw i64 %i.id to i32
  ret i32 %i.ie
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_sprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @oiio_stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.stbsp__context, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null                     ; 2 uses
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL27stbsp__count_clamp_callbackPKcPvi, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %.not = xor i1 %i.b, true
  %.pre36.i = sext i32 %1 to i64
  tail call void @llvm.assume(i1 %.not)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i
  store ptr %i.h, ptr %4, align 8, !tbaa !74
  store i32 0, ptr %i.f, align 8, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select17 = select i1 %i.k, ptr %0, ptr %i.l
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit

_ZL21stbsp__clamp_callbackPKcPvi.exit:            ; preds = %bb.f, %bb.e
  %.028.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17, %bb.f ]
  %i.m = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL21stbsp__clamp_callbackPKcPvi, ptr noundef nonnull %4, ptr noundef %.028.i, ptr noundef %2, ptr noundef %3) ; 0 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !74
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %_ZL21stbsp__clamp_callbackPKcPvi.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef nonnull ptr @_ZL27stbsp__count_clamp_callbackPKcPvi(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = add nsw i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZL21stbsp__clamp_callbackPKcPvi(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !73
  %i.d = add nsw i32 %i.c, %2
  store i32 %i.d, ptr %i.b, align 4, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !74     ; 8 uses
  %.not34 = icmp eq ptr %0, %i.g
  %.pre36 = sext i32 %spec.select to i64          ; 3 uses
  br i1 %.not34, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %0, i64 %.pre36
  %i.i = add i64 %i.a, %.pre36
  %i.j = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.j)
  %i.k = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.k, 8
  %3 = ptrtoaddr ptr %i.g to i64
  %4 = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.l, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.k, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.k, 24
  %n.vec = and i64 %i.k, -32                      ; 5 uses
  %i.n = getelementptr i8, ptr %0, i64 %n.vec
  %i.o = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !54
  %wide.load42 = load <16 x i8>, ptr %i.p, align 1, !tbaa !54
  %i.q = getelementptr i8, ptr %next.gep41, i64 16
  store <16 x i8> %wide.load, ptr %next.gep41, align 1, !tbaa !54
  store <16 x i8> %wide.load42, ptr %i.q, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.k, -8                     ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %n.vec44
  %i.t = getelementptr i8, ptr %i.g, i64 %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %0, i64 %index45
  %next.gep47 = getelementptr i8, ptr %i.g, i64 %index45
  %wide.load48 = load <8 x i8>, ptr %next.gep46, align 1, !tbaa !54
  store <8 x i8> %wide.load48, ptr %next.gep47, align 1, !tbaa !54
  %index.next49 = add nuw i64 %index45, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !377

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.k, %n.vec44
  br i1 %cmp.n50, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.ph = phi ptr [ %0, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.g, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.026 = phi ptr [ %i.v, %vec.epilog.scalar.ph ], [ %.026.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.w = load i8, ptr %.026, align 1, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.w, ptr %.0, align 1, !tbaa !54
  %i.y = icmp ult ptr %i.v, %i.h
  br i1 %i.y, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !378

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !74
  %.pre35 = load i32, ptr %i.e, align 8, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %i.z = phi i32 [ %.pre35, %.loopexit.loopexit ], [ %i.f, %bb.b ]
  %i.aa = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.g, %bb.b ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.pre36
  store ptr %i.ab, ptr %1, align 8, !tbaa !74
  %i.ac = sub nsw i32 %i.z, %spec.select          ; 2 uses
  store i32 %i.ac, ptr %i.e, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  %i.ad = phi i32 [ %i.ac, %.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp samesign ugt i32 %i.ad, 511
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %1, align 8, !tbaa !74
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.028 = phi ptr [ %i.af, %bb.d ], [ %i.ah, %bb.f ], [ %i.ai, %bb.g ]
  ret ptr %.028
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_snprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.stbsp__context, align 8     ; 14 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  %i.b = icmp ne ptr %0, null                     ; 2 uses
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL27stbsp__count_clamp_callbackPKcPvi, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %oiio_stbsp_vsnprintf.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %.not.i = xor i1 %i.b, true
  %.pre36.i.i = sext i32 %1 to i64
  call void @llvm.assume(i1 %.not.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !74
  store i32 0, ptr %i.f, align 8, !tbaa !75
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.a, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp samesign ugt i32 %1, 511
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select17.i = select i1 %i.j, ptr %0, ptr %i.k
  br label %_ZL21stbsp__clamp_callbackPKcPvi.exit.i

_ZL21stbsp__clamp_callbackPKcPvi.exit.i:          ; preds = %bb.f, %bb.e
  %.028.i.i = phi ptr [ %i.i, %bb.e ], [ %spec.select17.i, %bb.f ]
  %i.l = call i32 @oiio_stbsp_vsprintfcb(ptr noundef nonnull @_ZL21stbsp__clamp_callbackPKcPvi, ptr noundef nonnull %3, ptr noundef %.028.i.i, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !74
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = add nsw i32 %1, -1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.r)
  %i.s = sext i32 %spec.select.i to i64
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !54
  br label %oiio_stbsp_vsnprintf.exit

oiio_stbsp_vsnprintf.exit:                        ; preds = %bb.b, %_ZL21stbsp__clamp_callbackPKcPvi.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.v
}

; Function Attrs: mustprogress uwtable
define hidden i32 @oiio_stbsp_vsprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @oiio_stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr nofree noundef captures(none) dead_on_return %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef nonnull %i.af) #13
  %.pre.i.i.pre = load i64, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %.pre678.pre = load ptr, ptr %5, align 8, !tbaa !257
  %.pre1372 = add i64 %.pre.i.i.pre, 1
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  %.pre2.i.i.pre-phi = phi i64 [ %.pre1372, %bb.i ], [ %i.be, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre678 = phi ptr [ %.pre678.pre, %bb.i ], [ %i.bj, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %.pre.i.i = phi i64 [ %.pre.i.i.pre, %bb.i ], [ %i.ah, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  store i64 %.pre2.i.i.pre-phi, ptr %i.c, align 8, !tbaa !263
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre678, i64 %.pre.i.i
  store i32 %.lcssa1624, ptr %i.bl, align 4, !tbaa !53
  br label %_ZN3fmt3v126detail6bigintlSEi.exit.thread

_ZN3fmt3v126detail6bigintlSEi.exit.thread:        ; preds = %bb.f, %._crit_edge.i, %_ZN3fmt3v126detail6bigintlSEi.exit, %_ZN3fmt3v126detail6bigintlSEi.exit.thread1160
  store i32 1, ptr %i.n, align 8, !tbaa !53
  store i64 1, ptr %i.m, align 8, !tbaa !263
  %i.bm = lshr i32 %i.x, 5
  store i32 %i.bm, ptr %i.o, align 8, !tbaa !262
  %i.bn = and i32 %i.x, 31                        ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN3fmt3v126detail6bigintlSEi.exit135, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  %i.bp = shl nuw i32 1, %i.bn
  store i32 %i.bp, ptr %i.n, align 8, !tbaa !53
  br label %_ZN3fmt3v126detail6bigintlSEi.exit135

_ZN3fmt3v126detail6bigintlSEi.exit135:            ; preds = %.lr.ph.i124, %_ZN3fmt3v126detail6bigintlSEi.exit.thread
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit135
  store i32 1, ptr %i.s, align 8, !tbaa !53
  store i64 1, ptr %i.r, align 8, !tbaa !263
  %i.bq = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.br = lshr i32 %i.bq, 5
  store i32 %i.br, ptr %i.t, align 8, !tbaa !262
  %i.bs = and i32 %i.bq, 31                       ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN3fmt3v126detail6bigintlSEi.exit155, label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %bb.j
  %i.bu = shl nuw i32 1, %i.bs
  store i32 %i.bu, ptr %i.s, align 8, !tbaa !53
  br label %_ZN3fmt3v126detail6bigintlSEi.exit155

.loopexit566:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke1568, %_ZN3fmt3v126detail6bigintlSEi.exit155, %bb.o, %_ZN3fmt3v126detail6bigintlSEi.exit253, %bb.m, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, %bb.s, %bb.w, %bb.x, %bb.aa, %bb.am, %bb.an, %bb.aq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN3fmt3v126detail6bigintlSEi.exit155:            ; preds = %.lr.ph.i144, %bb.j, %_ZN3fmt3v126detail6bigintlSEi.exit135
  %.079 = phi ptr [ null, %_ZN3fmt3v126detail6bigintlSEi.exit135 ], [ %8, %bb.j ], [ %8, %.lr.ph.i144 ] ; 3 uses
  %i.bv = load i32, ptr %4, align 4, !tbaa !53
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.bv)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit155
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !263 ; 7 uses
  %.not19.i156 = icmp eq i64 %i.bw, 0
  %extract.t814 = trunc i128 %i.z to i32          ; 3 uses
  br i1 %.not19.i156, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %bb.k
  %i.bx = load ptr, ptr %6, align 8, !tbaa !257   ; 3 uses
  %i.by = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1747 = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check1747, label %scalar.ph1746.preheader, label %vector.ph1748

vector.ph1748:                                    ; preds = %.lr.ph.i157
  %n.vec1749 = and i64 %i.bw, -8                  ; 3 uses
  %broadcast.splatinsert1750 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat1751 = shufflevector <4 x i32> %broadcast.splatinsert1750, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1752 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1753 = shufflevector <4 x i32> %broadcast.splatinsert1752, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1754

vector.body1754:                                  ; preds = %vector.body1754, %vector.ph1748
  %index1755 = phi i64 [ 0, %vector.ph1748 ], [ %index.next1759, %vector.body1754 ] ; 2 uses
  %vector.recur1756 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1748 ], [ %i.cc, %vector.body1754 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1755 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load1757 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !53 ; 2 uses
  %wide.load1758 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !53 ; 2 uses
  %i.cb = lshr <4 x i32> %wide.load1757, %broadcast.splat1751 ; 2 uses
  %i.cc = lshr <4 x i32> %wide.load1758, %broadcast.splat1751 ; 3 uses
  %i.cd = shufflevector <4 x i32> %vector.recur1756, <4 x i32> %i.cb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ce = shufflevector <4 x i32> %i.cb, <4 x i32> %i.cc, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl <4 x i32> %wide.load1757, %broadcast.splat1753
  %i.cg = shl <4 x i32> %wide.load1758, %broadcast.splat1753
  %i.ch = add <4 x i32> %i.cf, %i.cd
  %i.ci = add <4 x i32> %i.cg, %i.ce
  store <4 x i32> %i.ch, ptr %i.bz, align 4, !tbaa !53
  store <4 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !53
  %index.next1759 = add nuw i64 %index1755, 8     ; 2 uses
  %i.cj = icmp eq i64 %index.next1759, %n.vec1749
  br i1 %i.cj, label %middle.block1760, label %vector.body1754, !llvm.loop !797

middle.block1760:                                 ; preds = %vector.body1754
  %vector.recur.extract1761 = extractelement <4 x i32> %i.cc, i64 3 ; 2 uses
  %cmp.n1762 = icmp eq i64 %i.bw, %n.vec1749
  br i1 %cmp.n1762, label %._crit_edge.i161, label %scalar.ph1746.preheader

scalar.ph1746.preheader:                          ; preds = %.lr.ph.i157, %middle.block1760
  %.01418.i158.ph = phi i64 [ 0, %.lr.ph.i157 ], [ %n.vec1749, %middle.block1760 ]
  %.017.i159.ph = phi i32 [ 0, %.lr.ph.i157 ], [ %vector.recur.extract1761, %middle.block1760 ]
  br label %scalar.ph1746

._crit_edge.i161:                                 ; preds = %scalar.ph1746, %middle.block1760
  %.lcssa1623 = phi i32 [ %vector.recur.extract1761, %middle.block1760 ], [ %i.cm, %scalar.ph1746 ] ; 2 uses
  %.not.i162 = icmp eq i32 %.lcssa1623, 0
  br i1 %.not.i162, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.l

scalar.ph1746:                                    ; preds = %scalar.ph1746.preheader, %scalar.ph1746
  %.01418.i158 = phi i64 [ %i.cp, %scalar.ph1746 ], [ %.01418.i158.ph, %scalar.ph1746.preheader ] ; 2 uses
  %.017.i159 = phi i32 [ %i.cm, %scalar.ph1746 ], [ %.017.i159.ph, %scalar.ph1746.preheader ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.01418.i158 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !53 ; 2 uses
  %i.cm = lshr i32 %i.cl, %i.by                   ; 2 uses
  %i.cn = shl i32 %i.cl, %i.v
  %i.co = add i32 %i.cn, %.017.i159
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !53
  %i.cp = add nuw i64 %.01418.i158, 1             ; 2 uses
  %exitcond.not.i160 = icmp eq i64 %i.cp, %i.bw
  br i1 %exitcond.not.i160, label %._crit_edge.i161, label %scalar.ph1746, !llvm.loop !798

bb.l:                                             ; preds = %._crit_edge.i161
  %i.cq = add i64 %i.bw, 1                        ; 3 uses
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !258
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

bb.m:                                             ; preds = %bb.l
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !256
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.cq)
          to label %.noexc167 unwind label %.loopexit.split-lp, !inline_history !799

.noexc167:                                        ; preds = %bb.m
  %.pre.i.i165 = load i64, ptr %i.h, align 8, !tbaa !263 ; 2 uses
  %.pre2.i.i166 = add i64 %.pre.i.i165, 1
  %.pre681 = load ptr, ptr %6, align 8, !tbaa !257
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163: ; preds = %.noexc167, %bb.l
  %i.cu = phi ptr [ %i.bx, %bb.l ], [ %.pre681, %.noexc167 ]
  %.pre-phi.i.i164 = phi i64 [ %i.cq, %bb.l ], [ %.pre2.i.i166, %.noexc167 ]
  %i.cv = phi i64 [ %i.bw, %bb.l ], [ %.pre.i.i165, %.noexc167 ]
  store i64 %.pre-phi.i.i164, ptr %i.h, align 8, !tbaa !263
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 %.lcssa1623, ptr %i.cw, align 4, !tbaa !53
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.n:                                             ; preds = %bb.a
  %i.cx = load i32, ptr %4, align 4, !tbaa !53    ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 0, %i.cx
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.cz)
          to label %bb.p unwind label %.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.c, align 8, !tbaa !263 ; 7 uses
  %i.db = load i64, ptr %i.k, align 8, !tbaa !258
  %i.dc = icmp ugt i64 %i.da, %i.db
  br i1 %i.dc, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.p
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !256
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.da)
          to label %.noexc170 unwind label %.loopexit.split-lp, !inline_history !800

.noexc170:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !258
  %i.de = call noundef i64 @llvm.umin.i64(i64 %i.da, i64 %.pre.i.i.i)
  store i64 %i.de, ptr %i.m, align 8, !tbaa !263
  %i.df = load ptr, ptr %5, align 8, !tbaa !257   ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.da, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.p
  store i64 %i.da, ptr %i.m, align 8, !tbaa !263
  %i.dh = load ptr, ptr %5, align 8, !tbaa !257   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.da, 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.da, 0
  br i1 %.not6.i.i, label %.loopexit567, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %.noexc170
  %i.dj = phi ptr [ %i.dg, %.noexc170 ], [ %i.di, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.dk = phi ptr [ %i.df, %.noexc170 ], [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 6 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !257      ; 4 uses
  %10 = ptrtoaddr ptr %i.dj to i64
  %i.dl = ptrtoaddr ptr %i.dk to i64              ; 2 uses
  %i.dm = add i64 %10, -4
  %i.dn = sub i64 %i.dm, %i.dl                    ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check1663 = icmp ult i64 %i.dn, 44
  %i.dq = ptrtoaddr ptr %9 to i64
  %i.dr = sub i64 %i.dl, %i.dq
  %diff.check = icmp ugt i64 %i.dr, -32
  %or.cond1767 = select i1 %min.iters.check1663, i1 true, i1 %diff.check
  br i1 %or.cond1767, label %.lr.ph.i.i.preheader, label %vector.ph1664

vector.ph1664:                                    ; preds = %.lr.ph.i.preheader.i
  %n.vec1665 = and i64 %i.dp, 9223372036854775800 ; 3 uses
  %i.ds = shl i64 %n.vec1665, 2                   ; 2 uses
  %i.dt = getelementptr i8, ptr %9, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dk, i64 %i.ds
  br label %vector.body1666

vector.body1666:                                  ; preds = %vector.body1666, %vector.ph1664
  %index1667 = phi i64 [ 0, %vector.ph1664 ], [ %index.next1671, %vector.body1666 ] ; 2 uses
  %i.dv = shl i64 %index1667, 2                   ; 2 uses
  %next.gep = getelementptr i8, ptr %9, i64 %i.dv ; 2 uses
  %next.gep1668 = getelementptr i8, ptr %i.dk, i64 %i.dv ; 2 uses
  %i.dw = getelementptr i8, ptr %next.gep1668, i64 16
  %wide.load1669 = load <4 x i32>, ptr %next.gep1668, align 4, !tbaa !53
  %wide.load1670 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !53
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load1669, ptr %next.gep, align 4, !tbaa !53
  store <4 x i32> %wide.load1670, ptr %i.dx, align 4, !tbaa !53
  %index.next1671 = add nuw i64 %index1667, 8     ; 2 uses
  %i.dy = icmp eq i64 %index.next1671, %n.vec1665
  br i1 %i.dy, label %middle.block1672, label %vector.body1666, !llvm.loop !801

middle.block1672:                                 ; preds = %vector.body1666
  %cmp.n1673 = icmp eq i64 %i.dp, %n.vec1665
  br i1 %cmp.n1673, label %.loopexit567, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block1672
  %.08.i.i.ph = phi ptr [ %9, %.lr.ph.i.preheader.i ], [ %i.dt, %middle.block1672 ]
  %.057.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.preheader.i ], [ %i.du, %middle.block1672 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.ea = load i32, ptr %.057.i.i, align 4, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.ea, ptr %.08.i.i, align 4, !tbaa !53
  %.not.i.i169 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i169, label %.loopexit567, label %.lr.ph.i.i, !llvm.loop !802

.loopexit567:                                     ; preds = %.lr.ph.i.i, %middle.block1672, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ec = phi ptr [ %i.dh, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ], [ %i.dk, %middle.block1672 ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.ed = load i32, ptr %i.e, align 8, !tbaa !262 ; 2 uses
  store i32 %i.ed, ptr %i.o, align 8, !tbaa !262
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.q

bb.q:                                             ; preds = %.loopexit567
  %i.ee = load i64, ptr %i.c, align 8, !tbaa !263 ; 8 uses
  %i.ef = load i64, ptr %i.p, align 8, !tbaa !258 ; 2 uses
  %i.eg = icmp ugt i64 %i.ee, %i.ef
  br i1 %i.eg, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179: ; preds = %bb.q
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !256
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.ee)
          to label %.noexc182 unwind label %.loopexit.split-lp, !inline_history !800

.noexc182:                                        ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i179
  %.pre.i.i.i180 = load i64, ptr %i.p, align 8, !tbaa !258 ; 2 uses
  %i.ei = call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %.pre.i.i.i180) ; 2 uses
  store i64 %i.ei, ptr %i.r, align 8, !tbaa !263
  %i.ej = load ptr, ptr %5, align 8, !tbaa !257   ; 2 uses
  %.idx8.i181 = shl nuw nsw i64 %i.ee, 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx8.i181
  br label %.lr.ph.i.preheader.i174

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171: ; preds = %bb.q
  store i64 %i.ee, ptr %i.r, align 8, !tbaa !263
  %.idx.i172 = shl nuw nsw i64 %i.ee, 2
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i172
  %.not6.i.i173 = icmp eq i64 %i.ee, 0
  br i1 %.not6.i.i173, label %.thread, label %.lr.ph.i.preheader.i174

.thread:                                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171
  store i32 %i.ed, ptr %i.t, align 8, !tbaa !262
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

.lr.ph.i.preheader.i174:                          ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171, %.noexc182
  %i.em = phi i64 [ %.pre.i.i.i180, %.noexc182 ], [ %i.ef, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ]
  %.pr = phi i64 [ %i.ei, %.noexc182 ], [ %i.ee, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 7 uses
  %i.en = phi ptr [ %i.ek, %.noexc182 ], [ %i.el, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 2 uses
  %i.eo = phi ptr [ %i.ej, %.noexc182 ], [ %i.ec, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i171 ] ; 4 uses
  %11 = load ptr, ptr %8, align 8, !tbaa !257     ; 7 uses
  %12 = ptrtoaddr ptr %i.en to i64
  %i.ep = ptrtoaddr ptr %i.eo to i64              ; 2 uses
  %i.eq = add i64 %12, -4
  %i.er = sub i64 %i.eq, %i.ep                    ; 2 uses
  %i.es = lshr i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check1679 = icmp ult i64 %i.er, 44
  %i.eu = ptrtoaddr ptr %11 to i64
  %i.ev = sub i64 %i.ep, %i.eu
  %diff.check1677 = icmp ugt i64 %i.ev, -32
  %or.cond1769 = select i1 %min.iters.check1679, i1 true, i1 %diff.check1677
  br i1 %or.cond1769, label %.lr.ph.i.i175.preheader, label %vector.ph1680

vector.ph1680:                                    ; preds = %.lr.ph.i.preheader.i174
  %n.vec1681 = and i64 %i.et, 9223372036854775800 ; 3 uses
  %i.ew = shl i64 %n.vec1681, 2                   ; 2 uses
  %i.ex = getelementptr i8, ptr %11, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.eo, i64 %i.ew
  br label %vector.body1682

vector.body1682:                                  ; preds = %vector.body1682, %vector.ph1680
  %index1683 = phi i64 [ 0, %vector.ph1680 ], [ %index.next1688, %vector.body1682 ] ; 2 uses
  %i.ez = shl i64 %index1683, 2                   ; 2 uses
  %next.gep1684 = getelementptr i8, ptr %11, i64 %i.ez ; 2 uses
  %next.gep1685 = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep1685, i64 16
  %wide.load1686 = load <4 x i32>, ptr %next.gep1685, align 4, !tbaa !53
  %wide.load1687 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !53
  %i.fb = getelementptr i8, ptr %next.gep1684, i64 16
  store <4 x i32> %wide.load1686, ptr %next.gep1684, align 4, !tbaa !53
  store <4 x i32> %wide.load1687, ptr %i.fb, align 4, !tbaa !53
  %index.next1688 = add nuw i64 %index1683, 8     ; 2 uses
  %i.fc = icmp eq i64 %index.next1688, %n.vec1681
  br i1 %i.fc, label %middle.block1689, label %vector.body1682, !llvm.loop !803

middle.block1689:                                 ; preds = %vector.body1682
  %cmp.n1690 = icmp eq i64 %i.et, %n.vec1681
  br i1 %cmp.n1690, label %.loopexit1765, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %.lr.ph.i.preheader.i174, %middle.block1689
  %.08.i.i176.ph = phi ptr [ %11, %.lr.ph.i.preheader.i174 ], [ %i.ex, %middle.block1689 ]
  %.057.i.i177.ph = phi ptr [ %i.eo, %.lr.ph.i.preheader.i174 ], [ %i.ey, %middle.block1689 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader, %.lr.ph.i.i175
  %.08.i.i176 = phi ptr [ %i.ff, %.lr.ph.i.i175 ], [ %.08.i.i176.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %.057.i.i177 = phi ptr [ %i.fd, %.lr.ph.i.i175 ], [ %.057.i.i177.ph, %.lr.ph.i.i175.preheader ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.057.i.i177, i64 4 ; 2 uses
  %i.fe = load i32, ptr %.057.i.i177, align 4, !tbaa !53
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i176, i64 4
  store i32 %i.fe, ptr %.08.i.i176, align 4, !tbaa !53
  %.not.i.i178 = icmp eq ptr %i.fd, %i.en
  br i1 %.not.i.i178, label %.loopexit1765, label %.lr.ph.i.i175, !llvm.loop !804

.loopexit1765:                                    ; preds = %.lr.ph.i.i175, %middle.block1689
  %i.fg = load i32, ptr %i.e, align 8, !tbaa !262
  store i32 %i.fg, ptr %i.t, align 8, !tbaa !262
  %.not19.i184 = icmp eq i64 %.pr, 0
  br i1 %.not19.i184, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %.lr.ph.i185.preheader

.lr.ph.i185.preheader:                            ; preds = %.loopexit1765
  %min.iters.check1694 = icmp ult i64 %.pr, 8
  br i1 %min.iters.check1694, label %.lr.ph.i185.preheader1834, label %vector.ph1695

vector.ph1695:                                    ; preds = %.lr.ph.i185.preheader
  %n.vec1696 = and i64 %.pr, -8                   ; 3 uses
  br label %vector.body1697

vector.body1697:                                  ; preds = %vector.body1697, %vector.ph1695
  %index1698 = phi i64 [ 0, %vector.ph1695 ], [ %index.next1702, %vector.body1697 ] ; 2 uses
  %vector.recur1699 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1695 ], [ %i.fk, %vector.body1697 ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index1698 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load1700 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !53 ; 2 uses
  %wide.load1701 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !53 ; 3 uses
  %i.fj = lshr <4 x i32> %wide.load1700, splat (i32 31) ; 2 uses
  %i.fk = lshr <4 x i32> %wide.load1701, splat (i32 31) ; 3 uses
  %i.fl = shufflevector <4 x i32> %vector.recur1699, <4 x i32> %i.fj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fm = shufflevector <4 x i32> %i.fj, <4 x i32> %i.fk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.fn = shl <4 x i32> %wide.load1700, splat (i32 1)
  %i.fo = shl <4 x i32> %wide.load1701, splat (i32 1)
  %i.fp = or disjoint <4 x i32> %i.fn, %i.fl
  %i.fq = or disjoint <4 x i32> %i.fo, %i.fm
  store <4 x i32> %i.fp, ptr %i.fh, align 4, !tbaa !53
  store <4 x i32> %i.fq, ptr %i.fi, align 4, !tbaa !53
  %index.next1702 = add nuw i64 %index1698, 8     ; 2 uses
  %i.fr = icmp eq i64 %index.next1702, %n.vec1696
  br i1 %i.fr, label %middle.block1703, label %vector.body1697, !llvm.loop !805

middle.block1703:                                 ; preds = %vector.body1697
  %vector.recur.extract1704 = extractelement <4 x i32> %i.fk, i64 3 ; 2 uses
  %i.fs = extractelement <4 x i32> %wide.load1701, i64 3
  %cmp.n1705 = icmp eq i64 %.pr, %n.vec1696
  br i1 %cmp.n1705, label %._crit_edge.i189, label %.lr.ph.i185.preheader1834

.lr.ph.i185.preheader1834:                        ; preds = %.lr.ph.i185.preheader, %middle.block1703
  %.01418.i186.ph = phi i64 [ 0, %.lr.ph.i185.preheader ], [ %n.vec1696, %middle.block1703 ]
  %.017.i187.ph = phi i32 [ 0, %.lr.ph.i185.preheader ], [ %vector.recur.extract1704, %middle.block1703 ]
  br label %.lr.ph.i185

._crit_edge.i189:                                 ; preds = %.lr.ph.i185, %middle.block1703
  %.lcssa1630 = phi i32 [ %i.fs, %middle.block1703 ], [ %i.fu, %.lr.ph.i185 ]
  %.lcssa1629 = phi i32 [ %vector.recur.extract1704, %middle.block1703 ], [ %i.fv, %.lr.ph.i185 ]
  %.not.i190 = icmp sgt i32 %.lcssa1630, -1
  br i1 %.not.i190, label %_ZN3fmt3v126detail6bigintlSEi.exit196, label %bb.r

.lr.ph.i185:                                      ; preds = %.lr.ph.i185.preheader1834, %.lr.ph.i185
  %.01418.i186 = phi i64 [ %i.fy, %.lr.ph.i185 ], [ %.01418.i186.ph, %.lr.ph.i185.preheader1834 ] ; 2 uses
  %.017.i187 = phi i32 [ %i.fv, %.lr.ph.i185 ], [ %.017.i187.ph, %.lr.ph.i185.preheader1834 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.01418.i186 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !53 ; 3 uses
  %i.fv = lshr i32 %i.fu, 31                      ; 2 uses
  %i.fw = shl i32 %i.fu, 1
  %i.fx = or disjoint i32 %i.fw, %.017.i187
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !53
  %i.fy = add nuw i64 %.01418.i186, 1             ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %i.fy, %.pr
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i185, !llvm.loop !806

bb.r:                                             ; preds = %._crit_edge.i189
  %i.fz = add i64 %.pr, 1                         ; 3 uses
  %i.ga = icmp ugt i64 %i.fz, %i.em
  br i1 %i.ga, label %bb.s, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

bb.s:                                             ; preds = %bb.r
  %i.gb = load ptr, ptr %i.q, align 8, !tbaa !256
  invoke void %i.gb(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.fz)
          to label %.noexc195 unwind label %.loopexit.split-lp, !inline_history !799

.noexc195:                                        ; preds = %bb.s
  %.pre.i.i193 = load i64, ptr %i.r, align 8, !tbaa !263 ; 2 uses
  %.pre2.i.i194 = add i64 %.pre.i.i193, 1
  %.pre675 = load ptr, ptr %8, align 8, !tbaa !257
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191: ; preds = %.noexc195, %bb.r
  %i.gc = phi ptr [ %11, %bb.r ], [ %.pre675, %.noexc195 ]
  %.pre-phi.i.i192 = phi i64 [ %i.fz, %bb.r ], [ %.pre2.i.i194, %.noexc195 ]
  %i.gd = phi i64 [ %.pr, %bb.r ], [ %.pre.i.i193, %.noexc195 ]
  store i64 %.pre-phi.i.i192, ptr %i.r, align 8, !tbaa !263
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gd
  store i32 %.lcssa1629, ptr %i.ge, align 4, !tbaa !53
  br label %_ZN3fmt3v126detail6bigintlSEi.exit196

_ZN3fmt3v126detail6bigintlSEi.exit196:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191, %._crit_edge.i189, %.loopexit1765, %.thread, %.loopexit567
  %.1 = phi ptr [ null, %.loopexit567 ], [ %8, %.thread ], [ %8, %.loopexit1765 ], [ %8, %._crit_edge.i189 ], [ %8, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i191 ] ; 3 uses
  %i.gf = load i128, ptr %0, align 16, !tbaa !827 ; 3 uses
  %i.gg = and i128 %i.gf, 18446744073709551615
  %i.gh = load i64, ptr %i.c, align 8, !tbaa !263 ; 4 uses
  %.not23.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196
  %i.gi = load ptr, ptr %5, align 8, !tbaa !257   ; 3 uses
  %i.gj = lshr i128 %i.gf, 32
  %i.gk = and i128 %i.gj, 79228162514264337589248983040
  br label %bb.t

.preheader.i.i:                                   ; preds = %bb.t
  %.not20.i.i = icmp eq i128 %i.gv, 0
  br i1 %.not20.i.i, label %.lr.ph.i202, label %.lr.ph22.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i197
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i197 ], [ %i.gx, %bb.t ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i197 ], [ %i.gv, %bb.t ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.019.i.i ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !53
  %i.gn = zext i32 %i.gm to i128                  ; 2 uses
  %i.go = mul nuw nsw i128 %i.gg, %i.gn
  %i.gp = and i128 %.01718.i.i, 4294967295
  %i.gq = add nuw nsw i128 %i.go, %i.gp           ; 2 uses
  %i.gr = mul nuw i128 %i.gk, %i.gn
  %i.gs = lshr i128 %i.gq, 32
  %i.gt = lshr i128 %.01718.i.i, 32
  %i.gu = add nuw i128 %i.gr, %i.gt
  %i.gv = add nuw i128 %i.gu, %i.gs               ; 3 uses
  %i.gw = trunc i128 %i.gq to i32
  store i32 %i.gw, ptr %i.gl, align 4, !tbaa !53
  %i.gx = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gx, %i.gh
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !807

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %i.gy = phi ptr [ %i.hf, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gi, %.preheader.i.i ]
  %i.gz = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gh, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.hi, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.gv, %.preheader.i.i ] ; 2 uses
  %i.ha = trunc i128 %.121.i.i to i32
  %i.hb = add i64 %i.gz, 1                        ; 3 uses
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !258
  %i.hd = icmp ugt i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.u, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.he = load ptr, ptr %i.b, align 8, !tbaa !256
  invoke void %i.he(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.hb)
          to label %.noexc200 unwind label %.loopexit566, !inline_history !808

.noexc200:                                        ; preds = %bb.u
  %.pre.i.i.i199 = load i64, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i199, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !257
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc200, %.lr.ph22.i.i
  %i.hf = phi ptr [ %i.gy, %.lr.ph22.i.i ], [ %.pre.i, %.noexc200 ] ; 3 uses
  %.pre-phi.i.i.i = phi i64 [ %i.hb, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc200 ] ; 4 uses
  %i.hg = phi i64 [ %i.gz, %.lr.ph22.i.i ], [ %.pre.i.i.i199, %.noexc200 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !263
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hg
  store i32 %i.ha, ptr %i.hh, align 4, !tbaa !53
  %i.hi = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i198 = icmp eq i128 %i.hi, 0
  br i1 %.not.i.i198, label %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !809

_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i.i
  %.not19.i201 = icmp eq i64 %.pre-phi.i.i.i, 0
  br i1 %.not19.i201, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.preheader.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.hj = phi ptr [ %i.hf, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gi, %.preheader.i.i ] ; 3 uses
  %i.hk = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit ], [ %i.gh, %.preheader.i.i ] ; 6 uses
  %i.hl = xor i32 %i.u, 31                        ; 2 uses
  %min.iters.check1709 = icmp ult i64 %i.hk, 8
  br i1 %min.iters.check1709, label %scalar.ph1708.preheader, label %vector.ph1710

vector.ph1710:                                    ; preds = %.lr.ph.i202
  %n.vec1711 = and i64 %i.hk, -8                  ; 3 uses
  %broadcast.splatinsert1712 = insertelement <4 x i32> poison, i32 %i.hl, i64 0
  %broadcast.splat1713 = shufflevector <4 x i32> %broadcast.splatinsert1712, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1714 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1715 = shufflevector <4 x i32> %broadcast.splatinsert1714, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1716

vector.body1716:                                  ; preds = %vector.body1716, %vector.ph1710
  %index1717 = phi i64 [ 0, %vector.ph1710 ], [ %index.next1721, %vector.body1716 ] ; 2 uses
  %vector.recur1718 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1710 ], [ %i.hp, %vector.body1716 ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index1717 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %wide.load1719 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !53 ; 2 uses
  %wide.load1720 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !53 ; 2 uses
  %i.ho = lshr <4 x i32> %wide.load1719, %broadcast.splat1713 ; 2 uses
  %i.hp = lshr <4 x i32> %wide.load1720, %broadcast.splat1713 ; 3 uses
  %i.hq = shufflevector <4 x i32> %vector.recur1718, <4 x i32> %i.ho, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hr = shufflevector <4 x i32> %i.ho, <4 x i32> %i.hp, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hs = shl <4 x i32> %wide.load1719, %broadcast.splat1715
  %i.ht = shl <4 x i32> %wide.load1720, %broadcast.splat1715
  %i.hu = add <4 x i32> %i.hs, %i.hq
  %i.hv = add <4 x i32> %i.ht, %i.hr
  store <4 x i32> %i.hu, ptr %i.hm, align 4, !tbaa !53
  store <4 x i32> %i.hv, ptr %i.hn, align 4, !tbaa !53
  %index.next1721 = add nuw i64 %index1717, 8     ; 2 uses
  %i.hw = icmp eq i64 %index.next1721, %n.vec1711
  br i1 %i.hw, label %middle.block1722, label %vector.body1716, !llvm.loop !810

middle.block1722:                                 ; preds = %vector.body1716
  %vector.recur.extract1723 = extractelement <4 x i32> %i.hp, i64 3 ; 2 uses
  %cmp.n1724 = icmp eq i64 %i.hk, %n.vec1711
  br i1 %cmp.n1724, label %._crit_edge.i206, label %scalar.ph1708.preheader

scalar.ph1708.preheader:                          ; preds = %.lr.ph.i202, %middle.block1722
  %.01418.i203.ph = phi i64 [ 0, %.lr.ph.i202 ], [ %n.vec1711, %middle.block1722 ]
  %.017.i204.ph = phi i32 [ 0, %.lr.ph.i202 ], [ %vector.recur.extract1723, %middle.block1722 ]
  br label %scalar.ph1708

._crit_edge.i206:                                 ; preds = %scalar.ph1708, %middle.block1722
  %.lcssa1626 = phi i32 [ %vector.recur.extract1723, %middle.block1722 ], [ %i.hz, %scalar.ph1708 ] ; 2 uses
  %.not.i207 = icmp eq i32 %.lcssa1626, 0
  br i1 %.not.i207, label %_ZN3fmt3v126detail6bigintlSEi.exit213, label %bb.v

scalar.ph1708:                                    ; preds = %scalar.ph1708.preheader, %scalar.ph1708
  %.01418.i203 = phi i64 [ %i.ic, %scalar.ph1708 ], [ %.01418.i203.ph, %scalar.ph1708.preheader ] ; 2 uses
  %.017.i204 = phi i32 [ %i.hz, %scalar.ph1708 ], [ %.017.i204.ph, %scalar.ph1708.preheader ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %.01418.i203 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !53 ; 2 uses
  %i.hz = lshr i32 %i.hy, %i.hl                   ; 2 uses
  %i.ia = shl i32 %i.hy, %i.v
  %i.ib = add i32 %i.ia, %.017.i204
  store i32 %i.ib, ptr %i.hx, align 4, !tbaa !53
  %i.ic = add nuw i64 %.01418.i203, 1             ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %i.ic, %i.hk
  br i1 %exitcond.not.i205, label %._crit_edge.i206, label %scalar.ph1708, !llvm.loop !811

bb.v:                                             ; preds = %._crit_edge.i206
  %i.id = add i64 %i.hk, 1                        ; 3 uses
  %i.ie = load i64, ptr %i.a, align 8, !tbaa !258
  %i.if = icmp ugt i64 %i.id, %i.ie
  br i1 %i.if, label %bb.w, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

bb.w:                                             ; preds = %bb.v
  %i.ig = load ptr, ptr %i.b, align 8, !tbaa !256
  invoke void %i.ig(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.id)
          to label %.noexc212 unwind label %.loopexit.split-lp, !inline_history !799

.noexc212:                                        ; preds = %bb.w
  %.pre.i.i210 = load i64, ptr %i.c, align 8, !tbaa !263 ; 2 uses
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre676 = load ptr, ptr %5, align 8, !tbaa !257
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.ih = phi ptr [ %i.hj, %bb.v ], [ %.pre676, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.id, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.ii = phi i64 [ %i.hk, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !263
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ii
  store i32 %.lcssa1626, ptr %i.ij, align 4, !tbaa !53
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.ik = load ptr, ptr %6, align 8, !tbaa !257
  store i32 1, ptr %i.ik, align 4, !tbaa !53
  %i.il = load i64, ptr %i.f, align 8, !tbaa !258 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.il, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.im = load ptr, ptr %i.g, align 8, !tbaa !256
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !812

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !258 ; 2 uses
  %i.in = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.io = zext i1 %i.in to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.ip = phi i64 [ %i.il, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.iq = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.io, %.noexc219 ] ; 2 uses
  store i64 %i.iq, ptr %i.h, align 8, !tbaa !263
  %i.ir = load i32, ptr %i.w, align 16, !tbaa !826
  %i.is = sub nsw i32 %i.v, %i.ir                 ; 2 uses
  %i.it = sdiv i32 %i.is, 32
  store i32 %i.it, ptr %i.j, align 8, !tbaa !262
  %i.iu = srem i32 %i.is, 32                      ; 3 uses
  %i.iv = icmp eq i32 %i.iu, 0
  %.not19.i221 = icmp eq i64 %i.iq, 0
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE:bb.a

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph34.i.i ], [ %i.bd, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 9 uses
  %i.x = load i64, ptr %i.t, align 8, !tbaa !178
  %i.y = sub i64 %i.x, %i.w
  %i.z = ptrtoint ptr %.02732.i.i to i64          ; 2 uses
  %i.aa = sub i64 %i.u, %i.z                      ; 4 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !171
  %i.ad = add i64 %i.aa, %i.w
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.ad), !inline_history !22
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !179 ; 2 uses
  %i.af = load i64, ptr %i.t, align 8, !tbaa !178
  %i.ag = sub i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ag)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.w, %bb.d ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.aa, %bb.d ] ; 13 uses
  %i.ai = load ptr, ptr %.sroa.022.0, align 8, !tbaa !177 ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %.026.i.i, %i.aj
  %i.am = sub i64 %i.z, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !54
  %wide.load41 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !tbaa !54
  store <16 x i8> %wide.load41, ptr %i.ar, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1004

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.at, align 1, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.au, align 1, !tbaa !54
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1005

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.025.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !54
  %i.az = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1006

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.az, %.lr.ph.i.i.prol ]
  %i.ba = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.s, align 8, !tbaa !179
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %i.bc = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.f ]
  %i.bd = add i64 %i.bc, %.025.i.i                ; 2 uses
  store i64 %i.bd, ptr %i.s, align 8, !tbaa !179
  %i.be = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.d, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.030.i.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !54
  %i.bi = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !54
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !54
  %i.bm = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !54
  %i.bq = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !54
  %i.bu = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bu, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1007

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bv = load ptr, ptr %i.m, align 8, !tbaa !221 ; 3 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit

bb.g:                                             ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %i.bw = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not12 = icmp eq ptr %i.bv, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !1008

.loopexit:                                        ; preds = %bb.g, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bw, %bb.g ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !179 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !178
  %i.cc = icmp ugt i64 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

bb.h:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !171
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.bz), !inline_history !15
  %.pre.i.i16 = load i64, ptr %i.bx, align 8, !tbaa !179 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit18

_ZN3fmt3v1214basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.h
  %.pre-phi.i.i15 = phi i64 [ %i.bz, %.loopexit ], [ %.pre2.i.i17, %bb.h ]
  %i.cf = phi i64 [ %i.by, %.loopexit ], [ %.pre.i.i16, %bb.h ]
  %i.cg = load ptr, ptr %.sroa.022.127, align 8, !tbaa !177
  store i64 %.pre-phi.i.i15, ptr %i.bx, align 8, !tbaa !179
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 34, ptr %i.ch, align 1, !tbaa !54
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEEUljNSB_IcEEE_EEvSG_S7_(ptr %0, i64 %1, ptr noundef byval(%class.anon.107) align 8 %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %3 = alloca %class.anon.111, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1016
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.024 = phi ptr [ %0, %bb.b ], [ %i.bp, %bb.d ] ; 8 uses
  %.not30 = icmp ult ptr %.024, %i.e
  br i1 %.not30, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %.024, align 1, !tbaa !54
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.88, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.024, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !54    ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.024, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !54  ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.024, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !54  ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !53
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i32 64, i32 0
  %.mask.i.i = and i32 %i.an, 2147481600
  %i.as = icmp eq i32 %.mask.i.i, 55296
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = icmp samesign ugt i32 %i.an, 1114111
  %i.av = select i1 %i.au, i32 256, i32 0
  %i.aw = lshr i8 %i.v, 2
  %i.ax = and i8 %i.aw, 48
  %i.ay = lshr i8 %i.ab, 4
  %i.az = and i8 %i.ay, 12
  %i.ba = lshr i8 %i.ah, 6
  %i.bb = or disjoint i8 %i.az, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ar, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.av
  %i.bg = or disjoint i32 %i.bf, %i.at
  %i.bh = xor i32 %i.bg, 42
  %i.bi = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.l
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1
  %i.bm = add nsw i64 %i.o, %i.l
  %i.bn = select i1 %.not.i, i64 %i.bm, i64 1
  %i.bo = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.bl, ptr nonnull %.024, i64 %i.bn)
  %i.bp = select i1 %.not.i, ptr %i.p, ptr %i.u
  br i1 %i.bo, label %bb.c, label %.thread, !llvm.loop !1010

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %.024, %bb.c ]   ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 8 uses
  %i.bu = icmp eq ptr %i.bq, %.2
  br i1 %i.bu, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bt, 8
  %4 = ptrtoaddr ptr %i.b to i64
  %i.bv = sub i64 %i.bs, %4
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond61 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond61, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.bt, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bw = and i64 %i.bt, 24
  %n.vec = and i64 %i.bt, -32                     ; 5 uses
  %i.bx = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.by = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !54
  %wide.load50 = load <16 x i8>, ptr %i.bz, align 1, !tbaa !54
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !54
  store <16 x i8> %wide.load50, ptr %i.ca, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1011

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.bt, -8                    ; 4 uses
  %i.cc = getelementptr i8, ptr %i.b, i64 %n.vec52
  %i.cd = getelementptr i8, ptr %.2, i64 %n.vec52
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %i.b, i64 %index53
  %next.gep55 = getelementptr i8, ptr %.2, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep55, align 1, !tbaa !54
  store <8 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !54
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1012

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.bt, %n.vec52
  br i1 %cmp.n58, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bx, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 3 uses
  %i.cf = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph63 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.cg = sub i64 %i.cf, %.057.i.ph63
  %xtraiter = and i64 %i.cg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ch, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.057.i.prol, align 1, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ci, ptr %.08.i.prol, align 1, !tbaa !54
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1013

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ch, %.lr.ph.i.prol ]
  %i.ck = sub i64 %.057.i.ph63, %i.cf
  %i.cl = icmp ugt i64 %i.ck, -8
  br i1 %i.cl, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cn = load i8, ptr %.057.i, align 1, !tbaa !54
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cn, ptr %.08.i, align 1, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !54
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !54
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !54
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !54
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !54
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.df = load i8, ptr %i.db, align 1, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.di = load i8, ptr %i.de, align 1, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !54
  %.not.i33.7 = icmp eq ptr %i.dh, %i.bq
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1014

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  %.3 = phi ptr [ %.4, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 2 uses
  %.0 = phi ptr [ %.1, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 7 uses
  %i.dl = load i8, ptr %.0, align 1, !tbaa !54
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 3                       ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @.str.88, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !54
  %i.dr = sext i8 %i.dq to i64                    ; 6 uses
  %i.ds = getelementptr inbounds i8, ptr %.0, i64 %i.dr
  %.not.i.i34 = lshr i32 -2130771968, %i.dn
  %i.dt = and i32 %.not.i.i34, 1
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du
  %i.dw = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dr
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !53
  %i.dy = and i32 %i.dx, %i.dm
  %i.dz = shl nuw nsw i32 %i.dy, 18
  %i.ea = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !54  ; 2 uses
  %i.ec = and i8 %i.eb, 63
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 12
  %i.ef = or disjoint i32 %i.ee, %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !54  ; 2 uses
  %i.ei = and i8 %i.eh, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 6
  %i.el = or disjoint i32 %i.ek, %i.ef
  %i.em = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !54  ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = or disjoint i32 %i.el, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dr
  %i.es = load i32, ptr %i.er, align 4, !tbaa !53
  %i.et = lshr i32 %i.eq, %i.es                   ; 4 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dr
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !53
  %i.ew = icmp ult i32 %i.et, %i.ev
  %i.ex = select i1 %i.ew, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.et, 2147481600
  %i.ey = icmp eq i32 %.mask.i.i35, 55296
  %i.ez = select i1 %i.ey, i32 128, i32 0
  %i.fa = icmp samesign ugt i32 %i.et, 1114111
  %i.fb = select i1 %i.fa, i32 256, i32 0
  %i.fc = lshr i8 %i.eb, 2
  %i.fd = and i8 %i.fc, 48
  %i.fe = lshr i8 %i.eh, 4
  %i.ff = and i8 %i.fe, 12
  %i.fg = lshr i8 %i.en, 6
  %i.fh = or disjoint i8 %i.ff, %i.fd
  %i.fi = or disjoint i8 %i.fh, %i.fg
  %i.fj = zext nneg i8 %i.fi to i32
  %i.fk = or disjoint i32 %i.ex, %i.fj
  %i.fl = or disjoint i32 %i.fk, %i.fb
  %i.fm = or disjoint i32 %i.fl, %i.ez
  %i.fn = xor i32 %i.fm, 42
  %i.fo = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dr
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !53
  %i.fq = lshr i32 %i.fn, %i.fp
  %.not.i36 = icmp eq i32 %i.fq, 0                ; 3 uses
  %i.fr = select i1 %.not.i36, i32 %i.et, i32 -1
  %i.fs = add nsw i64 %i.du, %i.dr
  %i.ft = select i1 %.not.i36, i64 %i.fs, i64 1
  %i.fu = call noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.fr, ptr %.3, i64 %i.ft) ; 3 uses
  %i.fv = select i1 %.not.i36, ptr %i.dv, ptr %i.ea ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_:bb.a
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !308
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ag, align 8, !tbaa !58
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !82
  %i.ah = tail call { ptr, i64 } @_ZN3fmt3v126detail20write_escaped_stringIcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEESA_SA_SC_(ptr %.sroa.09.0, i64 %i.af, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !227 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !308 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am ; 2 uses
  %.not31.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not31.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph34.i.i.i

.lr.ph34.i.i.i:                                   ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !179
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph34.i.i.i
  %i.as = phi i64 [ %.pre.i.i.i, %.lr.ph34.i.i.i ], [ %i.bz, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.i = phi ptr [ %i.ak, %.lr.ph34.i.i.i ], [ %i.ca, %._crit_edge.i.i.i ] ; 9 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !178
  %i.au = sub i64 %i.at, %i.as
  %i.av = ptrtoint ptr %.02732.i.i.i to i64       ; 2 uses
  %i.aw = sub i64 %i.aq, %i.av                    ; 4 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !171
  %i.az = add i64 %i.aw, %i.as
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.az), !inline_history !1017
  %i.ba = load i64, ptr %i.ao, align 8, !tbaa !179 ; 2 uses
  %i.bb = load i64, ptr %i.ap, align 8, !tbaa !178
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !177 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !54
  %wide.load36 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !54
  store <16 x i8> %wide.load36, ptr %i.bn, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1018

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !71

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bq, align 1, !tbaa !54
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1019

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !54
  %i.bv = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1020

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.prol ]
  %i.bw = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !179
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bz = add i64 %i.by, %.025.i.i.i              ; 2 uses
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !179
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !54
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !54
  %i.ce = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !54
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !54
  %i.ci = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !54
  %i.cm = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !54
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !54
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1021

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = icmp ugt i64 %1, 3
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1
  %i.e = getelementptr i8, ptr %i.d, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.f = load i8, ptr %.02455, align 1, !tbaa !54
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @.str.88, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !54
  %i.l = sext i8 %i.k to i64                      ; 6 uses
  %i.m = getelementptr inbounds i8, ptr %.02455, i64 %i.l
  %.not.i.i = lshr i32 -2130771968, %i.h
  %i.n = and i32 %.not.i.i, 1
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.l
  %i.r = load i32, ptr %i.q, align 4, !tbaa !53
  %i.s = and i32 %i.r, %i.g
  %i.t = shl nuw nsw i32 %i.s, 18
  %i.u = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !54    ; 2 uses
  %i.w = and i8 %i.v, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 12
  %i.z = or disjoint i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !54  ; 2 uses
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 6
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !54  ; 2 uses
  %i.ai = and i8 %i.ah, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.l
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  %i.an = lshr i32 %i.ak, %i.am                   ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.l
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !53
  %i.aq = icmp ult i32 %i.an, %i.ap
  %i.ar = select i1 %i.aq, i32 64, i32 0
  %.mask.i.i = and i32 %i.an, 2147481600
  %i.as = icmp eq i32 %.mask.i.i, 55296
  %i.at = select i1 %i.as, i32 128, i32 0
  %i.au = icmp samesign ugt i32 %i.an, 1114111
  %i.av = select i1 %i.au, i32 256, i32 0
  %i.aw = lshr i8 %i.v, 2
  %i.ax = and i8 %i.aw, 48
  %i.ay = lshr i8 %i.ab, 4
  %i.az = and i8 %i.ay, 12
  %i.ba = lshr i8 %i.ah, 6
  %i.bb = or disjoint i8 %i.az, %i.ax
  %i.bc = or disjoint i8 %i.bb, %i.ba
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ar, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.av
  %i.bg = or disjoint i32 %i.bf, %i.at
  %i.bh = xor i32 %i.bg, 42
  %i.bi = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.l
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.bk = lshr i32 %i.bh, %i.bj
  %.not.i = icmp eq i32 %i.bk, 0                  ; 3 uses
  %i.bl = select i1 %.not.i, i32 %i.an, i32 -1    ; 4 uses
  %i.bm = icmp ult i32 %i.bl, 32
  br i1 %i.bm, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bl, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bn = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bl)
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bo = add nsw i64 %i.o, %i.l
  %i.bp = select i1 %.not.i, i64 %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bp
  store ptr %.02455, ptr %2, align 8, !tbaa !58
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !58
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bl, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !53
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.br = select i1 %.not.i, ptr %i.p, ptr %i.u   ; 3 uses
  %.not30 = icmp ult ptr %i.br, %i.e
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1022

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %i.bw = icmp eq ptr %i.bs, %.2
  br i1 %i.bw, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %3 = ptrtoaddr ptr %i.b to i64
  %i.bx = sub i64 %i.bu, %3
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !54
  %wide.load109 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !54
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !54
  store <16 x i8> %wide.load109, ptr %i.cc, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1023

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !66

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.bv, -8                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec111
  %i.cf = getelementptr i8, ptr %.2, i64 %n.vec111
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 3 uses
  %next.gep113 = getelementptr i8, ptr %i.b, i64 %index112
  %next.gep114 = getelementptr i8, ptr %.2, i64 %index112
  %wide.load115 = load <8 x i8>, ptr %next.gep114, align 1, !tbaa !54
  store <8 x i8> %wide.load115, ptr %next.gep113, align 1, !tbaa !54
  %index.next116 = add nuw i64 %index112, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next116, %n.vec111
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1024

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.bv, %n.vec111
  br i1 %cmp.n117, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph136 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph136
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !54
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !54
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1025

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph136, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !54
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !54
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !54
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !54
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !54
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !54
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !54
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !54
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !54
  %.not.i33.7 = icmp eq ptr %i.dj, %i.bs
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1026

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bv
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.fz, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %i.dn = load i8, ptr %.0, align 1, !tbaa !54
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.88, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !54
  %i.dt = sext i8 %i.ds to i64                    ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.0, i64 %i.dt
  %.not.i.i34 = lshr i32 -2130771968, %i.dp
  %i.dv = and i32 %.not.i.i34, 1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !53
  %i.ea = and i32 %i.dz, %i.do
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !54  ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !54  ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !54  ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dt
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !53
  %i.ev = lshr i32 %i.es, %i.eu                   ; 4 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !53
  %i.ey = icmp ult i32 %i.ev, %i.ex
  %i.ez = select i1 %i.ey, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ev, 2147481600
  %i.fa = icmp eq i32 %.mask.i.i35, 55296
  %i.fb = select i1 %i.fa, i32 128, i32 0
  %i.fc = icmp samesign ugt i32 %i.ev, 1114111
  %i.fd = select i1 %i.fc, i32 256, i32 0
  %i.fe = lshr i8 %i.ed, 2
  %i.ff = and i8 %i.fe, 48
  %i.fg = lshr i8 %i.ej, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.ep, 6
  %i.fj = or disjoint i8 %i.fh, %i.ff
  %i.fk = or disjoint i8 %i.fj, %i.fi
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.ez, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fd
  %i.fo = or disjoint i32 %i.fn, %i.fb
  %i.fp = xor i32 %i.fo, 42
  %i.fq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dt
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !53
  %i.fs = lshr i32 %i.fp, %i.fr
  %.not.i36 = icmp eq i32 %i.fs, 0                ; 3 uses
  %i.ft = select i1 %.not.i36, i32 %i.ev, i32 -1  ; 4 uses
  %i.fu = icmp ult i32 %i.ft, 32
  br i1 %i.fu, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

end_hunk_3

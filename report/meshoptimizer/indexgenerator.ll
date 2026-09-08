Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/indexgenerator?download=true
inline.NumInlined: 95
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@meshopt_generateShadowIndexBufferMulti:bb.a
  unreachable

bb.k:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit.i, %bb.a
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.dg
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_generatePositionRemap(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.meshopt_Allocator, align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4, i8 0, i64 200, i1 false)
  %i.a = lshr i64 %2, 2
  %i.b = add i64 %i.a, %2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.d, %bb.b ]   ; 5 uses
  %i.c = icmp ult i64 %.0.i, %i.b
  %i.d = shl i64 %.0.i, 1
  br i1 %i.c, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit:                 ; preds = %bb.b
  %i.e = lshr i64 %3, 2                           ; 2 uses
  %i.f = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.g = icmp ugt i64 %.0.i, 4611686018427387903
  %i.h = shl i64 %.0.i, 2                         ; 2 uses
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = invoke noundef ptr %i.f(i64 noundef %i.i)
          to label %bb.c unwind label %bb.h, !inline_history !2 ; 5 uses

bb.c:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  store ptr %i.j, ptr %4, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 -1, i64 %i.h, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.lr.ph.i, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.c
  %i.k = add i64 %.0.i, -1                        ; 3 uses
  br label %bb.e

.lr.ph.i:                                         ; preds = %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, %bb.c
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.m = load ptr, ptr %4, align 8, !tbaa !28
  invoke void %i.l(ptr noundef %i.m)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void

bb.e:                                             ; preds = %.lr.ph34, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit
  %.033 = phi i64 [ 0, %.lr.ph34 ], [ %i.br, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ] ; 4 uses
  %i.p = trunc i64 %.033 to i32                   ; 2 uses
  %i.q = and i64 %.033, 4294967295
  %i.r = mul i64 %i.q, %i.e
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r ; 3 uses
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = icmp eq i32 %i.t, -2147483648
  %i.z = select i1 %i.y, i32 0, i32 %i.t          ; 2 uses
  %i.aa = icmp eq i32 %i.v, -2147483648
  %i.ab = select i1 %i.aa, i32 0, i32 %i.v        ; 2 uses
  %i.ac = icmp eq i32 %i.x, -2147483648
  %i.ad = select i1 %i.ac, i32 0, i32 %i.x        ; 2 uses
  %i.ae = lshr i32 %i.z, 17
  %i.af = xor i32 %i.ae, %i.z
  %i.ag = lshr i32 %i.ab, 17
  %i.ah = xor i32 %i.ag, %i.ab
  %i.ai = lshr i32 %i.ad, 17
  %i.aj = xor i32 %i.ai, %i.ad
  %i.ak = mul i32 %i.af, 73856093
  %i.al = mul i32 %i.ah, 19349663
  %i.am = xor i32 %i.al, %i.ak
  %i.an = mul i32 %i.aj, 83492791
  %i.ao = xor i32 %i.am, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = and i64 %i.k, %i.ap                     ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  %i.au = bitcast i32 %i.t to float
  %i.av = bitcast i32 %i.v to float
  %i.aw = bitcast i32 %i.x to float
  br i1 %i.at, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i
  %.pr = phi i32 [ %i.bm, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i ], [ %i.as, %bb.e ] ; 2 uses
  %.02318.i32 = phi i64 [ %i.bk, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i ], [ %i.aq, %bb.e ]
  %.02219.i31 = phi i64 [ %i.bi, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i ], [ 0, %bb.e ]
  %i.ax = zext i32 %.pr to i64
  %i.ay = mul i64 %i.e, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay ; 3 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !37
  %i.bb = fcmp une float %i.ba, %i.au
  br i1 %i.bb, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !37
  %i.be = fcmp une float %i.bd, %i.av
  br i1 %i.be, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !37
  %i.bh = fcmp une float %i.bg, %i.aw
  br i1 %i.bh, label %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit

_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i: ; preds = %bb.g, %bb.f, %.lr.ph
  %i.bi = add i64 %.02219.i31, 1                  ; 3 uses
  %i.bj = add i64 %i.bi, %.02318.i32
  %i.bk = and i64 %i.bj, %i.k                     ; 3 uses
  %.not.i23 = icmp ule i64 %i.bi, %i.k
  tail call void @llvm.assume(i1 %.not.i23)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i, %bb.e
  %.02318.i.lcssa30 = phi i64 [ %i.aq, %bb.e ], [ %i.bk, %_ZNK7meshopt18VertexCustomHasher5equalEjj.exit.thread.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.02318.i.lcssa30
  store i32 %i.p, ptr %i.bo, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit

_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit: ; preds = %bb.g, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread
  %i.bp = phi i32 [ %i.p, %_ZN7meshoptL10hashLookupIjNS_18VertexCustomHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.pr, %bb.g ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.033
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !31
  %i.br = add nuw i64 %.033, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %2
  br i1 %exitcond.not, label %.lr.ph.i, label %bb.e, !llvm.loop !67

bb.h:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  resume { ptr, i32 } %i.bs
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_generateAdjacencyIndexBuffer(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.b = icmp ugt i64 %4, 4611686018427387903
  %i.c = shl nuw i64 %4, 2
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = invoke noundef ptr %i.a(i64 noundef %i.d)
          to label %bb.b unwind label %bb.g, !inline_history !2 ; 23 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store i64 1, ptr %i.f, align 8, !tbaa !25
  store ptr %i.e, ptr %6, align 8, !tbaa !28
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjPKfmmR17meshopt_Allocator(ptr noundef %i.e, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(200) %6)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %2, 2
  %i.h = add i64 %i.g, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ 1, %bb.c ], [ %i.j, %bb.d ]   ; 8 uses
  %i.i = icmp ult i64 %.0.i, %i.h
  %i.j = shl i64 %.0.i, 1
  br i1 %i.i, label %bb.d, label %_ZN7meshoptL11hashBucketsEm.exit, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit:                 ; preds = %bb.d
  %i.k = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.l = icmp ugt i64 %.0.i, 2305843009213693951
  %i.m = shl i64 %.0.i, 3                         ; 2 uses
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = invoke noundef ptr %i.k(i64 noundef %i.n)
          to label %bb.e unwind label %bb.h, !inline_history !7 ; 17 uses

bb.e:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %i.p = load i64, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %i.q = add nsw i64 %i.p, 1                      ; 2 uses
  store i64 %i.q, ptr %i.f, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.p
  store ptr %i.o, ptr %i.r, align 8, !tbaa !28
  %i.s = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.t = icmp ugt i64 %.0.i, 4611686018427387903
  %i.u = shl i64 %.0.i, 2                         ; 2 uses
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = invoke noundef ptr %i.s(i64 noundef %i.v)
          to label %bb.f unwind label %bb.i, !inline_history !2 ; 8 uses

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i64 %i.p, 2                      ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.q
  store ptr %i.w, ptr %i.y, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 -1, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.u, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.preheader98.lr.ph

.preheader98.lr.ph:                               ; preds = %bb.f
  %i.z = add i64 %.0.i, -1                        ; 9 uses
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.lr.ph, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2
  %.065110 = phi i64 [ 0, %.preheader98.lr.ph ], [ %i.fh, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2 ] ; 2 uses
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %.065110 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 4      ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 8      ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31 ; 2 uses
  %i.ag = zext i32 %i.ab to i64                   ; 2 uses
  %i.ah = shl nuw i64 %i.ag, 32
  %i.ai = zext i32 %i.ad to i64                   ; 3 uses
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ag
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !31 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31 ; 4 uses
  %i.ao = lshr i32 %i.an, 18
  %i.ap = xor i32 %i.ao, %i.al
  %i.aq = mul i32 %i.ap, 1540483477               ; 2 uses
  %i.ar = lshr i32 %i.aq, 22
  %i.as = xor i32 %i.ar, %i.an
  %i.at = mul i32 %i.as, 1540483477               ; 2 uses
  %i.au = lshr i32 %i.at, 17
  %i.av = xor i32 %i.au, %i.aq
  %i.aw = mul i32 %i.av, 1540483477
  %i.ax = lshr i32 %i.aw, 19
  %i.ay = xor i32 %i.ax, %i.at
  %i.az = mul i32 %i.ay, 1540483477
  %i.ba = zext i32 %i.az to i64
  %i.bb = and i64 %i.z, %i.ba                     ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph116:                                        ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2
  %i.bf = add i64 %.0.i, -1                       ; 9 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph:                                           ; preds = %.preheader98, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i
  %.pr = phi i64 [ %i.bv, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ], [ %i.bd, %.preheader98 ] ; 2 uses
  %.02313.i107 = phi i64 [ %i.bt, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ], [ %i.bb, %.preheader98 ]
  %.02214.i106 = phi i64 [ %i.br, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ], [ 0, %.preheader98 ]
  %i.bj = lshr i64 %.pr, 32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !31
  %i.bm = icmp eq i32 %i.bl, %i.al
  br i1 %i.bm, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i:         ; preds = %.lr.ph
  %i.bn = and i64 %.pr, 4294967295
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = icmp eq i32 %i.bp, %i.an
  br i1 %i.bq, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i:  ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i, %.lr.ph
  %i.br = add i64 %.02214.i106, 1                 ; 3 uses
  %i.bs = add i64 %i.br, %.02313.i107
  %i.bt = and i64 %i.bs, %i.z                     ; 3 uses
  %.not.i = icmp ule i64 %i.br, %i.z
  tail call void @llvm.assume(i1 %.not.i)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !40 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, -1
  br i1 %i.bw, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i, %.preheader98
  %.02313.i.lcssa105 = phi i64 [ %i.bb, %.preheader98 ], [ %i.bt, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02313.i.lcssa105
  store i64 %i.aj, ptr %i.bx, align 8, !tbaa !40
  %i.by = shl nuw nsw i64 %.02313.i.lcssa105, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.by
  store i32 %i.af, ptr %i.bz, align 4, !tbaa !31
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !31 ; 2 uses
  %.pre122 = load i32, ptr %i.ae, align 4, !tbaa !31
  %.pre123 = load i32, ptr %i.aa, align 4, !tbaa !31
  %.phi.trans.insert = zext i32 %.pre to i64      ; 2 uses
  %.phi.trans.insert124 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.phi.trans.insert
  %.pre125 = load i32, ptr %.phi.trans.insert124, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread
  %.pre-phi = phi i64 [ %.phi.trans.insert, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.ai, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i ]
  %i.ca = phi i32 [ %.pre125, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.an, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i ] ; 2 uses
  %i.cb = phi i32 [ %.pre123, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.ab, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i ] ; 2 uses
  %i.cc = phi i32 [ %.pre122, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.af, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i ]
  %i.cd = phi i32 [ %.pre, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.ad, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i ]
  %i.ce = shl nuw i64 %.pre-phi, 32
  %i.cf = zext i32 %i.cc to i64                   ; 3 uses
  %i.cg = or disjoint i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !31 ; 4 uses
  %i.cj = lshr i32 %i.ci, 18
  %i.ck = xor i32 %i.cj, %i.ca
  %i.cl = mul i32 %i.ck, 1540483477               ; 2 uses
  %i.cm = lshr i32 %i.cl, 22
  %i.cn = xor i32 %i.cm, %i.ci
  %i.co = mul i32 %i.cn, 1540483477               ; 2 uses
  %i.cp = lshr i32 %i.co, 17
  %i.cq = xor i32 %i.cp, %i.cl
  %i.cr = mul i32 %i.cq, 1540483477
  %i.cs = lshr i32 %i.cr, 19
  %i.ct = xor i32 %i.cs, %i.co
  %i.cu = mul i32 %i.ct, 1540483477
  %i.cv = zext i32 %i.cu to i64
  %i.cw = and i64 %i.z, %i.cv                     ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !40 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1
  %.pr.1 = phi i64 [ %i.dm, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ], [ %i.cy, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ] ; 2 uses
  %.02313.i107.1 = phi i64 [ %i.dk, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ], [ %i.cw, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ]
  %.02214.i106.1 = phi i64 [ %i.di, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ]
  %i.da = lshr i64 %.pr.1, 32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !31
  %i.dd = icmp eq i32 %i.dc, %i.ca
  br i1 %i.dd, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1:       ; preds = %.lr.ph.1
  %i.de = and i64 %.pr.1, 4294967295
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !31
  %i.dh = icmp eq i32 %i.dg, %i.ci
  br i1 %i.dh, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1, %.lr.ph.1
  %i.di = add i64 %.02214.i106.1, 1               ; 3 uses
  %i.dj = add i64 %i.di, %.02313.i107.1
  %i.dk = and i64 %i.dj, %i.z                     ; 3 uses
  %.not.i.1 = icmp ule i64 %i.di, %i.z
  tail call void @llvm.assume(i1 %.not.i.1)
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !40 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1, label %.lr.ph.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit
  %.02313.i.lcssa105.1 = phi i64 [ %i.cw, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ], [ %i.dk, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02313.i.lcssa105.1
  store i64 %i.cg, ptr %i.do, align 8, !tbaa !40
  %i.dp = shl nuw nsw i64 %.02313.i.lcssa105.1, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.dp
  store i32 %i.cb, ptr %i.dq, align 4, !tbaa !31
  %.pre126 = load i32, ptr %i.ae, align 4, !tbaa !31
  %.pre127 = load i32, ptr %i.aa, align 4, !tbaa !31
  %.pre128 = load i32, ptr %i.ac, align 4, !tbaa !31
  %.phi.trans.insert129 = zext i32 %.pre126 to i64 ; 2 uses
  %.phi.trans.insert130 = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.phi.trans.insert129
  %.pre131 = load i32, ptr %.phi.trans.insert130, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1
  %.pre-phi132 = phi i64 [ %.phi.trans.insert129, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1 ], [ %i.cf, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1 ]
  %i.dr = phi i32 [ %.pre131, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1 ], [ %i.ci, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1 ] ; 2 uses
  %i.ds = phi i32 [ %.pre128, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1 ], [ %i.cd, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1 ]
  %i.dt = phi i32 [ %.pre127, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1 ], [ %i.cb, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1 ]
  %i.du = shl nuw i64 %.pre-phi132, 32
  %i.dv = zext i32 %i.dt to i64                   ; 2 uses
  %i.dw = or disjoint i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !31 ; 3 uses
  %i.dz = lshr i32 %i.dy, 18
  %i.ea = xor i32 %i.dz, %i.dr
  %i.eb = mul i32 %i.ea, 1540483477               ; 2 uses
  %i.ec = lshr i32 %i.eb, 22
  %i.ed = xor i32 %i.ec, %i.dy
  %i.ee = mul i32 %i.ed, 1540483477               ; 2 uses
  %i.ef = lshr i32 %i.ee, 17
  %i.eg = xor i32 %i.ef, %i.eb
  %i.eh = mul i32 %i.eg, 1540483477
  %i.ei = lshr i32 %i.eh, 19
  %i.ej = xor i32 %i.ei, %i.ee
  %i.ek = mul i32 %i.ej, 1540483477
  %i.el = zext i32 %i.ek to i64
  %i.em = and i64 %i.z, %i.el                     ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !40 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2
  %.pr.2 = phi i64 [ %i.fc, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ], [ %i.eo, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ] ; 2 uses
  %.02313.i107.2 = phi i64 [ %i.fa, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ], [ %i.em, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ]
  %.02214.i106.2 = phi i64 [ %i.ey, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ]
  %i.eq = lshr i64 %.pr.2, 32
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !31
  %i.et = icmp eq i32 %i.es, %i.dr
  br i1 %i.et, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2:       ; preds = %.lr.ph.2
  %i.eu = and i64 %.pr.2, 4294967295
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !31
  %i.ex = icmp eq i32 %i.ew, %i.dy
  br i1 %i.ex, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2, %.lr.ph.2
  %i.ey = add i64 %.02214.i106.2, 1               ; 3 uses
  %i.ez = add i64 %i.ey, %.02313.i107.2
  %i.fa = and i64 %i.ez, %i.z                     ; 3 uses
  %.not.i.2 = icmp ule i64 %i.ey, %i.z
  tail call void @llvm.assume(i1 %.not.i.2)
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fa
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !40 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, -1
  br i1 %i.fd, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2, label %.lr.ph.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1
  %.02313.i.lcssa105.2 = phi i64 [ %i.em, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ], [ %i.fa, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02313.i.lcssa105.2
  store i64 %i.dw, ptr %i.fe, align 8, !tbaa !40
  %i.ff = shl nuw nsw i64 %.02313.i.lcssa105.2, 2
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ff
  store i32 %i.ds, ptr %i.fg, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2
  %i.fh = add i64 %.065110, 3                     ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %2
  br i1 %i.fi, label %.preheader98, label %.lr.ph116, !llvm.loop !68

._crit_edge:                                      ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2, %bb.f
  %.not3.i = icmp eq i64 %i.x, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.j
  %.04.i = phi i64 [ %i.fn, %bb.j ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.fk = getelementptr [8 x i8], ptr %6, i64 %.04.i
  %i.fl = getelementptr i8, ptr %i.fk, i64 -8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !28
  invoke void %i.fj(ptr noundef %i.fm)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.fn = add i64 %.04.i, -1                      ; 2 uses
  %.not.i80 = icmp eq i64 %i.fn, 0
  br i1 %.not.i80, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !0

bb.k:                                             ; preds = %.lr.ph.i
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  tail call void @__clang_call_terminate(ptr %i.fp) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.j, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

bb.l:                                             ; preds = %.lr.ph116, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2
  %.063115 = phi i64 [ 0, %.lr.ph116 ], [ %i.kh, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2 ] ; 3 uses
  %i.fq = getelementptr [4 x i8], ptr %1, i64 %.063115 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !31 ; 4 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !31 ; 4 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = zext i32 %i.fr to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fu
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !31 ; 5 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fv
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !31 ; 5 uses
  %i.ga = lshr i32 %i.fz, 18
  %i.gb = xor i32 %i.ga, %i.fx
  %i.gc = mul i32 %i.gb, 1540483477               ; 2 uses
  %i.gd = lshr i32 %i.gc, 22
  %i.ge = xor i32 %i.gd, %i.fz
  %i.gf = mul i32 %i.ge, 1540483477               ; 2 uses
  %i.gg = lshr i32 %i.gf, 17
  %i.gh = xor i32 %i.gg, %i.gc
  %i.gi = mul i32 %i.gh, 1540483477
  %i.gj = lshr i32 %i.gi, 19
  %i.gk = xor i32 %i.gj, %i.gf
  %i.gl = mul i32 %i.gk, 1540483477
  %i.gm = zext i32 %i.gl to i64
  %i.gn = and i64 %i.bf, %i.gm                    ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !40 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -1
  br i1 %i.gq, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.l, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83
  %.pr94 = phi i64 [ %i.hd, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83 ], [ %i.gp, %bb.l ] ; 2 uses
  %.02313.i82112 = phi i64 [ %i.hb, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83 ], [ %i.gn, %bb.l ] ; 2 uses
  %.02214.i81111 = phi i64 [ %i.gz, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83 ], [ 0, %bb.l ]
  %i.gr = lshr i64 %.pr94, 32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31
  %i.gu = icmp eq i32 %i.gt, %i.fx
  br i1 %i.gu, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86:       ; preds = %.lr.ph113
  %i.gv = and i64 %.pr94, 4294967295
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !31
  %i.gy = icmp eq i32 %i.gx, %i.fz
  br i1 %i.gy, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86, %.lr.ph113
  %i.gz = add i64 %.02214.i81111, 1               ; 3 uses
  %i.ha = add i64 %i.gz, %.02313.i82112
  %i.hb = and i64 %i.ha, %i.bf                    ; 2 uses
  %.not.i84 = icmp ule i64 %i.gz, %i.bf
  tail call void @llvm.assume(i1 %.not.i84)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.hb
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !40 ; 2 uses
  %i.he = icmp eq i64 %i.hd, -1
  br i1 %i.he, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread, label %.lr.ph113

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86
  %i.hf = shl nuw nsw i64 %.02313.i82112, 2
  %i.hg = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83, %bb.l, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89
  %i.hi = phi i32 [ %i.hh, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89 ], [ %i.fr, %bb.l ], [ %i.fr, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83 ]
  %i.hj = getelementptr i8, ptr %i.fq, i64 8
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !31 ; 4 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !31 ; 5 uses
  %i.ho = lshr i32 %i.fx, 18
  %i.hp = xor i32 %i.ho, %i.hn
  %i.hq = mul i32 %i.hp, 1540483477               ; 2 uses
  %i.hr = lshr i32 %i.hq, 22
  %i.hs = xor i32 %i.hr, %i.fx
  %i.ht = mul i32 %i.hs, 1540483477               ; 2 uses
  %i.hu = lshr i32 %i.ht, 17
  %i.hv = xor i32 %i.hu, %i.hq
  %i.hw = mul i32 %i.hv, 1540483477
  %i.hx = lshr i32 %i.hw, 19
  %i.hy = xor i32 %i.hx, %i.ht
  %i.hz = mul i32 %i.hy, 1540483477
  %i.ia = zext i32 %i.hz to i64
  %i.ib = and i64 %i.bf, %i.ia                    ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ib
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !40 ; 2 uses
  %i.ie = icmp eq i64 %i.id, -1
  br i1 %i.ie, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1, label %.lr.ph113.1

.lr.ph113.1:                                      ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1
  %.pr94.1 = phi i64 [ %i.ir, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1 ], [ %i.id, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread ] ; 2 uses
  %.02313.i82112.1 = phi i64 [ %i.ip, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1 ], [ %i.ib, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread ] ; 2 uses
  %.02214.i81111.1 = phi i64 [ %i.in, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread ]
  %i.if = lshr i64 %.pr94.1, 32
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !31
  %i.ii = icmp eq i32 %i.ih, %i.hn
  br i1 %i.ii, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.1:     ; preds = %.lr.ph113.1
  %i.ij = and i64 %.pr94.1, 4294967295
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !31
  %i.im = icmp eq i32 %i.il, %i.fx
  br i1 %i.im, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.1, %.lr.ph113.1
  %i.in = add i64 %.02214.i81111.1, 1             ; 3 uses
  %i.io = add i64 %i.in, %.02313.i82112.1
  %i.ip = and i64 %i.io, %i.bf                    ; 2 uses
  %.not.i84.1 = icmp ule i64 %i.in, %i.bf
  tail call void @llvm.assume(i1 %.not.i84.1)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ip
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !40 ; 2 uses
  %i.is = icmp eq i64 %i.ir, -1
  br i1 %i.is, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1, label %.lr.ph113.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.1
  %i.it = shl nuw nsw i64 %.02313.i82112.1, 2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.1
  %i.iw = phi i32 [ %i.iv, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.1 ], [ %i.ft, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread ], [ %i.ft, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.1 ]
  %i.ix = lshr i32 %i.hn, 18
  %i.iy = xor i32 %i.ix, %i.fz
  %i.iz = mul i32 %i.iy, 1540483477               ; 2 uses
  %i.ja = lshr i32 %i.iz, 22
  %i.jb = xor i32 %i.ja, %i.hn
  %i.jc = mul i32 %i.jb, 1540483477               ; 2 uses
  %i.jd = lshr i32 %i.jc, 17
  %i.je = xor i32 %i.jd, %i.iz
  %i.jf = mul i32 %i.je, 1540483477
  %i.jg = lshr i32 %i.jf, 19
  %i.jh = xor i32 %i.jg, %i.jc
  %i.ji = mul i32 %i.jh, 1540483477
  %i.jj = zext i32 %i.ji to i64
  %i.jk = and i64 %i.bf, %i.jj                    ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jk
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !40 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, -1
  br i1 %i.jn, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2, label %.lr.ph113.2

.lr.ph113.2:                                      ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2
  %.pr94.2 = phi i64 [ %i.ka, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2 ], [ %i.jm, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1 ] ; 2 uses
  %.02313.i82112.2 = phi i64 [ %i.jy, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2 ], [ %i.jk, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1 ] ; 2 uses
  %.02214.i81111.2 = phi i64 [ %i.jw, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1 ]
  %i.jo = lshr i64 %.pr94.2, 32
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !31
  %i.jr = icmp eq i32 %i.jq, %i.fz
  br i1 %i.jr, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.2:     ; preds = %.lr.ph113.2
  %i.js = and i64 %.pr94.2, 4294967295
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !31
  %i.jv = icmp eq i32 %i.ju, %i.hn
  br i1 %i.jv, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.2, %.lr.ph113.2
  %i.jw = add i64 %.02214.i81111.2, 1             ; 3 uses
  %i.jx = add i64 %i.jw, %.02313.i82112.2
  %i.jy = and i64 %i.jx, %i.bf                    ; 2 uses
  %.not.i84.2 = icmp ule i64 %i.jw, %i.bf
  tail call void @llvm.assume(i1 %.not.i84.2)
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !40 ; 2 uses
  %i.kb = icmp eq i64 %i.ka, -1
  br i1 %i.kb, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2, label %.lr.ph113.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i86.2
  %i.kc = shl nuw nsw i64 %.02313.i82112.2, 2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.2
  %i.kf = phi i32 [ %i.ke, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.2 ], [ %i.hk, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.1 ], [ %i.hk, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i83.2 ]
  %.idx = shl i64 %.063115, 3
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  store i32 %i.fr, ptr %i.kg, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.hi, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 %i.ft, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i32 %i.iw, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i32 %i.hk, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  store i32 %i.kf, ptr %.sroa.11.0..sroa_idx, align 4
  %i.kh = add i64 %.063115, 3                     ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %2
  br i1 %i.ki, label %bb.l, label %._crit_edge, !llvm.loop !69

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.g ], [ %i.bh, %bb.h ], [ %i.bi, %bb.i ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7meshoptL18buildPositionRemapEPjPKfmmR17meshopt_Allocator(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %4) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %2, 2
  %i.b = add i64 %i.a, %2
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.d, %bb.b ]   ; 5 uses
  %i.c = icmp ult i64 %.0.i, %i.b
  %i.d = shl i64 %.0.i, 1
  br i1 %i.c, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit:                 ; preds = %bb.b
  %i.e = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.f = icmp ugt i64 %.0.i, 4611686018427387903
  %i.g = shl i64 %.0.i, 2                         ; 2 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noundef ptr %i.e(i64 noundef %i.h), !inline_history !2 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.k
  store ptr %i.i, ptr %i.m, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.i, i8 -1, i64 %i.g, i1 false)
  %.not32 = icmp eq i64 %2, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph.i.preheader.i.i.lr.ph

.lr.ph.i.preheader.i.i.lr.ph:                     ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %i.n = add i64 %.0.i, -1                        ; 3 uses
  br label %.lr.ph.i.preheader.i.i

._crit_edge:                                      ; preds = %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, %_ZN7meshoptL11hashBucketsEm.exit
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  tail call void %i.o(ptr noundef %i.i), !inline_history !70
  %i.p = load i64, ptr %i.j, align 8, !tbaa !25
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.j, align 8, !tbaa !25
  ret void

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i.preheader.i.i.lr.ph, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit
  %.031 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.lr.ph ], [ %i.bu, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ] ; 3 uses
  %i.r = and i64 %.031, 4294967295                ; 2 uses
  %i.s = mul i64 %i.r, %3
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.s ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = mul i32 %i.u, 1540483477                 ; 2 uses
  %i.w = lshr i32 %i.v, 24
  %i.x = xor i32 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = mul i32 %i.z, 1540483477                ; 2 uses
  %i.ab = lshr i32 %i.aa, 24
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 1540483477
  %i.ae = mul i32 %i.x, 678072505
  %i.af = xor i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31
  %i.ai = mul i32 %i.ah, 1540483477               ; 2 uses
  %i.aj = lshr i32 %i.ai, 24
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = mul i32 %i.ak, 1540483477
  %i.am = mul i32 %i.af, 1540483477
  %i.an = xor i32 %i.al, %i.am
  %i.ao = trunc i64 %.031 to i32                  ; 2 uses
  %i.ap = zext i32 %i.an to i64
  %i.aq = and i64 %i.n, %i.ap                     ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader.i.i, %bb.c
  %.pr = phi i32 [ %i.bp, %bb.c ], [ %i.as, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.02311.i30 = phi i64 [ %i.bn, %bb.c ], [ %i.aq, %.lr.ph.i.preheader.i.i ]
  %.02212.i29 = phi i64 [ %i.bl, %bb.c ], [ 0, %.lr.ph.i.preheader.i.i ]
  %i.au = zext i32 %.pr to i64
  %i.av = mul i64 %3, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 1
  %i.ay = load i64, ptr %i.t, align 1
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %i.aw, i64 8
  %i.bb = getelementptr i8, ptr %i.t, i64 8
  %i.bc = load i32, ptr %i.ba, align 1
  %i.bd = load i32, ptr %i.bb, align 1
  %i.be = zext i32 %i.bc to i64
  %i.bf = zext i32 %i.bd to i64
  %i.bg = xor i64 %i.be, %i.bf
  %i.bh = or i64 %i.az, %i.bg
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.bl = add i64 %.02212.i29, 1                  ; 3 uses
  %i.bm = add i64 %i.bl, %.02311.i30
  %i.bn = and i64 %i.bm, %i.n                     ; 3 uses
  %.not.i = icmp ule i64 %i.bl, %i.n
  tail call void @llvm.assume(i1 %.not.i)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %bb.c, %.lr.ph.i.preheader.i.i
  %.02311.i.lcssa28 = phi i64 [ %i.aq, %.lr.ph.i.preheader.i.i ], [ %i.bn, %bb.c ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.02311.i.lcssa28
  store i32 %i.ao, ptr %i.br, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit: ; preds = %.lr.ph, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread
  %i.bs = phi i32 [ %i.ao, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.pr, %.lr.ph ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !31
  %i.bu = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.preheader.i.i, !llvm.loop !71
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_generateTessellationIndexBuffer(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.b = icmp ugt i64 %4, 4611686018427387903
  %i.c = shl nuw i64 %4, 2
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = invoke noundef ptr %i.a(i64 noundef %i.d)
          to label %bb.b unwind label %bb.f, !inline_history !2 ; 20 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 2 uses
  store i64 1, ptr %i.f, align 8, !tbaa !25
  store ptr %i.e, ptr %6, align 8, !tbaa !28
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjPKfmmR17meshopt_Allocator(ptr noundef %i.e, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(200) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %2, 2
  %i.h = add i64 %i.g, %2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ 1, %bb.c ], [ %i.j, %bb.d ]   ; 6 uses
  %i.i = icmp ult i64 %.0.i, %i.h
  %i.j = shl i64 %.0.i, 1
  br i1 %i.i, label %bb.d, label %_ZN7meshoptL11hashBucketsEm.exit, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit:                 ; preds = %bb.d
  %i.k = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.l = icmp ugt i64 %.0.i, 2305843009213693951
  %i.m = shl i64 %.0.i, 3                         ; 2 uses
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = invoke noundef ptr %i.k(i64 noundef %i.n)
          to label %bb.e unwind label %bb.g, !inline_history !7 ; 17 uses

bb.e:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %i.p = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.q = add nsw i64 %i.p, 1                      ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.p
  store ptr %i.o, ptr %i.r, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 -1, i64 %i.m, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.preheader85.lr.ph

.preheader85.lr.ph:                               ; preds = %bb.e
  %i.s = add i64 %.0.i, -1                        ; 9 uses
  br label %.preheader85

.preheader85:                                     ; preds = %.preheader85.lr.ph, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2
  %.05892 = phi i64 [ 0, %.preheader85.lr.ph ], [ %i.ej, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2 ] ; 2 uses
  %i.t = getelementptr [4 x i8], ptr %1, i64 %.05892 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %i.x = zext i32 %i.u to i64                     ; 3 uses
  %i.y = shl nuw i64 %i.x, 32
  %i.z = zext i32 %i.w to i64                     ; 3 uses
  %i.aa = or disjoint i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.x
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31 ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31 ; 5 uses
  %i.af = lshr i32 %i.ae, 18
  %i.ag = xor i32 %i.af, %i.ac
  %i.ah = mul i32 %i.ag, 1540483477               ; 2 uses
  %i.ai = lshr i32 %i.ah, 22
  %i.aj = xor i32 %i.ai, %i.ae
  %i.ak = mul i32 %i.aj, 1540483477               ; 2 uses
  %i.al = lshr i32 %i.ak, 17
  %i.am = xor i32 %i.al, %i.ah
  %i.an = mul i32 %i.am, 1540483477
  %i.ao = lshr i32 %i.an, 19
  %i.ap = xor i32 %i.ao, %i.ak
  %i.aq = mul i32 %i.ap, 1540483477
  %i.ar = zext i32 %i.aq to i64
  %i.as = and i64 %i.s, %i.ar                     ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph100:                                        ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2
  %i.aw = add i64 %.0.i, -1                       ; 9 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader85, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i
  %.pr = phi i64 [ %i.bl, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ], [ %i.au, %.preheader85 ] ; 2 uses
  %.02313.i90 = phi i64 [ %i.bj, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ], [ %i.as, %.preheader85 ]
  %.02214.i89 = phi i64 [ %i.bh, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ], [ 0, %.preheader85 ]
  %i.az = lshr i64 %.pr, 32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.bc = icmp eq i32 %i.bb, %i.ac
  br i1 %i.bc, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i:         ; preds = %.lr.ph
  %i.bd = and i64 %.pr, 4294967295
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31
  %i.bg = icmp eq i32 %i.bf, %i.ae
  br i1 %i.bg, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i:  ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i, %.lr.ph
  %i.bh = add i64 %.02214.i89, 1                  ; 3 uses
  %i.bi = add i64 %i.bh, %.02313.i90
  %i.bj = and i64 %i.bi, %i.s                     ; 3 uses
  %.not.i = icmp ule i64 %i.bh, %i.s
  tail call void @llvm.assume(i1 %.not.i)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i, %.preheader85
  %.02313.i.lcssa88 = phi i64 [ %i.as, %.preheader85 ], [ %i.bj, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02313.i.lcssa88
  store i64 %i.aa, ptr %i.bn, align 8, !tbaa !40
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread
  %i.bo = getelementptr i8, ptr %i.t, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
  %i.bq = shl nuw i64 %i.z, 32
  %i.br = zext i32 %i.bp to i64                   ; 3 uses
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.br
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !31 ; 5 uses
  %i.bv = lshr i32 %i.bu, 18
  %i.bw = xor i32 %i.bv, %i.ae
  %i.bx = mul i32 %i.bw, 1540483477               ; 2 uses
  %i.by = lshr i32 %i.bx, 22
  %i.bz = xor i32 %i.by, %i.bu
  %i.ca = mul i32 %i.bz, 1540483477               ; 2 uses
  %i.cb = lshr i32 %i.ca, 17
  %i.cc = xor i32 %i.cb, %i.bx
  %i.cd = mul i32 %i.cc, 1540483477
  %i.ce = lshr i32 %i.cd, 19
  %i.cf = xor i32 %i.ce, %i.ca
  %i.cg = mul i32 %i.cf, 1540483477
  %i.ch = zext i32 %i.cg to i64
  %i.ci = and i64 %i.s, %i.ch                     ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !40 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, -1
  br i1 %i.cl, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1
  %.pr.1 = phi i64 [ %i.cy, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ], [ %i.ck, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ] ; 2 uses
  %.02313.i90.1 = phi i64 [ %i.cw, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ], [ %i.ci, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ]
  %.02214.i89.1 = phi i64 [ %i.cu, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ]
  %i.cm = lshr i64 %.pr.1, 32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !31
  %i.cp = icmp eq i32 %i.co, %i.ae
  br i1 %i.cp, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1:       ; preds = %.lr.ph.1
  %i.cq = and i64 %.pr.1, 4294967295
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !31
  %i.ct = icmp eq i32 %i.cs, %i.bu
  br i1 %i.ct, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1, %.lr.ph.1
  %i.cu = add i64 %.02214.i89.1, 1                ; 3 uses
  %i.cv = add i64 %i.cu, %.02313.i90.1
  %i.cw = and i64 %i.cv, %i.s                     ; 3 uses
  %.not.i.1 = icmp ule i64 %i.cu, %i.s
  tail call void @llvm.assume(i1 %.not.i.1)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !40 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, -1
  br i1 %i.cz, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1, label %.lr.ph.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit
  %.02313.i.lcssa88.1 = phi i64 [ %i.ci, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ], [ %i.cw, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.1 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02313.i.lcssa88.1
  store i64 %i.bs, ptr %i.da, align 8, !tbaa !40
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.1
  %i.db = shl nuw i64 %i.br, 32
  %i.dc = or disjoint i64 %i.db, %i.x
  %i.dd = lshr i32 %i.ac, 18
  %i.de = xor i32 %i.dd, %i.bu
  %i.df = mul i32 %i.de, 1540483477               ; 2 uses
  %i.dg = lshr i32 %i.df, 22
  %i.dh = xor i32 %i.dg, %i.ac
  %i.di = mul i32 %i.dh, 1540483477               ; 2 uses
  %i.dj = lshr i32 %i.di, 17
  %i.dk = xor i32 %i.dj, %i.df
  %i.dl = mul i32 %i.dk, 1540483477
  %i.dm = lshr i32 %i.dl, 19
  %i.dn = xor i32 %i.dm, %i.di
  %i.do = mul i32 %i.dn, 1540483477
  %i.dp = zext i32 %i.do to i64
  %i.dq = and i64 %i.s, %i.dp                     ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, -1
  br i1 %i.dt, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2
  %.pr.2 = phi i64 [ %i.eg, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ], [ %i.ds, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ] ; 2 uses
  %.02313.i90.2 = phi i64 [ %i.ee, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ], [ %i.dq, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ]
  %.02214.i89.2 = phi i64 [ %i.ec, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ]
  %i.du = lshr i64 %.pr.2, 32
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !31
  %i.dx = icmp eq i32 %i.dw, %i.bu
  br i1 %i.dx, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2:       ; preds = %.lr.ph.2
  %i.dy = and i64 %.pr.2, 4294967295
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !31
  %i.eb = icmp eq i32 %i.ea, %i.ac
  br i1 %i.eb, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2, %.lr.ph.2
  %i.ec = add i64 %.02214.i89.2, 1                ; 3 uses
  %i.ed = add i64 %i.ec, %.02313.i90.2
  %i.ee = and i64 %i.ed, %i.s                     ; 3 uses
  %.not.i.2 = icmp ule i64 %i.ec, %i.s
  tail call void @llvm.assume(i1 %.not.i.2)
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !40 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, -1
  br i1 %i.eh, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2, label %.lr.ph.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1
  %.02313.i.lcssa88.2 = phi i64 [ %i.dq, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.1 ], [ %i.ee, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i.2 ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02313.i.lcssa88.2
  store i64 %i.dc, ptr %i.ei, align 8, !tbaa !40
  br label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i.2, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.2
  %i.ej = add i64 %.05892, 3                      ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %2
  br i1 %i.ek, label %.preheader85, label %.lr.ph100, !llvm.loop !72

._crit_edge:                                      ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2, %bb.e
  %.not3.i = icmp eq i64 %i.q, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.h
  %.04.i = phi i64 [ %i.ep, %bb.h ], [ %i.q, %._crit_edge ] ; 2 uses
  %i.el = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.em = getelementptr [8 x i8], ptr %6, i64 %.04.i
  %i.en = getelementptr i8, ptr %i.em, i64 -8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !28
  invoke void %i.el(ptr noundef %i.eo)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ep = add i64 %.04.i, -1                      ; 2 uses
  %.not.i70 = icmp eq i64 %i.ep, 0
  br i1 %.not.i70, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !0

bb.i:                                             ; preds = %.lr.ph.i
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  tail call void @__clang_call_terminate(ptr %i.er) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret void

bb.j:                                             ; preds = %.lr.ph100, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2
  %.05699 = phi i64 [ 0, %.lr.ph100 ], [ %i.jp, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2 ] ; 3 uses
  %i.es = getelementptr [4 x i8], ptr %1, i64 %.05699 ; 4 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !31
  %i.eu = getelementptr i8, ptr %i.es, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !31
  %i.ew = zext i32 %i.ev to i64                   ; 3 uses
  %i.ex = shl nuw i64 %i.ew, 32
  %i.ey = zext i32 %i.et to i64                   ; 3 uses
  %i.ez = or disjoint i64 %i.ex, %i.ey            ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ew
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !31 ; 6 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ey
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !31 ; 6 uses
  %i.fe = lshr i32 %i.fd, 18
  %i.ff = xor i32 %i.fe, %i.fb
  %i.fg = mul i32 %i.ff, 1540483477               ; 2 uses
  %i.fh = lshr i32 %i.fg, 22
  %i.fi = xor i32 %i.fh, %i.fd
  %i.fj = mul i32 %i.fi, 1540483477               ; 2 uses
  %i.fk = lshr i32 %i.fj, 17
  %i.fl = xor i32 %i.fk, %i.fg
  %i.fm = mul i32 %i.fl, 1540483477
  %i.fn = lshr i32 %i.fm, 19
  %i.fo = xor i32 %i.fn, %i.fj
  %i.fp = mul i32 %i.fo, 1540483477
  %i.fq = zext i32 %i.fp to i64
  %i.fr = and i64 %i.aw, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !40 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, -1
  br i1 %i.fu, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.j, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73
  %.pre.pre = phi i64 [ %i.gh, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73 ], [ %i.ft, %bb.j ] ; 3 uses
  %.02313.i7294 = phi i64 [ %i.gf, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73 ], [ %i.fr, %bb.j ]
  %.02214.i7193 = phi i64 [ %i.gd, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73 ], [ 0, %bb.j ]
  %i.fv = lshr i64 %.pre.pre, 32
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !31
  %i.fy = icmp eq i32 %i.fx, %i.fb
  br i1 %i.fy, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76:       ; preds = %.lr.ph95
  %i.fz = and i64 %.pre.pre, 4294967295
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !31
  %i.gc = icmp eq i32 %i.gb, %i.fd
  br i1 %i.gc, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76, %.lr.ph95
  %i.gd = add i64 %.02214.i7193, 1                ; 3 uses
  %i.ge = add i64 %i.gd, %.02313.i7294
  %i.gf = and i64 %i.ge, %i.aw                    ; 2 uses
  %.not.i74 = icmp ule i64 %i.gd, %i.aw
  tail call void @llvm.assume(i1 %.not.i74)
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !40 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, -1
  br i1 %i.gi, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79, label %.lr.ph95

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76, %bb.j
  %i.gj = phi i64 [ %i.ez, %bb.j ], [ %i.ez, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73 ], [ %.pre.pre, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76 ] ; 2 uses
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = lshr i64 %i.gj, 32
  %i.gm = trunc nuw i64 %i.gl to i32
  %i.gn = getelementptr i8, ptr %i.es, i64 8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !31
  %i.gp = zext i32 %i.go to i64                   ; 3 uses
  %i.gq = shl nuw i64 %i.gp, 32
  %i.gr = or disjoint i64 %i.gq, %i.ew            ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gp
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31 ; 6 uses
  %i.gu = lshr i32 %i.fb, 18
  %i.gv = xor i32 %i.gu, %i.gt
  %i.gw = mul i32 %i.gv, 1540483477               ; 2 uses
  %i.gx = lshr i32 %i.gw, 22
  %i.gy = xor i32 %i.gx, %i.fb
  %i.gz = mul i32 %i.gy, 1540483477               ; 2 uses
  %i.ha = lshr i32 %i.gz, 17
  %i.hb = xor i32 %i.ha, %i.gw
  %i.hc = mul i32 %i.hb, 1540483477
  %i.hd = lshr i32 %i.hc, 19
  %i.he = xor i32 %i.hd, %i.gz
  %i.hf = mul i32 %i.he, 1540483477
  %i.hg = zext i32 %i.hf to i64
  %i.hh = and i64 %i.aw, %i.hg                    ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !40 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, -1
  br i1 %i.hk, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1, label %.lr.ph95.1

.lr.ph95.1:                                       ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1
  %.pre106.pre = phi i64 [ %i.hx, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1 ], [ %i.hj, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79 ] ; 3 uses
  %.02313.i7294.1 = phi i64 [ %i.hv, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1 ], [ %i.hh, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79 ]
  %.02214.i7193.1 = phi i64 [ %i.ht, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79 ]
  %i.hl = lshr i64 %.pre106.pre, 32
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !31
  %i.ho = icmp eq i32 %i.hn, %i.gt
  br i1 %i.ho, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.1:     ; preds = %.lr.ph95.1
  %i.hp = and i64 %.pre106.pre, 4294967295
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !31
  %i.hs = icmp eq i32 %i.hr, %i.fb
  br i1 %i.hs, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.1, %.lr.ph95.1
  %i.ht = add i64 %.02214.i7193.1, 1              ; 3 uses
  %i.hu = add i64 %i.ht, %.02313.i7294.1
  %i.hv = and i64 %i.hu, %i.aw                    ; 2 uses
  %.not.i74.1 = icmp ule i64 %i.ht, %i.aw
  tail call void @llvm.assume(i1 %.not.i74.1)
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !40 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, -1
  br i1 %i.hy, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1, label %.lr.ph95.1

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.1, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79
  %i.hz = phi i64 [ %i.gr, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79 ], [ %i.gr, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.1 ], [ %.pre106.pre, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.1 ] ; 2 uses
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = lshr i64 %i.hz, 32
  %i.ic = trunc nuw i64 %i.ib to i32
  %i.id = shl nuw i64 %i.ey, 32
  %i.ie = or disjoint i64 %i.id, %i.gp            ; 2 uses
  %i.if = lshr i32 %i.gt, 18
  %i.ig = xor i32 %i.if, %i.fd
  %i.ih = mul i32 %i.ig, 1540483477               ; 2 uses
  %i.ii = lshr i32 %i.ih, 22
  %i.ij = xor i32 %i.ii, %i.gt
  %i.ik = mul i32 %i.ij, 1540483477               ; 2 uses
  %i.il = lshr i32 %i.ik, 17
  %i.im = xor i32 %i.il, %i.ih
  %i.in = mul i32 %i.im, 1540483477
  %i.io = lshr i32 %i.in, 19
  %i.ip = xor i32 %i.io, %i.ik
  %i.iq = mul i32 %i.ip, 1540483477
  %i.ir = zext i32 %i.iq to i64
  %i.is = and i64 %i.aw, %i.ir                    ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !40 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, -1
  br i1 %i.iv, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2, label %.lr.ph95.2

.lr.ph95.2:                                       ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2
  %.pre108.pre = phi i64 [ %i.ji, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2 ], [ %i.iu, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1 ] ; 3 uses
  %.02313.i7294.2 = phi i64 [ %i.jg, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2 ], [ %i.is, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1 ]
  %.02214.i7193.2 = phi i64 [ %i.je, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2 ], [ 0, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1 ]
  %i.iw = lshr i64 %.pre108.pre, 32
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !31
  %i.iz = icmp eq i32 %i.iy, %i.fd
  br i1 %i.iz, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.2:     ; preds = %.lr.ph95.2
  %i.ja = and i64 %.pre108.pre, 4294967295
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !31
  %i.jd = icmp eq i32 %i.jc, %i.gt
  br i1 %i.jd, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2, label %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2

_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.2, %.lr.ph95.2
  %i.je = add i64 %.02214.i7193.2, 1              ; 3 uses
  %i.jf = add i64 %i.je, %.02313.i7294.2
  %i.jg = and i64 %i.jf, %i.aw                    ; 2 uses
  %.not.i74.2 = icmp ule i64 %i.je, %i.aw
  tail call void @llvm.assume(i1 %.not.i74.2)
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !40 ; 2 uses
  %i.jj = icmp eq i64 %i.ji, -1
  br i1 %i.jj, label %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2, label %.lr.ph95.2

_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.2: ; preds = %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.2, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1
  %i.jk = phi i64 [ %i.ie, %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit79.1 ], [ %i.ie, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.thread.i73.2 ], [ %.pre108.pre, %_ZNK7meshopt10EdgeHasher5equalEyy.exit.i76.2 ] ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = lshr i64 %i.jk, 32
  %i.jn = trunc nuw i64 %i.jm to i32
  %.idx = shl i64 %.05699, 4
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 10 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jo, ptr noundef nonnull align 4 dereferenceable(12) %i.es, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 %i.gk, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store i32 %i.gm, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  store i32 %i.ia, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  store i32 %i.ic, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 28
  store i32 %i.jl, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  store i32 %i.jn, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 36
  store i32 %i.fd, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  store i32 %i.fb, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jo, i64 44
  store i32 %i.gt, ptr %.sroa.12.0..sroa_idx, align 4
  %i.jp = add i64 %.05699, 3                      ; 2 uses
  %i.jq = icmp ult i64 %i.jp, %2
  br i1 %i.jq, label %bb.j, label %._crit_edge, !llvm.loop !73

bb.k:                                             ; preds = %bb.g, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.f ], [ %i.ay, %bb.g ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local range(i64 0, 4294967296) i64 @meshopt_generateProvokingIndexBuffer(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.meshopt_Allocator, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.b = icmp ugt i64 %4, 4611686018427387903
  %i.c = shl i64 %4, 2                            ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = invoke noundef ptr %i.a(i64 noundef %i.d)
          to label %bb.b unwind label %bb.d, !inline_history !2 ; 7 uses

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 1, ptr %i.f, align 8, !tbaa !25
  store ptr %i.e, ptr %5, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 -1, i64 %i.c, i1 false)
  %i.g = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.h = invoke noundef ptr %i.g(i64 noundef %4)
          to label %bb.c unwind label %bb.e, !inline_history !6 ; 13 uses

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 0, i64 %4, i1 false)
  %.not129 = icmp eq i64 %3, 0
  br i1 %.not129, label %.lr.ph.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.j = icmp ult i64 %3, 4
  br i1 %i.j, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %3, -4
  br label %.lr.ph

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0106120 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0106120
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !78
  %i.r = add i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 1, !tbaa !78
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0106120
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !78
  %i.y = add i8 %i.x, 1
  store i8 %i.y, ptr %i.w, align 1, !tbaa !78
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0106120
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !78
  %i.af = add i8 %i.ae, 1
  store i8 %i.af, ptr %i.ad, align 1, !tbaa !78
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0106120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !31
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !78
  %i.am = add i8 %i.al, 1
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !78
  %i.an = add nuw i64 %.0106120, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph123.preheader.unr-lcssa, label %.lr.ph, !llvm.loop !74

.lr.ph123.preheader.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph123.preheader.unr-lcssa, %.lr.ph.preheader
  %.0106120.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.an, %.lr.ph123.preheader.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0106120.epil = phi i64 [ %i.au, %.lr.ph.epil ], [ %.0106120.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0106120.epil
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !78
  %i.at = add i8 %i.as, 1
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !78
  %i.au = add nuw i64 %.0106120.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph123.preheader, label %.lr.ph.epil, !llvm.loop !75

.lr.ph123.preheader:                              ; preds = %.lr.ph.epil, %.lr.ph123.preheader.unr-lcssa
  br label %.lr.ph123

.preheader:                                       ; preds = %bb.p
  %.not137 = icmp eq i64 %3, 1
  br i1 %.not137, label %.lr.ph.i, label %.lr.ph127

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %bb.p
  %.0104122 = phi i64 [ %i.cv, %bb.p ], [ 0, %.lr.ph123.preheader ] ; 5 uses
  %.0105121 = phi i32 [ %i.ce, %bb.p ], [ 0, %.lr.ph123.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0104122
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !31 ; 4 uses
  %i.ax = add nuw i64 %.0104122, 1                ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31 ; 4 uses
  %i.ba = add i64 %.0104122, 2                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 4 uses
  %i.bd = zext i32 %i.aw to i64                   ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph123
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bd
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !78
  %i.bj = zext i8 %i.bi to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph123, %bb.f
  %i.bk = phi i32 [ %i.bj, %bb.f ], [ -1, %.lr.ph123 ] ; 2 uses
  %i.bl = zext i32 %i.az to i64                   ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.bo = icmp eq i32 %i.bn, -1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bl
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !78
  %i.br = zext i8 %i.bq to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bs = phi i32 [ %i.br, %bb.h ], [ -1, %bb.g ] ; 4 uses
  %i.bt = zext i32 %i.bc to i64                   ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bt
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !78
  %i.bz = zext i8 %i.by to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ca = phi i32 [ %i.bz, %bb.j ], [ -1, %bb.i ] ; 4 uses
  %.not = icmp eq i32 %i.bs, -1
  %.not111 = icmp ugt i32 %i.bs, %i.bk
  %or.cond = select i1 %.not, i1 true, i1 %.not111
  %.not112 = icmp ugt i32 %i.bs, %i.ca
  %or.cond116 = select i1 %or.cond, i1 true, i1 %.not112
  br i1 %or.cond116, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not113 = icmp eq i32 %i.ca, -1
  %.not114 = icmp ugt i32 %i.ca, %i.bk
  %or.cond117 = select i1 %.not113, i1 true, i1 %.not114
  %.not115 = icmp ugt i32 %i.ca, %i.bs
  %or.cond118 = select i1 %or.cond117, i1 true, i1 %.not115
  br i1 %or.cond118, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %i.bl, %bb.k ], [ %i.bd, %bb.l ], [ %i.bt, %bb.m ] ; 2 uses
end_hunk_0

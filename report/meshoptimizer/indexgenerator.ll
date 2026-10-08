Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/indexgenerator?download=true
inline.NumInlined: 95
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@meshopt_generateShadowIndexBufferMulti:bb.a
  tail call void @__clang_call_terminate(ptr %i.df) #12
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
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
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
  %i.x = add nuw nsw i64 %i.p, 2
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.q
  store ptr %i.w, ptr %i.y, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 -1, i64 %i.m, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %i.u, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.lr.ph.i.preheader, label %.preheader98.lr.ph

.lr.ph.i.preheader:                               ; preds = %_ZN7meshoptL10hashLookupIyNS_10EdgeHasherEEEPT_S3_mRKT0_RKS2_S8_.exit89.thread.2, %bb.f
  br label %.lr.ph.i

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
end_hunk_0
begin_hunk_1_@meshopt_generateTessellationIndexBuffer:bb.a
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
  br i1 %i.jq, label %bb.j, label %.lr.ph.i.preheader, !llvm.loop !73

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
  %.0104122 = phi i64 [ %i.cp, %bb.p ], [ 0, %.lr.ph123.preheader ] ; 5 uses
  %.0105121 = phi i32 [ %i.ca, %bb.p ], [ 0, %.lr.ph123.preheader ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0104122
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !31 ; 4 uses
  %6 = add nuw i64 %.0104122, 1                   ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  %i.ax = load i32, ptr %7, align 4, !tbaa !31    ; 4 uses
  %8 = add i64 %.0104122, 2                       ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %8
  %i.ay = load i32, ptr %9, align 4, !tbaa !31    ; 4 uses
  %i.az = zext i32 %i.aw to i64                   ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !78
  %i.bf = zext i8 %i.be to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph123, %bb.f
  %i.bg = phi i32 [ %i.bf, %bb.f ], [ -1, %.lr.ph123 ] ; 2 uses
  %i.bh = zext i32 %i.ax to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !31
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bh
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !78
  %i.bn = zext i8 %i.bm to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bo = phi i32 [ %i.bn, %bb.h ], [ -1, %bb.g ] ; 4 uses
  %i.bp = zext i32 %i.ay to i64                   ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bp
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !78
  %i.bv = zext i8 %i.bu to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bw = phi i32 [ %i.bv, %bb.j ], [ -1, %bb.i ] ; 4 uses
  %.not = icmp eq i32 %i.bo, -1
  %.not111 = icmp ugt i32 %i.bo, %i.bg
  %or.cond = select i1 %.not, i1 true, i1 %.not111
  %.not112 = icmp ugt i32 %i.bo, %i.bw
  %or.cond116 = select i1 %or.cond, i1 true, i1 %.not112
  br i1 %or.cond116, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not113 = icmp eq i32 %i.bw, -1
  %.not114 = icmp ugt i32 %i.bw, %i.bg
  %or.cond117 = select i1 %.not113, i1 true, i1 %.not114
  %.not115 = icmp ugt i32 %i.bw, %i.bo
  %or.cond118 = select i1 %or.cond117, i1 true, i1 %.not115
  br i1 %or.cond118, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %i.bh, %bb.k ], [ %i.az, %bb.l ], [ %i.bp, %bb.m ] ; 2 uses
  %.0103 = phi i32 [ %i.ax, %bb.k ], [ %i.aw, %bb.l ], [ %i.ay, %bb.m ]
  %.0102 = phi i32 [ %i.ay, %bb.k ], [ %i.ax, %bb.l ], [ %i.aw, %bb.m ] ; 2 uses
  %.0101 = phi i32 [ %i.aw, %bb.k ], [ %i.ay, %bb.l ], [ %i.ax, %bb.m ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.pre-phi ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !31
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %.0105121, ptr %i.bx, align 4, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ca = add i32 %.0105121, 1                    ; 3 uses
  %i.cb = zext i32 %.0105121 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb
  store i32 %.0103, ptr %i.cc, align 4, !tbaa !31
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0104122
  store i32 %.0105121, ptr %i.cd, align 4, !tbaa !31
  %10 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  store i32 %.0102, ptr %10, align 4, !tbaa !31
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  store i32 %.0101, ptr %11, align 4, !tbaa !31
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pre-phi ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !78
  %i.cg = add i8 %i.cf, -1
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !78
  %i.ch = zext i32 %.0102 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !78
  %i.ck = add i8 %i.cj, -1
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !78
  %i.cl = zext i32 %.0101 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !78
  %i.co = add i8 %i.cn, -1
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !78
  %i.cp = add i64 %.0104122, 3                    ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %3
  br i1 %i.cq, label %.lr.ph123, label %.preheader, !llvm.loop !76

.lr.ph.i:                                         ; preds = %.preheader, %bb.c, %bb.s
  %.1.lcssa = phi i32 [ %i.ca, %.preheader ], [ 0, %bb.c ], [ %.2, %bb.s ]
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !28
  invoke void %i.cr(ptr noundef %i.ct)
          to label %.lr.ph.i.1 unwind label %bb.q

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.cv = load ptr, ptr %5, align 8, !tbaa !28
  invoke void %i.cu(ptr noundef %i.cv)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.q

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i.1
  %i.cw = zext i32 %.1.lcssa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i64 %i.cw

bb.q:                                             ; preds = %.lr.ph.i.1, %.lr.ph.i
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  tail call void @__clang_call_terminate(ptr %i.cy) #12
  unreachable

.lr.ph127:                                        ; preds = %.preheader, %bb.s
  %.0126 = phi i64 [ %i.dk, %bb.s ], [ 1, %.preheader ] ; 2 uses
  %.098125 = phi i32 [ %i.dl, %bb.s ], [ 1, %.preheader ] ; 2 uses
  %.1124 = phi i32 [ %.2, %bb.s ], [ %i.ca, %.preheader ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0126 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.db ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !31 ; 2 uses
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph127
  store i32 %.1124, ptr %i.dc, align 4, !tbaa !31
  %i.df = add i32 %.1124, 1
  %i.dg = zext i32 %.1124 to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  store i32 %i.da, ptr %i.dh, align 4, !tbaa !31
  %.pre = load i32, ptr %i.dc, align 4, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph127
  %i.di = phi i32 [ %.pre, %bb.r ], [ %i.dd, %.lr.ph127 ]
  %.2 = phi i32 [ %i.df, %bb.r ], [ %.1124, %.lr.ph127 ] ; 2 uses
  store i32 %i.di, ptr %i.cz, align 4, !tbaa !31
  %i.dj = zext nneg i32 %.098125 to i64
  %i.dk = add i64 %.0126, %i.dj                   ; 2 uses
  %i.dl = xor i32 %.098125, 3
  %i.dm = icmp ult i64 %i.dk, %3
  br i1 %i.dm, label %.lr.ph127, label %.lr.ph.i, !llvm.loop !77

bb.t:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{null}
!3 = distinct !{!3, !29}
!4 = distinct !{!4, !29}
!5 = distinct !{!5, !29}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!"_ZTSN7meshopt12VertexHasherE", !18, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !18, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!20, !19, i64 16}
!24 = !{!"_ZTS17meshopt_Allocator", !13, i64 0, !19, i64 192}
!25 = !{!24, !19, i64 192}
!26 = !{!"_ZTSN17meshopt_Allocator7StorageE", !17, i64 0, !17, i64 8}
!27 = !{!26, !17, i64 8}
!28 = !{!17, !17, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!26, !17, i64 0}
!31 = !{!14, !14, i64 0}
!32 = !{!"_ZTS14meshopt_Stream", !17, i64 0, !19, i64 8, !19, i64 16}
!33 = !{!32, !19, i64 8}
!34 = !{!32, !17, i64 0}
!35 = !{!32, !19, i64 16}
!36 = !{!"float", !13, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"long long", !13, i64 0}
!40 = !{!39, !39, i64 0}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{null}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29}
!50 = distinct !{!50, !29, !55, !56}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !29, !55}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !29}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = distinct !{null}
!58 = distinct !{!58, !29}
!59 = !{!"_ZTSN7meshopt11TriangleKeyE", !14, i64 0, !14, i64 4, !14, i64 8}
!60 = !{!59, !14, i64 0}
!61 = !{!59, !14, i64 4}
!62 = !{!59, !14, i64 8}
!63 = distinct !{null}
!64 = distinct !{!64, !29}
!65 = distinct !{null}
!66 = distinct !{!66, !29}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !29}
!70 = distinct !{null}
!71 = distinct !{!71, !29}
end_hunk_1

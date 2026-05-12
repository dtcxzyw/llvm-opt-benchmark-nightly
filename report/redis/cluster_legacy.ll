inline.NumInlined: 443
inline.NumDeleted: 38
begin_hunk_0_@createClusterLink:bb.a
  store ptr @clusterMsgSendBlockDecrRefCount, ptr %i.e, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 48, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i64 1024, ptr %i.h, align 8, !tbaa !169
  %i.i = tail call noalias dereferenceable_or_null(1024) ptr @zmalloc(i64 noundef 1024) #36
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.i, ptr %i.j, align 8, !tbaa !170
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !171
  %1 = load i64, ptr %i.h, align 8, !tbaa !169
  %2 = load i64, ptr %i.g, align 8, !tbaa !168
  %3 = add i64 %2, %1
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.m = add i64 %3, %i.l
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !173
end_hunk_0
begin_hunk_1_@clusterConnAcceptHandler:bb.a
  store ptr @clusterMsgSendBlockDecrRefCount, ptr %i.o, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.p, align 8, !tbaa !167
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i64 48, ptr %i.q, align 8, !tbaa !168
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  store i64 1024, ptr %i.r, align 8, !tbaa !169
  %i.s = tail call noalias dereferenceable_or_null(1024) ptr @zmalloc(i64 noundef 1024) #36
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 0, ptr %i.u, align 8, !tbaa !171
  %1 = load i64, ptr %i.r, align 8, !tbaa !169
  %2 = load i64, ptr %i.q, align 8, !tbaa !168
  %3 = add i64 %2, %1
  %i.v = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.w = add i64 %3, %i.v
  store i64 %i.w, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 64
end_hunk_1
begin_hunk_2_@clusterCron:bb.a
  store ptr @clusterMsgSendBlockDecrRefCount, ptr %i.bt, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.bu, align 8, !tbaa !167
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  store i64 48, ptr %i.bv, align 8, !tbaa !168
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 2 uses
  store i64 1024, ptr %i.bw, align 8, !tbaa !169
  %i.bx = call noalias dereferenceable_or_null(1024) ptr @zmalloc(i64 noundef 1024) #36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !170
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 0, ptr %i.bz, align 8, !tbaa !171
  %1 = load i64, ptr %i.bw, align 8, !tbaa !169
  %2 = load i64, ptr %i.bv, align 8, !tbaa !168
  %3 = add i64 %2, %1
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.cb = add i64 %3, %i.ca
  store i64 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !172
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !173
end_hunk_2

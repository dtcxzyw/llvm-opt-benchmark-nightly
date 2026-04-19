inline.NumInlined: 1433
inline.NumDeleted: 531
begin_hunk_0_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.r = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !137 ; 4 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %48 = load ptr, ptr %i.t, align 8, !tbaa !64, !noalias !137
  %i.u = load ptr, ptr %48, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %49 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.v = load ptr, ptr %49, align 8, !tbaa !78, !noalias !137
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !123, !noalias !137, !nonnull !112, !noundef !112 ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %51 = load i64, ptr %50, align 8, !tbaa !140, !noalias !137
  %52 = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %53 = load i8, ptr %52, align 1, !tbaa !126, !range !111, !noalias !137, !noundef !112
  %54 = trunc nuw i8 %53 to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !137
  %55 = select i1 %54, ptr %i.z, ptr null, !prof !60
  %56 = getelementptr inbounds [2 x i8], ptr %55, i64 %51 ; 2 uses
  %57 = add nsw i64 %i.r, -1                      ; 3 uses
  %58 = getelementptr inbounds [2 x i8], ptr %56, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !155, !noalias !137
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %62 = load i64, ptr %61, align 8, !tbaa !154, !noalias !137
  %.not.i.i92.i = icmp eq i64 %62, %60
  br i1 %.not.i.i92.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i, label %bb.e

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20, !noalias !137
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.r), !noalias !137
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !137
end_hunk_0
begin_hunk_1_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20, !noalias !137
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20, !noalias !137
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %38, i64 8
end_hunk_1
begin_hunk_2_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = select i1 %i.dx, ptr %i.dz, ptr null, !prof !60
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.dq ; 2 uses
  %i.ec = shl i64 %57, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.eb, ptr nonnull align 2 %56, i64 %i.ec, i1 false)
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !154
  %i.eg = trunc i64 %i.ef to i16
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %57
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20, !noalias !137
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %37)
end_hunk_2
begin_hunk_3_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.mj = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213 ; 4 uses
  %i.mk = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %63 = load ptr, ptr %i.ml, align 8, !tbaa !64, !noalias !213
  %i.mm = load ptr, ptr %63, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %64 = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.mn = load ptr, ptr %64, align 8, !tbaa !78, !noalias !213
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !123, !noalias !213, !nonnull !112, !noundef !112 ; 2 uses
  %65 = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %66 = load i64, ptr %65, align 8, !tbaa !140, !noalias !213
  %67 = getelementptr inbounds nuw i8, ptr %i.mp, i64 9
  %68 = load i8, ptr %67, align 1, !tbaa !126, !range !111, !noalias !213, !noundef !112
  %69 = trunc nuw i8 %68 to i1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !noalias !213
  %70 = select i1 %69, ptr %i.mr, ptr null, !prof !60
  %71 = getelementptr inbounds [4 x i8], ptr %70, i64 %66 ; 2 uses
  %72 = add nsw i64 %i.mj, -1                     ; 3 uses
  %73 = getelementptr inbounds [4 x i8], ptr %71, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !3, !noalias !213
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %77 = load i64, ptr %76, align 8, !tbaa !154, !noalias !213
  %.not.i.i92.i50 = icmp eq i64 %77, %75
  br i1 %.not.i.i92.i50, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i96, label %bb.cf

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i96: ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !213
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.mj), !noalias !213
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !213
end_hunk_3
begin_hunk_4_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !213
  %i.mu = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %23, i64 8
end_hunk_4
begin_hunk_5_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = select i1 %i.qp, ptr %i.qr, ptr null, !prof !60
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qi ; 2 uses
  %i.qu = shl i64 %72, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qt, ptr nonnull align 4 %71, i64 %i.qu, i1 false)
  %i.qv = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !154
  %i.qy = trunc i64 %i.qx to i32
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %72
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20, !noalias !213
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %22)
end_hunk_5
begin_hunk_6_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.zb = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250 ; 4 uses
  %i.zc = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 64
  %78 = load ptr, ptr %i.zd, align 8, !tbaa !64, !noalias !250
  %i.ze = load ptr, ptr %78, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %79 = getelementptr inbounds nuw i8, ptr %i.ze, i64 40
  %i.zf = load ptr, ptr %79, align 8, !tbaa !78, !noalias !250
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !123, !noalias !250, !nonnull !112, !noundef !112 ; 2 uses
  %80 = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %81 = load i64, ptr %80, align 8, !tbaa !140, !noalias !250
  %82 = getelementptr inbounds nuw i8, ptr %i.zh, i64 9
  %83 = load i8, ptr %82, align 1, !tbaa !126, !range !111, !noalias !250, !noundef !112
  %84 = trunc nuw i8 %83 to i1
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8, !noalias !250
  %85 = select i1 %84, ptr %i.zj, ptr null, !prof !60
  %86 = getelementptr inbounds [8 x i8], ptr %85, i64 %81 ; 2 uses
  %87 = add nsw i64 %i.zb, -1                     ; 3 uses
  %88 = getelementptr inbounds [8 x i8], ptr %86, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !201, !noalias !250
  %90 = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %91 = load i64, ptr %90, align 8, !tbaa !154, !noalias !250
  %.not.i.i92.i144 = icmp eq i64 %89, %91
  br i1 %.not.i.i92.i144, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i190, label %bb.fg

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i190: ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !250
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.zb), !noalias !250
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !250
end_hunk_6
begin_hunk_7_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !250
  %i.zm = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_7
begin_hunk_8_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = select i1 %i.adh, ptr %i.adj, ptr null, !prof !60
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.adk, i64 %i.ada ; 2 uses
  %i.adm = shl i64 %87, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.adl, ptr nonnull align 8 %86, i64 %i.adm, i1 false)
  %i.adn = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !154
  %i.adq = getelementptr inbounds [8 x i8], ptr %i.adl, i64 %87
  store i64 %i.adp, ptr %i.adq, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !250
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %7)
end_hunk_8

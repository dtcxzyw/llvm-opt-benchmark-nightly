inline.NumInlined: 1433
inline.NumDeleted: 531
begin_hunk_0_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.r = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !137 ; 4 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64, !noalias !137
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78, !noalias !137
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !123, !noalias !137 ; 3 uses
  %.not.i.i92.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i92.i, label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i, label %48

48:                                               ; preds = %bb.d
  %49 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %50 = load i64, ptr %49, align 8, !tbaa !140, !noalias !137
  %51 = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %52 = load i8, ptr %51, align 1, !tbaa !126, !range !111, !noalias !137, !noundef !112
  %53 = trunc nuw i8 %52 to i1
  %54 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %55 = load ptr, ptr %54, align 8, !noalias !137
  %56 = select i1 %53, ptr %55, ptr null, !prof !60
  %57 = getelementptr inbounds [2 x i8], ptr %56, i64 %50
  br label %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i:   ; preds = %48, %bb.d
  %.0.i.i.i = phi ptr [ %57, %48 ], [ null, %bb.d ] ; 2 uses
  %58 = add nsw i64 %i.r, -1                      ; 3 uses
  %59 = getelementptr inbounds [2 x i8], ptr %.0.i.i.i, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !155, !noalias !137
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %63 = load i64, ptr %62, align 8, !tbaa !154, !noalias !137
  %64 = icmp eq i64 %63, %61
  br i1 %64, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i, label %bb.e

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i: ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20, !noalias !137
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.r), !noalias !137
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !137
end_hunk_0
begin_hunk_1_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20, !noalias !137
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.e:                                             ; preds = %_ZNK5arrow9ArrayData9GetValuesIsEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20, !noalias !137
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !137 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %38, i64 8
end_hunk_1
begin_hunk_2_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = select i1 %i.dx, ptr %i.dz, ptr null, !prof !60
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.ea, i64 %i.dq ; 2 uses
  %i.ec = shl i64 %58, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.eb, ptr nonnull align 2 %.0.i.i.i, i64 %i.ec, i1 false)
  %i.ed = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !154
  %i.eg = trunc i64 %i.ef to i16
  %i.eh = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %58
  store i16 %i.eg, ptr %i.eh, align 2, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20, !noalias !137
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %42, ptr noundef nonnull align 8 dereferenceable(16) %37)
end_hunk_2
begin_hunk_3_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.mj = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !213 ; 4 uses
  %i.mk = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !64, !noalias !213
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !78, !noalias !213
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !123, !noalias !213 ; 3 uses
  %.not.i.i92.i50 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i92.i50, label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i, label %65

65:                                               ; preds = %bb.ce
  %66 = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %67 = load i64, ptr %66, align 8, !tbaa !140, !noalias !213
  %68 = getelementptr inbounds nuw i8, ptr %i.mr, i64 9
  %69 = load i8, ptr %68, align 1, !tbaa !126, !range !111, !noalias !213, !noundef !112
  %70 = trunc nuw i8 %69 to i1
  %71 = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %72 = load ptr, ptr %71, align 8, !noalias !213
  %73 = select i1 %70, ptr %72, ptr null, !prof !60
  %74 = getelementptr inbounds [4 x i8], ptr %73, i64 %67
  br label %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i:   ; preds = %65, %bb.ce
  %.0.i.i.i51 = phi ptr [ %74, %65 ], [ null, %bb.ce ] ; 2 uses
  %75 = add nsw i64 %i.mj, -1                     ; 3 uses
  %76 = getelementptr inbounds [4 x i8], ptr %.0.i.i.i51, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !3, !noalias !213
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %80 = load i64, ptr %79, align 8, !tbaa !154, !noalias !213
  %81 = icmp eq i64 %80, %78
  br i1 %81, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i96, label %bb.cf

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i96: ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !213
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.mj), !noalias !213
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !213
end_hunk_3
begin_hunk_4_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !213
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.cf:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIiEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !213
  %i.mu = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !213 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %23, i64 8
end_hunk_4
begin_hunk_5_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = select i1 %i.qp, ptr %i.qr, ptr null, !prof !60
  %i.qt = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qi ; 2 uses
  %i.qu = shl i64 %75, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.qt, ptr nonnull align 4 %.0.i.i.i51, i64 %i.qu, i1 false)
  %i.qv = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !213
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !154
  %i.qy = trunc i64 %i.qx to i32
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %75
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20, !noalias !213
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %22)
end_hunk_5
begin_hunk_6_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.zb = tail call noundef i64 @_ZNK5arrow18RunEndEncodedArray18FindPhysicalLengthEv(ptr noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !250 ; 4 uses
  %i.zc = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 64
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !64, !noalias !250
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 40
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !78, !noalias !250
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !123, !noalias !250 ; 3 uses
  %.not.i.i92.i144 = icmp eq ptr %i.zj, null
  br i1 %.not.i.i92.i144, label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i, label %82

82:                                               ; preds = %bb.ff
  %83 = getelementptr inbounds nuw i8, ptr %i.zf, i64 32
  %84 = load i64, ptr %83, align 8, !tbaa !140, !noalias !250
  %85 = getelementptr inbounds nuw i8, ptr %i.zj, i64 9
  %86 = load i8, ptr %85, align 1, !tbaa !126, !range !111, !noalias !250, !noundef !112
  %87 = trunc nuw i8 %86 to i1
  %88 = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %89 = load ptr, ptr %88, align 8, !noalias !250
  %90 = select i1 %87, ptr %89, ptr null, !prof !60
  %91 = getelementptr inbounds [8 x i8], ptr %90, i64 %84
  br label %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i

_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i:   ; preds = %82, %bb.ff
  %.0.i.i.i145 = phi ptr [ %91, %82 ], [ null, %bb.ff ] ; 2 uses
  %92 = add nsw i64 %i.zb, -1                     ; 3 uses
  %93 = getelementptr inbounds [8 x i8], ptr %.0.i.i.i145, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !201, !noalias !250
  %95 = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %96 = load i64, ptr %95, align 8, !tbaa !154, !noalias !250
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i190, label %bb.fg

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97.i190: ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !250
  call void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef 0, i64 noundef %i.zb), !noalias !250
  store ptr null, ptr %0, align 8, !tbaa !98, !alias.scope !250
end_hunk_6
begin_hunk_7_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !250
  br label %_ZN5arrow12_GLOBAL__N_118MakeLogicalRunEndsINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_5ArrayEEEERKNS_18RunEndEncodedArrayEPNS_10MemoryPoolE.exit

bb.fg:                                            ; preds = %_ZNK5arrow9ArrayData9GetValuesIlEEPKT_i.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !250
  %i.zm = load ptr, ptr %i.c, align 8, !tbaa !35, !noalias !250 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_7
begin_hunk_8_@_ZNK5arrow18RunEndEncodedArray14LogicalRunEndsEPNS_10MemoryPoolE:bb.a
  %i.adj = load ptr, ptr %i.adi, align 8
  %i.adk = select i1 %i.adh, ptr %i.adj, ptr null, !prof !60
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.adk, i64 %i.ada ; 2 uses
  %i.adm = shl i64 %92, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.adl, ptr nonnull align 8 %.0.i.i.i145, i64 %i.adm, i1 false)
  %i.adn = load ptr, ptr %i.h, align 8, !tbaa !35, !noalias !250
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !154
  %i.adq = getelementptr inbounds [8 x i8], ptr %i.adl, i64 %92
  store i64 %i.adp, ptr %i.adq, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !250
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %7)
end_hunk_8

inline.NumInlined: 2868
inline.NumDeleted: 1221
begin_hunk_0_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a
  store i8 %i.gi, ptr %i.ij, align 1, !tbaa !83, !noalias !208
  %i.il = load i32, ptr %i.s, align 8, !tbaa !225, !noalias !208 ; 3 uses
  %i.im = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !302, !noalias !208
  %i.in = load ptr, ptr %i.au, align 8, !tbaa !303, !noalias !208 ; 2 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64               ; 2 uses
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = and i64 %i.iq, 4294967288
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %bb.bc, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i._ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i_crit_edge.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i._ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i_crit_edge.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i.i
  %.pre305.i = zext i32 %i.il to i64
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i.i

bb.bc:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i.i
  %i.it = load i64, ptr %i.r, align 8, !tbaa !224, !noalias !208 ; 5 uses
  %i.iu = load ptr, ptr %i.t, align 8, !tbaa !304, !noalias !208 ; 6 uses
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.ip, %i.iv                    ; 2 uses
  %.not.i162.i = icmp eq i64 %i.it, 0
  %i.ix = lshr i64 %i.it, 1
  %i.iy = load i64, ptr %i.o, align 8, !noalias !208
  %i.iz = select i1 %.not.i162.i, i64 %i.iy, i64 %i.ix
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.iz, i64 8)
  %i.ja = load i64, ptr %i.q, align 8, !tbaa !223, !noalias !208 ; 2 uses
  %i.jb = add i64 %i.it, -1
  %i.jc = add i64 %i.jb, %i.ja
  %i.jd = add i64 %i.jc, %.sroa.speculated.i.i
  %i.je = sub i64 0, %i.ja
  %i.jf = and i64 %i.jd, %i.je                    ; 6 uses
  store i64 %i.jf, ptr %i.r, align 8, !tbaa !224, !noalias !208
  %.not8.i.i = icmp eq ptr %i.iu, null
  %i.jg = load ptr, ptr %12, align 8, !tbaa !217, !noalias !208 ; 6 uses
  br i1 %.not8.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jh = zext i32 %i.il to i64                   ; 3 uses
  %i.ji = and i64 %i.iw, 4294967295               ; 2 uses
  %.not.i.i163.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i163.i, label %bb.be, label %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  %i.jj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jf) #26
          to label %.noexc164.i unwind label %bb.bu, !noalias !208 ; 3 uses

.noexc164.i:                                      ; preds = %bb.be
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jf
  %i.jl = sub nsw i64 0, %i.jh                    ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.it
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.jl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jm, ptr nonnull align 1 %i.jo, i64 %i.jh, i1 false), !noalias !208
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jj, ptr nonnull align 1 %i.iu, i64 %i.ji, i1 false), !noalias !208
  call void @_ZdaPv(ptr noundef nonnull %i.iu) #25, !noalias !208
  br label %.noexc116.i

_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i.i: ; preds = %bb.bd
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !43, !noalias !208
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !208
  %i.js = invoke noundef ptr %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, ptr noundef nonnull %i.iu, i64 noundef %i.it, i64 noundef %i.jf, i64 noundef %i.jh, i64 noundef %i.ji)
          to label %.noexc116.i unwind label %bb.bu, !noalias !208, !inline_history !305

bb.bf:                                            ; preds = %bb.bc
  %.not.i9.i.i = icmp eq ptr %i.jg, null
  br i1 %.not.i9.i.i, label %bb.bg, label %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.jt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jf) #26
          to label %.noexc116.i unwind label %bb.bu, !noalias !208

_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i.i: ; preds = %bb.bf
  %i.ju = load ptr, ptr %i.jg, align 8, !tbaa !43, !noalias !208
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !208
  %i.jx = invoke noundef ptr %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.jg, i64 noundef %i.jf)
          to label %.noexc116.i unwind label %bb.bu, !noalias !208, !inline_history !305

.noexc116.i:                                      ; preds = %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i.i, %bb.bg, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i.i, %.noexc164.i
  %storemerge.i.i = phi ptr [ %i.jj, %.noexc164.i ], [ %i.js, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i.i ], [ %i.jt, %bb.bg ], [ %i.jx, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i.i ] ; 3 uses
  store ptr %storemerge.i.i, ptr %i.t, align 8, !tbaa !304, !noalias !208
  %i.jy = load i64, ptr %i.r, align 8, !tbaa !224, !noalias !208
  %i.jz = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 %i.jy
  %i.ka = zext i32 %i.il to i64                   ; 2 uses
  %i.kb = sub nsw i64 0, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.jz, i64 %i.kb
  store ptr %i.kc, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !302, !noalias !208
  %i.kd = and i64 %i.iw, 4294967295
  %i.ke = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 %i.kd ; 2 uses
  store ptr %i.ke, ptr %i.au, align 8, !tbaa !303, !noalias !208
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i.i: ; preds = %.noexc116.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i._ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i_crit_edge.i
  %.sroa.0.0.insert.ext.i.i.i.i.i.pre-phi.i = phi i64 [ %.pre305.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i._ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i_crit_edge.i ], [ %i.ka, %.noexc116.i ]
  %i.kf = phi ptr [ %i.in, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIajEET0_T_.exit.i.i.i.i._ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i_crit_edge.i ], [ %i.ke, %.noexc116.i ]
  %.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i.i.i.pre-phi.i, 17179869184
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.kf, align 4, !noalias !208
  %i.kg = load ptr, ptr %i.au, align 8, !tbaa !303, !noalias !208
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.kh, ptr %i.au, align 8, !tbaa !303, !noalias !208
  %i.ki = load i32, ptr %i.av, align 8, !tbaa !306, !noalias !208
  %i.kj = add i32 %i.ki, 1
  store i32 %i.kj, ptr %i.av, align 8, !tbaa !306, !noalias !208
  %i.kk = load i16, ptr %i.aw, align 4, !tbaa !307, !noalias !208
  %i.kl = icmp ult i16 %i.kk, 4
  br i1 %i.kl, label %bb.bh, label %_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i

bb.bh:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i.i
  store i16 4, ptr %i.aw, align 4, !tbaa !307, !noalias !208
  br label %_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i

_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i: ; preds = %bb.bh, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i.i, %bb.au, %bb.at
  %i.km = phi i32 [ %i.gg, %bb.at ], [ %i.gj, %bb.bh ], [ %i.gj, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i.i.i.i.i.i ], [ %i.gj, %bb.au ]
  %i.kn = invoke noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %12, i32 noundef %i.km)
          to label %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadata13WriteMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEE.exit.i unwind label %bb.bu, !noalias !208

_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadata13WriteMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEE.exit.i: ; preds = %_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i, %bb.as, %.noexc110.i, %_ZN5arrow3ipc7feather12_GLOBAL__N_117GetPrimitiveArrayERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS2_13ArrayMetadataE.exit.i
  %.sroa.013.0.i.i = phi i32 [ 0, %_ZN5arrow3ipc7feather12_GLOBAL__N_117GetPrimitiveArrayERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS2_13ArrayMetadataE.exit.i ], [ %i.kn, %_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i ], [ %i.gf, %bb.as ], [ %i.fy, %.noexc110.i ]
  %i.ko = invoke i32 @_ZN5arrow3ipc7feather3fbs12CreateColumnERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEENS8_INS2_14PrimitiveArrayEEENS2_12TypeMetadataENS8_IvEESA_(ptr noundef nonnull align 8 dereferenceable(128) %12, i32 %i.ff, i32 %i.fl, i8 noundef zeroext %i.fp, i32 %.sroa.013.0.i.i, i32 0)
          to label %bb.bi unwind label %bb.bu, !noalias !208 ; 2 uses

bb.bi:                                            ; preds = %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadata13WriteMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEE.exit.i
  %i.kp = load ptr, ptr %i.al, align 8, !tbaa !73, !noalias !208 ; 8 uses
  %.not.i.i118.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i118.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8 ; 4 uses
  %i.kr = load atomic i64, ptr %i.kq acquire, align 8, !noalias !208 ; 2 uses
  %i.ks = icmp eq i64 %i.kr, 4294967297
  %i.kt = trunc i64 %i.kr to i32                  ; 2 uses
  br i1 %i.ks, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.kq, align 8, !tbaa !74, !noalias !208
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 12
  store i32 0, ptr %i.ku, align 4, !tbaa !79, !noalias !208
  %i.kv = load ptr, ptr %i.kp, align 8, !tbaa !43, !noalias !208
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !208
  call void %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #24, !noalias !208, !inline_history !308
  %i.ky = load ptr, ptr %i.kp, align 8, !tbaa !43, !noalias !208
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !208
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #24, !noalias !208, !inline_history !308
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.lb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !208
  %.not.i.i.i119.i = icmp eq i8 %i.lb, 0
  br i1 %.not.i.i.i119.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lc = add nsw i32 %i.kt, -1
  store i32 %i.lc, ptr %i.kq, align 8, !tbaa !3, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120.i

bb.bn:                                            ; preds = %bb.bl
  %i.ld = atomicrmw volatile add ptr %i.kq, i32 -1 acq_rel, align 4, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120.i: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i121.i = phi i32 [ %i.kt, %bb.bm ], [ %i.ld, %bb.bn ]
  %i.le = icmp eq i32 %.0.i.i.i.i121.i, 1
  br i1 %i.le, label %bb.bo, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !85

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kp) #24, !noalias !208
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i120.i, %bb.bk, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !208
  %.not.i122.i = icmp eq ptr %.sroa.9.0.i, %.sroa.13.0.i
  br i1 %.not.i122.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i32 %i.ko, ptr %.sroa.9.0.i, align 4, !tbaa !3, !noalias !208
  br label %.critedge82.i

bb.bq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.lf = ptrtoint ptr %.sroa.13.0.i to i64       ; 2 uses
  %i.lg = ptrtoint ptr %.sroa.0185.0.i to i64     ; 3 uses
  %i.lh = sub i64 %i.lf, %i.lg                    ; 4 uses
  %i.li = icmp eq i64 %i.lh, 9223372036854775804
  br i1 %i.li, label %bb.br, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc125.i.a unwind label %.loopexit.split-lp.i, !noalias !208

.noexc125.i.a:                                    ; preds = %bb.br
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bq
  %i.lj = ashr exact i64 %i.lh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = call i64 @llvm.umin.i64(i64 %i.lk, i64 2305843009213693951)
  %i.ln = select i1 %i.ll, i64 2305843009213693951, i64 %i.lm ; 3 uses
  %.not.i.i.i123.i = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %.not.i.i.i123.i)
  %i.lo = shl nuw nsw i64 %i.ln, 2
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #26
          to label %.noexc126.i unwind label %.loopexit.i, !noalias !208 ; 8 uses

.noexc126.i:                                      ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh
  store i32 %i.ko, ptr %i.lq, align 4, !tbaa !3, !noalias !208
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0185.0.i, %.sroa.13.0.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc126.i
  %i.lr = ptrtoaddr ptr %i.lp to i64
  %i.ls = add i64 %i.lf, -4
  %i.lt = sub i64 %i.ls, %i.lg                    ; 2 uses
  %i.lu = lshr i64 %i.lt, 2
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lt, 28
  %i.lw = sub i64 %i.lr, %i.lg
  %diff.check = icmp ult i64 %i.lw, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader278, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.lv, 9223372036854775800     ; 3 uses
  %i.lx = shl i64 %n.vec, 2                       ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lp, i64 %i.lx  ; 2 uses
  %i.lz = getelementptr i8, ptr %.sroa.0185.0.i, i64 %i.lx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ma = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lp, i64 %i.ma ; 2 uses
  %next.gep275 = getelementptr i8, ptr %.sroa.0185.0.i, i64 %i.ma ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.mb = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep275, align 4, !tbaa !3, !alias.scope !312, !noalias !314
  %wide.load276 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !3, !alias.scope !312, !noalias !314
  %i.mc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !309, !noalias !315
  store <4 x i32> %wide.load276, ptr %i.mc, align 4, !tbaa !3, !alias.scope !309, !noalias !315
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader278

.lr.ph.i.i.i.i.i.i.preheader278:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ly, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0185.0.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader278, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader278 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader278 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.me = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !312, !noalias !314
  store i32 %i.me, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !309, !noalias !315
  %i.mf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i124.i = icmp eq ptr %i.mf, %.sroa.13.0.i
  br i1 %.not.i.i.i.i.i124.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !319

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc126.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.lp, %.noexc126.i ], [ %i.ly, %middle.block ], [ %i.mg, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0185.0.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0.i, i64 noundef %i.lh) #25, !noalias !208
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.ln
  br label %.critedge82.i

.critedge82.i:                                    ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.bp
  %.sroa.13.5.i = phi ptr [ %i.mh, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.13.0.i, %bb.bp ]
  %.0.lcssa.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.9.0.i, %bb.bp ]
  %.sroa.0185.5.i = phi ptr [ %i.lp, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.0185.0.i, %bb.bp ]
  %.sroa.9.3.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.i, i64 4
  %i.mi = load ptr, ptr %i.ac, align 8, !tbaa !130, !noalias !208 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ad
  br i1 %i.mj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.critedge82.i
  %i.mk = load i64, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #25, !noalias !208
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.critedge82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !208
  %i.mm = add nuw nsw i32 %.058.i, 1
  br label %bb.c, !llvm.loop !320

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit104.i
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadata13WriteMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEE.exit.i, %_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i.i, %bb.bg, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i.i, %bb.be, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i175.i, %bb.bb, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i172.i, %bb.az, %bb.as, %bb.ar, %.noexc110.i, %bb.ap, %bb.ao, %_ZNK5arrow5Table5fieldEi.exit.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #24, !noalias !208
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn62.i = phi { ptr, i32 } [ %i.mo, %bb.bu ], [ %i.mn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !208
  br label %bb.bw

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i:                             ; preds = %bb.br
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bv, %bb.ak
  %.pn64.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ak ], [ %.pn62.i, %bb.bv ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.mp = load ptr, ptr %i.ac, align 8, !tbaa !130, !noalias !208 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.ad
  br i1 %i.mq, label %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i: ; preds = %bb.bw
  %i.mr = load i64, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #25, !noalias !208
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i

_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !208
  br label %bb.co

.critedge83.i:                                    ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.mt = load ptr, ptr %i.ac, align 8, !tbaa !130, !noalias !208 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.ad
  br i1 %i.mu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i: ; preds = %.critedge83.i
  %i.mv = load i64, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #25, !noalias !208
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i: ; preds = %.critedge83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !208
  br label %bb.cm

.critedge85.i:                                    ; preds = %_ZNK5arrow5Table11num_columnsEv.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !321, !noalias !208
  %i.mz = icmp eq ptr %.sroa.0185.0.i, %.sroa.9.0.i
  %spec.select.i.i.i = select i1 %i.mz, ptr @_ZZN22arrow_vendored_private11flatbuffers4dataINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EEEPKT_RKSt6vectorISA_T0_EE1t, ptr %.sroa.0185.0.i
  %i.na = ptrtoint ptr %.sroa.9.0.i to i64
  %i.nb = ptrtoint ptr %.sroa.0185.0.i to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 2
  %i.ne = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN5arrow3ipc7feather3fbs6ColumnEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef %spec.select.i.i.i, i64 noundef %i.nd)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i unwind label %bb.ca, !noalias !208

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i: ; preds = %.critedge85.i
  %i.nf = invoke i32 @_ZN5arrow3ipc7feather3fbs12CreateCTableERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEElNS8_INS4_6VectorINS8_INS2_6ColumnEEEjEEEEiSA_(ptr noundef nonnull align 8 dereferenceable(128) %12, i32 0, i64 noundef %i.my, i32 %i.ne, i32 noundef 2, i32 0)
          to label %bb.bx unwind label %bb.ca, !noalias !208

bb.bx:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE6FinishEjPKcb(ptr noundef nonnull align 8 dereferenceable(128) %12, i32 noundef %i.nf, ptr noundef null, i1 noundef zeroext false)
          to label %bb.by unwind label %bb.ca, !noalias !208

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !208
  %i.ng = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !302, !noalias !208
  %i.nh = load i32, ptr %i.s, align 8, !tbaa !225, !noalias !208
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ni = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc135.i unwind label %bb.cb, !noalias !208 ; 14 uses

.noexc135.i:                                      ; preds = %bb.by
  %i.nj = zext i32 %i.nh to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 5 uses
  store i32 1, ptr %i.nk, align 8, !tbaa !74, !noalias !326
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 12 ; 2 uses
  store i32 1, ptr %i.nl, align 4, !tbaa !79, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ni, align 8, !tbaa !43, !noalias !326
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.nm, ptr noundef %i.ng, i64 noundef %i.nj)
          to label %bb.bz unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !326

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc135.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef 96) #25, !noalias !326
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !85

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !83
  store i8 %i.t, ptr %i.s, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !83
  store i8 %i.x, ptr %i.w, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !83
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !130
  store i64 %.0, ptr %i.h, align 8, !tbaa !83
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA18_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(18) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !405
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !405
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !noalias !405, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %2) #24, !noalias !405
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !405 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !405
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !405
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !83
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !83
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !147    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !68
  store ptr null, ptr %i.r, align 8, !tbaa !73
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !68
  store ptr null, ptr %2, align 8, !tbaa !136
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !411, !noalias !408
  store ptr null, ptr %i.t, align 8, !tbaa !73, !alias.scope !411, !noalias !408
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !408, !noalias !411
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !136, !alias.scope !411, !noalias !408
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !417, !noalias !414
  store ptr null, ptr %i.y, align 8, !tbaa !73, !alias.scope !417, !noalias !414
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !414, !noalias !417
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !136, !alias.scope !417, !noalias !414
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !135
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !147
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !135
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZN5arrow3ipc21RecordBatchFileReader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result.87") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !79
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !419
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !419
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread, !prof !154

_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !50, !range !60, !noundef !61
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc21RecordBatchFileReaderEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV19GetColumnEiPSt10shared_ptrINS_12ChunkedArrayEE:bb.a
  %.not.i.i.i72 = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i72, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iv = add nsw i32 %i.im, -1
  store i32 %i.iv, ptr %i.ij, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

bb.bl:                                            ; preds = %bb.bj
  %i.iw = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i74 = phi i32 [ %i.im, %bb.bk ], [ %i.iw, %bb.bl ]
  %i.ix = icmp eq i32 %.0.i.i.i.i74, 1
  br i1 %i.ix, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, !prof !85

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #24
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75: ; preds = %.critedge, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i73, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !73 ; 8 uses
  %.not.i.i76 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i76, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 4 uses
  %i.jb = load atomic i64, ptr %i.ja acquire, align 8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 4294967297
  %i.jd = trunc i64 %i.jb to i32                  ; 2 uses
  br i1 %i.jc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.ja, align 8, !tbaa !74
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 0, ptr %i.je, align 4, !tbaa !79
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !43
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #24, !inline_history !851
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !43
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #24, !inline_history !851
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bp:                                            ; preds = %bb.bn
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i77 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i77, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

bb.br:                                            ; preds = %bb.bp
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i79 = phi i32 [ %i.jd, %bb.bq ], [ %i.jn, %bb.br ]
  %i.jo = icmp eq i32 %.0.i.i.i.i79, 1
  br i1 %i.jo, label %bb.bs, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit75, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i78, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.bt:                                            ; preds = %bb.bg, %.body, %bb.p
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.bg ], [ %.pn24, %.body ], [ %i.cc, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.o
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.bt ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn26.pn.pn
}

declare void @_ZN5arrow5Table4MakeESt10shared_ptrINS_6SchemaEESt6vectorIS1_INS_12ChunkedArrayEESaIS6_EEl(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.258") align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !817    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !808  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !79
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !852
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !852
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !819

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !817
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !811
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !817    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !856, !noalias !853
  store ptr null, ptr %i.r, align 8, !tbaa !73, !alias.scope !856, !noalias !853
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !853, !noalias !856
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !236, !alias.scope !856, !noalias !853
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.z, %.lr.ph.i.i.i16 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i18, align 8, !tbaa !68, !alias.scope !862, !noalias !859
  store ptr null, ptr %i.w, align 8, !tbaa !73, !alias.scope !862, !noalias !859
  store <2 x ptr> %i.x, ptr %.012.i.i.i17, align 8, !tbaa !68, !alias.scope !859, !noalias !862
  store ptr null, ptr %.0911.i.i.i18, align 8, !tbaa !236, !alias.scope !862, !noalias !859
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !858

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.z, %.lr.ph.i.i.i16 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !811
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !817
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8, !tbaa !808
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !811
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.159", align 16  ; 26 uses
  %6 = alloca %"class.arrow::Result.15", align 8  ; 13 uses
  %7 = alloca %"class.std::shared_ptr.19", align 16 ; 11 uses
  %8 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %10 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %12 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  %15 = alloca %"class.std::shared_ptr.19", align 8 ; 9 uses
  %16 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %17 = alloca %"class.std::shared_ptr.141", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.79", align 16 ; 4 uses
  %19 = alloca %"class.std::vector.159", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !3
  %i.l = sext i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m ; 3 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !120  ; 2 uses
  %i.p = icmp ugt i16 %i.o, 8
  br i1 %i.p, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !120  ; 2 uses
  %.not.i.i = icmp eq i16 %i.r, 0
  br i1 %.not.i.i, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit: ; preds = %bb.b, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.v = phi i64 [ %i.u, %bb.b ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ] ; 3 uses
  %i.w = icmp ugt i16 %i.o, 14
  br i1 %i.w, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59: ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.y = load i16, ptr %i.x, align 2, !tbaa !120  ; 2 uses
  %.not.i.i60 = icmp eq i16 %i.y, 0
  br i1 %.not.i.i60, label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59
  %i.z = zext i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !49
  br label %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit

_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit: ; preds = %bb.a, %bb.c, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit
  %i.ac = phi i64 [ %i.v, %bb.c ], [ %i.v, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59 ], [ %i.v, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit ], [ 0, %bb.a ]
  %i.ad = phi i64 [ %i.ab, %bb.c ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i59 ], [ 0, %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray6offsetEv.exit ], [ 0, %bb.a ]
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ac, i64 noundef %i.ad)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit
  %i.ah = load ptr, ptr %6, align 8, !tbaa !45
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.g

bb.f:                                             ; preds = %_ZNK5arrow3ipc7feather3fbs14PrimitiveArray11total_bytesEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !68, !noalias !870
  store ptr null, ptr %i.an, align 8, !tbaa !73, !noalias !870
  store <2 x ptr> %i.ao, ptr %7, align 16, !tbaa !68, !alias.scope !870
  store ptr null, ptr %i.al, align 8, !tbaa !70, !noalias !870
  %i.ap = load ptr, ptr %2, align 8, !tbaa !253   ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !256
  %i.as = icmp eq i32 %i.ar, 29
  br i1 %i.as, label %bb.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !253
  store ptr %i.au, ptr %2, align 8, !tbaa !253
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73 ; 4 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !73 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not7.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV110LoadValuesESt10shared_ptrINS_8DataTypeEEPKNS1_3fbs14PrimitiveArrayENS7_12TypeMetadataEPKvPS4_INS_9ArrayDataEE:bb.a
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i198

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i198: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i196, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %i.uv = phi ptr [ %.pr.i197, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i196 ], [ %i.ua, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i199 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i1.i199, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit200, label %bb.ft

bb.ft:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i198
  %i.uw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ux = load ptr, ptr %i.uw, align 16, !tbaa !880
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = ptrtoint ptr %i.uv to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef %i.va) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit200

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit200: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i198, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.fu:                                            ; preds = %bb.fe, %bb.g
  %.pn56 = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %.pn52.pn, %bb.fe ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.f
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.fu ], [ %i.aj, %bb.f ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn56.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.141") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !456    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !879  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !79
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !909
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !909
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !905

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !456
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !880
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !879  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !456    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !68
  store ptr null, ptr %i.r, align 8, !tbaa !73
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !68
  store ptr null, ptr %2, align 8, !tbaa !70
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !913, !noalias !910
  store ptr null, ptr %i.t, align 8, !tbaa !73, !alias.scope !913, !noalias !910
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !910, !noalias !913
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !70, !alias.scope !913, !noalias !910
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !915

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !919, !noalias !916
  store ptr null, ptr %i.y, align 8, !tbaa !73, !alias.scope !919, !noalias !916
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !916, !noalias !919
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !70, !alias.scope !919, !noalias !916
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !915

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !880
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !456
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !879
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !880
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.19", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !68
  store ptr null, ptr %i.d, align 8, !tbaa !73
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !68
  store ptr null, ptr %1, align 8, !tbaa !70
  %i.f = load i64, ptr %2, align 8, !tbaa !49
  %i.g = load i64, ptr %3, align 8, !tbaa !49
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull %4, i64 noundef %i.f, i64 noundef %i.g)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !79
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !921
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !921
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.22", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !784
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %2
  tail call void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !73   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !79
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !922
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !922
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_ZN5arrow12ChunkedArrayD2Ev:bb.a
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24, !inline_history !926
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24, !inline_history !926
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !85

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !927

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !239
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !925
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #25
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(18) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #24
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.f = load i32, ptr %2, align 4, !tbaa !3
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #24
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRiRA18_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn9
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !147    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !68
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !935, !noalias !932
  store ptr null, ptr %i.z, align 8, !tbaa !73, !alias.scope !935, !noalias !932
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !932, !noalias !935
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !136, !alias.scope !935, !noalias !932
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !940, !noalias !937
  store ptr null, ptr %i.ae, align 8, !tbaa !73, !alias.scope !940, !noalias !937
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !937, !noalias !940
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !136, !alias.scope !940, !noalias !937
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !135
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !147
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !135
  ret void
}

declare noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(14) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #24
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.f = load ptr, ptr %2, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %3) #24
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(14) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #24, !inline_history !942
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(144) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEPSt10shared_ptrINS_5TableEE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !830    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !830  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.bj, %bb.b ] ; 6 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.bk, %bb.b ] ; 4 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.bl, %bb.b ] ; 4 uses
  %.sroa.033.052 = phi ptr [ %i.d, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.h, ptr %7, align 8, !tbaa !129
  %i.r = load ptr, ptr %.sroa.033.052, align 8, !tbaa !130 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.033.052, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !131  ; 8 uses
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp slt i64 %i.t, 0
  br i1 %i.v, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = add nuw i64 %i.t, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !85

.noexc6.i:                                        ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26
          to label %.noexc21 unwind label %.loopexit ; 2 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !130
  store i64 %i.t, ptr %i.h, align 8, !tbaa !83
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc21, %bb.c
  %i.z = phi ptr [ %i.y, %.noexc21 ], [ %i.h, %bb.c ] ; 3 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.r, align 1, !tbaa !83
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !83
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  store i64 %i.t, ptr %i.i, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  store i8 0, ptr %i.ab, align 1, !tbaa !83
  %i.ac = load ptr, ptr %6, align 8, !tbaa !235
  %i.ad = load ptr, ptr %7, align 8, !tbaa !130
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !131
  %i.af = invoke noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 %i.ae, ptr %i.ad)
          to label %bb.i unwind label %.loopexit36 ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.af, -1                   ; 2 uses
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !943
  invoke void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(14) @.str.24)
          to label %.noexc22 unwind label %.loopexit36

.noexc22:                                         ; preds = %bb.j
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc22
  %i.ag = load ptr, ptr %4, align 8, !tbaa !130, !noalias !943 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.l
  br i1 %i.ah, label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !83, !noalias !943
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #25
  br label %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit

bb.l:                                             ; preds = %.noexc22
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !130, !noalias !943 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.l
  %i.an = load i64, ptr %i.l, align 8, !tbaa !83, !noalias !943
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !943
  br label %.body

_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !943
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %.noexc.i, %.noexc6.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit36:                                      ; preds = %bb.h, %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp37:                             ; preds = %bb.p
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit36, %.loopexit.split-lp37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ] ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !83
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.af, ptr %i.q, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.j, align 8, !tbaa !420
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.au = ptrtoint ptr %i.p to i64
  %i.av = ptrtoint ptr %i.o to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
          to label %.noexc23 unwind label %.loopexit.split-lp37

.noexc23:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #26
          to label %.noexc24 unwind label %.loopexit36 ; 5 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  store i32 %i.af, ptr %i.bf, align 4, !tbaa !3
  %i.bg = icmp sgt i64 %i.aw, 0
  br i1 %i.bg, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.o, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.aw) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %5, align 8, !tbaa !33
  store ptr %i.bh, ptr %i.j, align 8, !tbaa !420
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bi, ptr %i.k, align 8, !tbaa !37
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.n, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit
  %i.bj = phi ptr [ %i.be, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.o, %bb.n ], [ %i.o, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bk = phi ptr [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.p, %bb.n ], [ %i.p, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bl = phi ptr [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.at, %bb.n ], [ %i.q, %_ZN5arrow6Status7InvalidIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEES0_DpOT_.exit ]
  %i.bm = load ptr, ptr %7, align 8, !tbaa !130   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.h
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bo = load i64, ptr %i.h, align 8, !tbaa !83
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.not, label %.loopexit41, label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aa

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.bq = load ptr, ptr %1, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %.loopexit41 unwind label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit41:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %.critedge
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !73 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bw, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !79
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24, !inline_history !806
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i28.a = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i28.a, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bz, %bb.w ], [ %i.cj, %bb.x ]
  %i.ck = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ck, label %bb.y, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.loopexit41, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cl = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i29.a = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i29.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !37
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn17 = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #24
  %.pre = load ptr, ptr %5, align 8, !tbaa !33    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i.i.i30 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit31, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %.pre to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.cv) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit31

_ZNSt6vectorIiSaIiEED2Ev.exit31:                  ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn17
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

declare void @_ZN5arrow2io12CacheOptions12LazyDefaultsEv(ptr dead_on_unwind writable sret(%"struct.arrow::io::CacheOptions") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %5 = alloca %"class.std::shared_ptr.91", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.295", align 8   ; 12 uses
  %7 = alloca %"class.arrow::Result.300", align 8 ; 12 uses
  %8 = alloca %"class.arrow::Result.307", align 8 ; 13 uses
  %9 = alloca %"class.std::shared_ptr.28", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow3ipc21RecordBatchFileReader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.87") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.b = load ptr, ptr %4, align 8, !tbaa !45
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !45
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !68, !noalias !954
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !186, !noalias !954 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !73, !noalias !954
  store <2 x ptr> %i.h, ptr %5, align 16, !tbaa !68, !alias.scope !954
  store ptr null, ptr %i.e, align 8, !tbaa !186, !noalias !954
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
end_hunk_5

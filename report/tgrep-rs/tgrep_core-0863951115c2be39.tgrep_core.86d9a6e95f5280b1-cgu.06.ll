Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.06?download=true
inline.NumInlined: 905
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher17standard_decision:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ex, ptr %i.j, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !5 ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, -1
  call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq i64 %i.fb, 0
  br i1 %i.fd, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsbzNSmZPCnTx_10tgrep_core, ptr %.sroa.479.0..sroa_idx, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.n, ptr %i.fe, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsbzNSmZPCnTx_10tgrep_core, ptr %.sroa.483.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @24, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit158 unwind label %bb.i

bb.bj:                                            ; preds = %bb.bh
  %i.ff = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.fg = load i64, ptr %i.aq, align 8, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.fg, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bn unwind label %bb.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit158: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre273 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert274 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.pre275 = load i64, ptr %.phi.trans.insert274, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bq, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit158
  %i.fh = phi i64 [ %i.fg, %bb.bq ], [ %.pre275, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit158 ] ; 2 uses
  %i.fi = phi ptr [ %i.fr, %bb.bq ], [ %.pre273, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbzNSmZPCnTx_10tgrep_core.exit158 ] ; 2 uses
  br i1 %4, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fj = invoke { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ez, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fh, i1 noundef zeroext %3)
          to label %bb.bt unwind label %bb.bs

bb.bm:                                            ; preds = %bb.bk
  %i.fk = invoke { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore27matched_path_or_any_parentsRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ez, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fh, i1 noundef zeroext %3)
          to label %bb.bt unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bj
  %i.fl = load i64, ptr %i.e, align 8, !range !13, !noundef !5
  %i.fm = trunc nuw i64 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !16, !noundef !5 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.fm, label %bb.bo, label %bb.bp, !prof !6

bb.bo:                                            ; preds = %bb.bn
  %i.fq = load i64, ptr %i.fp, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.fo, i64 %i.fq) #34
          to label %bb.bc unwind label %bb.i

bb.bp:                                            ; preds = %bb.bn
  %i.fr = load ptr, ptr %i.fp, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.fs = icmp ule i64 %i.fg, %i.fo
  call void @llvm.assume(i1 %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not100 = icmp eq i64 %i.fg, 0
  br i1 %.not100, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.br, %bb.bp
  store i64 %i.fo, ptr %i.i, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.fr, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.fg, ptr %.sroa.675.0..sroa_idx, align 8
  br label %bb.bk

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fr, ptr nonnull align 1 %i.ff, i64 %i.fg, i1 false)
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bm, %bb.bl
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #31
          to label %.body unwind label %bb.bb

bb.bt:                                            ; preds = %bb.bl, %bb.bm
  %.pn.i159 = phi { i64, ptr } [ %i.fj, %bb.bl ], [ %i.fk, %bb.bm ]
  %.sroa.01.0.i160 = extractvalue { i64, ptr } %.pn.i159, 0
  %switch.idx.cast.i161 = trunc i64 %.sroa.01.0.i160 to i8 ; 2 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i167 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i167: ; preds = %bb.bt
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bg unwind label %bb.i

.thread233:                                       ; preds = %bb.ai, %bb.q, %bb.ak, %.noexc154, %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher17standard_decision0B6_.exit181, %bb.bg
  %switch.idx.cast.i161.pn = phi i8 [ %switch.idx.cast.i161, %bb.bg ], [ %switch.idx.cast.i177, %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher17standard_decision0B6_.exit181 ], [ %switch.idx.cast.i152, %.noexc154 ], [ %switch.idx.cast.i133.lcssa, %bb.ak ], [ %switch.idx.cast.i.1, %bb.q ], [ %switch.idx.cast.i, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit174 unwind label %bb.bw

bb.bw:                                            ; preds = %.thread233
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.bw
  %common.resume.op = phi { ptr, i32 } [ %i.fw, %bb.bw ], [ %i.y, %bb.b ], [ %.pn102, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbzNSmZPCnTx_10tgrep_core.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core.exit174: ; preds = %.thread233
  %.sroa.0.7 = sub i8 2, %switch.idx.cast.i161.pn
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret i8 %.sroa.0.7

.thread:                                          ; preds = %.thread225, %bb.bg
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br i1 %4, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.thread
  %i.fz = invoke { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore7matchedRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3)
          to label %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher17standard_decision0B6_.exit181 unwind label %bb.i

bb.bz:                                            ; preds = %.thread
  %i.ga = invoke { i64, ptr } @_RINvMs_NtCs30WoLBgco1_6ignore9gitignoreNtB5_9Gitignore27matched_path_or_any_parentsRNtNtCs5Xr050g3D4S_3std4path4PathECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.fy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3)
          to label %_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher17standard_decision0B6_.exit181 unwind label %bb.i

_RNCNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB4_13IgnoreMatcher17standard_decision0B6_.exit181: ; preds = %bb.bz, %bb.by
  %.pn.i175 = phi { i64, ptr } [ %i.fz, %bb.by ], [ %i.ga, %bb.bz ]
  %.sroa.01.0.i176 = extractvalue { i64, ptr } %.pn.i175, 0
  %switch.idx.cast.i177 = trunc i64 %.sroa.01.0.i176 to i8
  br label %.thread233
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher30tracked_membership_fingerprint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(424) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !noundef !5 ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !range !13, !noalias !955, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !range !13, !noalias !955, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %.sink.split.i, label %_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore30tracked_membership_fingerprint.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load atomic i32, ptr %i.i acquire, align 8, !noalias !955
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE15get_or_try_initNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_.exit.i, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE10initializeNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_(ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %i.c), !noalias !955
  br label %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE15get_or_try_initNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_.exit.i

_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE15get_or_try_initNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_.exit.i: ; preds = %bb.e, %bb.d
  %i.l = load i64, ptr %i.f, align 8, !range !13, !noalias !955, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %.sink.split.i, label %_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore30tracked_membership_fingerprint.exit

.sink.split.i:                                    ; preds = %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE15get_or_try_initNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %2 = load i64, ptr %i.n, align 8, !noalias !955, !noundef !5
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load <2 x i64>, ptr %3, align 8, !noalias !955
  %4 = insertelement <4 x i64> <i64 1, i64 poison, i64 poison, i64 poison>, i64 %2, i64 1
  %5 = shufflevector <2 x i64> %i.o, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x i64> %4, <4 x i64> %5, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore30tracked_membership_fingerprint.exit

_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore30tracked_membership_fingerprint.exit: ; preds = %bb.c, %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE15get_or_try_initNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_.exit.i, %.sink.split.i
  %7 = phi <4 x i64> [ <i64 0, i64 undef, i64 undef, i64 undef>, %bb.c ], [ <i64 0, i64 undef, i64 undef, i64 undef>, %_RINvMNtNtCs5Xr050g3D4S_3std4sync9once_lockINtB3_8OnceLockNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore15TrackedSnapshotE15get_or_try_initNCINvB2_11get_or_initNCNvMs0_BV_NtBV_21CaseInsensitiveIgnore30tracked_membership_fingerprint0E0zEBX_.exit.i ], [ %6, %.sink.split.i ]
  store <4 x i64> %7, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  store i64 2, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB5_21CaseInsensitiveIgnore30tracked_membership_fingerprint.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsbzNSmZPCnTx_10tgrep_core9gitignoreNtB2_13IgnoreMatcher38current_tracked_membership_fingerprint(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(424) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [24 x i8], align 8        ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.12.i.i = alloca [16 x i8], align 8       ; 6 uses
  %.sroa.14.i.i = alloca [32 x i8], align 8       ; 6 uses
  %.sroa.16.i.i = alloca [88 x i8], align 8       ; 6 uses
  %i.i = alloca [176 x i8], align 8               ; 12 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.4.i = alloca [24 x i8], align 8          ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 16               ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = load ptr, ptr %i.q, align 8, !noundef !5 ; 5 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 224 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !995, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 232 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !995, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !996
  call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core9git_index10index_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v), !noalias !997
  %i.w = load i64, ptr %i.h, align 8, !range !10, !noalias !996, !noundef !5
  %.not.i.i = icmp eq i64 %i.w, -1
  br i1 %.not.i.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !999
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !998, !noalias !1000, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !998, !noalias !1000, !noundef !5
  invoke void @_RNvNtNtCs5Xr050g3D4S_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i)
          to label %bb.e unwind label %bb.d, !noalias !1001

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %common.resume.i unwind label %bb.j, !noalias !1002

bb.e:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.d, align 8, !range !9, !noalias !999, !noundef !5 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 2                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1003 ; 5 uses
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1003
  %.sroa.1259.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.1259.0.copyload.i.i = load i64, ptr %.sroa.1259.0..sroa_idx.i.i, align 8, !noalias !1003
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !noalias !1003
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1003
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.15.0.copyload.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !noalias !1003
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.16.0..sroa_idx.i.i, i64 88, i1 false), !noalias !1003
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.15.0.i.i = phi i64 [ %.sroa.15.0.copyload.i.i, %bb.f ], [ undef, %bb.e ] ; 2 uses
  %.sroa.13.0.i.i = phi i64 [ %.sroa.13.0.copyload.i.i, %bb.f ], [ undef, %bb.e ] ; 2 uses
  %.sroa.1259.0.i.i = phi i64 [ %.sroa.1259.0.copyload.i.i, %bb.f ], [ undef, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !999
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs5Xr050g3D4S_3std2fs8metadataNtNtB4_4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i unwind label %bb.h, !noalias !1002

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.i, !noalias !1002

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !1002
  unreachable

common.resume.i:                                  ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9git_index12TrackedFilesEEB11_.exit.i, %bb.ap, %bb.ac, %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.dk, %bb.ap ], [ %i.z, %bb.d ], [ %i.bp, %bb.ac ], [ %i.ae, %bb.h ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9git_index12TrackedFilesEEB11_.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !1002
  unreachable

_RINvNtCs5Xr050g3D4S_3std2fs8metadataNtNtB4_4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !1002
  br i1 %i.ab, label %bb.l, label %bb.o

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  br label %_RNvNtCsbzNSmZPCnTx_10tgrep_core9gitignore14index_identity.exit.i

bb.l:                                             ; preds = %_RINvNtCs5Xr050g3D4S_3std2fs8metadataNtNtB4_4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ah = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %bb.p
    i64 3, label %bb.m
    i64 0, label %bb.p
    i64 1, label %bb.n
  ], !prof !12

default.unreachable:                              ; preds = %bb.v, %bb.q, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp ult ptr %i.ad, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %i.al = icmp ne i64 %i.ak, 1095216660480
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.al)
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %i.ad, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !alias.scope !1004, !noalias !996
  store i8 3, ptr %i.c, align 8, !alias.scope !1004, !noalias !996
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an), !noalias !997
  br label %bb.p

bb.o:                                             ; preds = %_RINvNtCs5Xr050g3D4S_3std2fs8metadataNtNtB4_4path7PathBufECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %.sroa.03.sroa.2.sroa.2.0..sroa.03.sroa.2.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.2.sroa.2.0..sroa.03.sroa.2.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.i.i, i64 16, i1 false), !noalias !996
  %.sroa.4.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.i.i, i64 32, i1 false), !noalias !996
  %.sroa.5.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.16.i.i, i64 88, i1 false), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i)
  store i64 %i.aa, ptr %i.i, align 8, !noalias !996
  %.sroa.03.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ad, ptr %.sroa.03.sroa.2.0..sroa_idx.i.i, align 8, !noalias !996
  %.sroa.2.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %.sroa.1259.0.i.i, ptr %.sroa.2.0..sroa_idx4.i.i, align 8, !noalias !996
  %.sroa.3.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.13.0.i.i, ptr %.sroa.3.0..sroa_idx6.i.i, align 8, !noalias !996
  %.sroa.49.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store i64 %.sroa.15.0.i.i, ptr %.sroa.49.0..sroa_idx10.i.i, align 8, !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !996
  call void @_RNvMsm_NtCs5Xr050g3D4S_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.i), !noalias !997
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !range !1005, !noalias !996, !noundef !5 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  %i.ar = load i64, ptr %i.f, align 8, !noalias !996 ; 4 uses
  %i.as = inttoptr i64 %i.ar to ptr
  br i1 %i.aq, label %bb.q, label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i)
end_hunk_0

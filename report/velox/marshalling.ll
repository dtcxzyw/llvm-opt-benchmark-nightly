Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/marshalling?download=true
inline.NumInlined: 690
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4absl12lts_2024011616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_:bb.a
  br label %_ZNK4absl12lts_2024011616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit, !llvm.loop !256

_ZNK4absl12lts_2024011616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  %storemerge.i = phi i64 [ %i.w, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ]
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !267, !alias.scope !260
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %_ZNK4absl12lts_2024011616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.z = load i32, ptr %i.a, align 8, !tbaa !268  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !270
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !271
  br label %.preheader

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %i.ab = phi i32 [ %.pre30, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %i.z, %.preheader.preheader ]
  %i.ac = phi i64 [ %.sroa.speculated.i.i, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre29, %.preheader.preheader ]
  %i.ad = phi ptr [ %i.as, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre, %.preheader.preheader ]
  %.0 = phi i64 [ %i.ay, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !85
  %i.ag = icmp eq i32 %i.ab, 1
  br i1 %i.ag, label %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread, label %bb.h

_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread: ; preds = %.preheader
  store i32 2, ptr %i.a, align 8, !tbaa !268
  %i.ah = add nuw nsw i64 %.0, 1
  br label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !269 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !tbaa !48 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61 ; 3 uses
  %i.aj = load i64, ptr %4, align 8, !tbaa !267
  %i.ak = invoke { i64, ptr } @_ZNK4absl12lts_202401166ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.aj)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %bb.h
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc14
  store i32 1, ptr %i.a, align 8, !tbaa !268
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc14
  %i.ap = load i64, ptr %4, align 8, !tbaa !267   ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, %.sroa.0.0.copyload.i.i
  br i1 %i.aq, label %.invoke, label %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.ap ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ar, %i.at
  %i.av = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.ap
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.au) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %i.b, align 8, !tbaa !48
  store ptr %i.as, ptr %i.x, align 8, !tbaa !61
  %i.aw = add i64 %i.ap, %i.al
  %i.ax = add i64 %i.aw, %.sroa.speculated.i.i
  store i64 %i.ax, ptr %4, align 8, !tbaa !267
  %.pre30 = load i32, ptr %i.a, align 8           ; 2 uses
  %i.ay = add nuw nsw i64 %.0, 1                  ; 3 uses
  %.not = icmp eq i64 %i.ay, 16
  %i.az = icmp eq i32 %.pre30, 2
  %or.cond = select i1 %.not, i1 true, i1 %i.az
  br i1 %or.cond, label %.critedge, label %.preheader, !llvm.loop !257

.critedge:                                        ; preds = %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread
  %i.ba = phi i64 [ %i.ah, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread ], [ %i.ay, %_ZN4absl12lts_2024011616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ]
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ba
  %i.bd = load ptr, ptr %0, align 8, !tbaa !79    ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2024011616strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bh, ptr noundef nonnull %3, ptr noundef nonnull %i.bc)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !258

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.critedge, %.invoke, %bb.c
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.bi = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !82
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #19
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

declare { i64, ptr } @_ZNK4absl12lts_202401166ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2024011616strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !287 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 6 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !288  ; 19 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 5 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !289
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.s = icmp eq ptr %i.q, %i.h
  br i1 %i.s, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !272

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !288
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.g, align 8, !tbaa !288
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.l                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f, !prof !77

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.z = sub nsw i64 0, %i.x
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %1, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ab = icmp eq i64 %i.w, 16
  br i1 %i.ab, label %bb.g, label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !289
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ad = icmp sgt i64 %i.d, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit
  %min.iters.check189 = icmp ult i64 %i.d, 16
  br i1 %min.iters.check189, label %.lr.ph.i.i.i.i.i55.preheader254, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader
  %i.ae = add i64 %i.c, -8                        ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr i8, ptr %2, i64 8
  %bound0191 = icmp ult ptr %1, %3
  %bound1192 = icmp ult ptr %i.ag, %i.af
  %found.conflict193 = and i1 %bound0191, %bound1192
  %4 = getelementptr i8, ptr %1, i64 8
  %5 = getelementptr i8, ptr %1, i64 %i.c
  %6 = getelementptr i8, ptr %2, i64 %i.ae
  %bound0194 = icmp ult ptr %4, %6
  %bound1195 = icmp ult ptr %2, %5
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %found.conflict193, %found.conflict196
  br i1 %conflict.rdx197, label %.lr.ph.i.i.i.i.i55.preheader254, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck190
  %n.vec199 = and i64 %i.d, 9223372036854775800   ; 3 uses
  %i.ah = shl i64 %n.vec199, 4                    ; 2 uses
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %i.aj = getelementptr i8, ptr %1, i64 %i.ah
  %i.ak = and i64 %i.d, 7
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next214, %vector.body200 ] ; 2 uses
  %i.al = shl i64 %index201, 4                    ; 3 uses
  %i.am = or disjoint i64 %i.al, 64               ; 2 uses
  %next.gep202 = getelementptr i8, ptr %2, i64 %i.al
  %next.gep203 = getelementptr i8, ptr %2, i64 %i.am
  %next.gep204 = getelementptr i8, ptr %1, i64 %i.al
  %next.gep205 = getelementptr i8, ptr %1, i64 %i.am
  %wide.vec206 = load <8 x ptr>, ptr %next.gep202, align 8, !tbaa !42
  %wide.vec209 = load <8 x ptr>, ptr %next.gep203, align 8, !tbaa !42
  %interleaved.vec212 = shufflevector <8 x ptr> %wide.vec206, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec212, ptr %next.gep204, align 8, !tbaa !42
  %interleaved.vec213 = shufflevector <8 x ptr> %wide.vec209, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec213, ptr %next.gep205, align 8, !tbaa !42
  %index.next214 = add nuw i64 %index201, 8       ; 2 uses
  %i.an = icmp eq i64 %index.next214, %n.vec199
  br i1 %i.an, label %middle.block215, label %vector.body200, !llvm.loop !273

middle.block215:                                  ; preds = %vector.body200
  %cmp.n216 = icmp eq i64 %i.d, %n.vec199
  br i1 %cmp.n216, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55.preheader254

.lr.ph.i.i.i.i.i55.preheader254:                  ; preds = %vector.memcheck190, %.lr.ph.i.i.i.i.i55.preheader, %middle.block215
  %.012.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck190 ], [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %middle.block215 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck190 ], [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.aj, %middle.block215 ]
  %.0910.i.i.i.i.i.ph = phi i64 [ %i.d, %vector.memcheck190 ], [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ak, %middle.block215 ]
  br label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.preheader254, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader254 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader254 ] ; 3 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i55.preheader254 ] ; 2 uses
  %i.ao = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !85
  store i64 %i.aq, ptr %.0811.i.i.i.i.i, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !61
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.at = add nsw i64 %.0910.i.i.i.i.i, -1
  %i.au = icmp samesign ugt i64 %.0910.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !274

_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.m ; 7 uses
  %.not9.i.i.i.i = icmp eq ptr %i.av, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aw = add i64 %i.a, %i.l
  %i.ax = add i64 %i.aw, -16
  %i.ay = add i64 %i.j, %i.b
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = lshr i64 %i.az, 4
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 368
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader257, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bc = and i64 %i.az, -16                      ; 2 uses
  %i.bd = getelementptr i8, ptr %i.h, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = add i64 %i.bc, %i.j
  %i.bg = add i64 %i.bf, 16
  %i.bh = sub i64 %i.bg, %i.l
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh
  %bound0 = icmp ult ptr %i.h, %i.bi
  %bound1 = icmp ult ptr %i.av, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader257, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 2305843009213693944     ; 3 uses
  %i.bj = shl i64 %n.vec, 4                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.h, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 4                       ; 3 uses
  %i.bn = or disjoint i64 %i.bm, 64               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bm
  %next.gep123 = getelementptr i8, ptr %i.h, i64 %i.bn
  %next.gep124 = getelementptr i8, ptr %i.av, i64 %i.bm
  %next.gep125 = getelementptr i8, ptr %i.av, i64 %i.bn
  %wide.vec = load <8 x ptr>, ptr %next.gep124, align 8, !tbaa !42, !alias.scope !290
  %wide.vec127 = load <8 x ptr>, ptr %next.gep125, align 8, !tbaa !42, !alias.scope !290
  %interleaved.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec, ptr %next.gep, align 8, !alias.scope !291, !noalias !290
  %interleaved.vec130 = shufflevector <8 x ptr> %wide.vec127, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec130, ptr %next.gep123, align 8, !alias.scope !291, !noalias !290
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader257

.lr.ph.i.i.i.i.preheader257:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader257, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader257 ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader257 ] ; 3 uses
  %i.bp = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !84
  %i.bq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !85
  store i64 %i.br, ptr %.011.i.i.i.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bp, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !288
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bw = sub nuw nsw i64 %i.d, %i.n
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bw ; 3 uses
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !288
  %i.by = icmp eq ptr %1, %i.h
  br i1 %i.by, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, label %.lr.ph.i.i.i.i.i56

.lr.ph.i.i.i.i.i56:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i56
  %.08.i.i.i.i.i57 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i56 ], [ %i.bx, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i58 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i56 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i57, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i58, i64 16, i1 false), !tbaa.struct !289
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i58, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i57, i64 16
  %i.cb = icmp eq ptr %i.bz, %i.h
  br i1 %i.cb, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit, label %.lr.ph.i.i.i.i.i56, !llvm.loop !272

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit: ; preds = %.lr.ph.i.i.i.i.i56
  %.pre101 = load ptr, ptr %i.g, align 8, !tbaa !288
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.cc = phi ptr [ %.pre101, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60.loopexit ], [ %i.bx, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.m
  store ptr %i.cd, ptr %i.g, align 8, !tbaa !288
  %i.ce = ashr exact i64 %i.m, 4                  ; 7 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i62.preheader, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i62.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60
  %min.iters.check145 = icmp ult i64 %i.ce, 16
  br i1 %min.iters.check145, label %.lr.ph.i.i.i.i.i62.preheader255, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.i.i.i.i.i62.preheader
  %i.cg = add i64 %i.m, -8                        ; 2 uses
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %2, i64 8
  %i.cj = getelementptr i8, ptr %2, i64 %i.m
  %bound0147 = icmp ult ptr %1, %i.cj
  %bound1148 = icmp ult ptr %i.ci, %i.ch
  %found.conflict149 = and i1 %bound0147, %bound1148
  %7 = getelementptr i8, ptr %1, i64 8
  %8 = getelementptr i8, ptr %2, i64 %i.cg
  %bound0150 = icmp ult ptr %7, %8
  %bound1151 = icmp ult ptr %2, %i.h
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx = or i1 %found.conflict149, %found.conflict152
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i62.preheader255, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck146
  %n.vec154 = and i64 %i.ce, 9223372036854775800  ; 3 uses
  %i.ck = shl i64 %n.vec154, 4                    ; 2 uses
  %i.cl = getelementptr i8, ptr %2, i64 %i.ck
  %i.cm = getelementptr i8, ptr %1, i64 %i.ck
  %i.cn = and i64 %i.ce, 7
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next169, %vector.body155 ] ; 2 uses
  %i.co = shl i64 %index156, 4                    ; 3 uses
  %i.cp = or disjoint i64 %i.co, 64               ; 2 uses
  %next.gep157 = getelementptr i8, ptr %2, i64 %i.co
  %next.gep158 = getelementptr i8, ptr %2, i64 %i.cp
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.co
  %next.gep160 = getelementptr i8, ptr %1, i64 %i.cp
  %wide.vec161 = load <8 x ptr>, ptr %next.gep157, align 8, !tbaa !42
  %wide.vec164 = load <8 x ptr>, ptr %next.gep158, align 8, !tbaa !42
  %interleaved.vec167 = shufflevector <8 x ptr> %wide.vec161, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec167, ptr %next.gep159, align 8, !tbaa !42
  %interleaved.vec168 = shufflevector <8 x ptr> %wide.vec164, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec168, ptr %next.gep160, align 8, !tbaa !42
  %index.next169 = add nuw i64 %index156, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next169, %n.vec154
  br i1 %i.cq, label %middle.block170, label %vector.body155, !llvm.loop !280

middle.block170:                                  ; preds = %vector.body155
  %cmp.n171 = icmp eq i64 %i.ce, %n.vec154
  br i1 %cmp.n171, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i62.preheader255

.lr.ph.i.i.i.i.i62.preheader255:                  ; preds = %vector.memcheck146, %.lr.ph.i.i.i.i.i62.preheader, %middle.block170
  %.012.i.i.i.i.i63.ph = phi ptr [ %2, %vector.memcheck146 ], [ %2, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cl, %middle.block170 ]
  %.0811.i.i.i.i.i64.ph = phi ptr [ %1, %vector.memcheck146 ], [ %1, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cm, %middle.block170 ]
  %.0910.i.i.i.i.i65.ph = phi i64 [ %i.ce, %vector.memcheck146 ], [ %i.ce, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cn, %middle.block170 ]
  br label %.lr.ph.i.i.i.i.i62

.lr.ph.i.i.i.i.i62:                               ; preds = %.lr.ph.i.i.i.i.i62.preheader255, %.lr.ph.i.i.i.i.i62
  %.012.i.i.i.i.i63 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i62 ], [ %.012.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i62.preheader255 ] ; 3 uses
  %.0811.i.i.i.i.i64 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i62 ], [ %.0811.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i62.preheader255 ] ; 3 uses
  %.0910.i.i.i.i.i65 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i62 ], [ %.0910.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i62.preheader255 ] ; 2 uses
  %i.cr = load ptr, ptr %.012.i.i.i.i.i63, align 8, !tbaa !84
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !85
  store i64 %i.ct, ptr %.0811.i.i.i.i.i64, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i66 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 8
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i66, align 8, !tbaa !61
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i64, i64 16
  %i.cw = add nsw i64 %.0910.i.i.i.i.i65, -1
  %i.cx = icmp samesign ugt i64 %.0910.i.i.i.i.i65, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i62, label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !281

bb.h:                                             ; preds = %bb.b
  %i.cy = load ptr, ptr %0, align 8, !tbaa !81    ; 5 uses
  %i.cz = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.da = sub i64 %i.j, %i.cz
  %i.db = ashr exact i64 %i.da, 4                 ; 4 uses
  %i.dc = sub nsw i64 576460752303423487, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.d
  br i1 %i.dd, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #20
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.d)
  %i.de = add nsw i64 %.sroa.speculated.i, %i.db  ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.db
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.de, i64 576460752303423487)
  %i.dh = select i1 %i.df, i64 576460752303423487, i64 %i.dg ; 3 uses
  %.not.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.di = shl nuw nsw i64 %i.dh, 4
  %i.dj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #21
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dk = phi ptr [ %i.dj, %bb.j ], [ null, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %i.dl = icmp eq ptr %i.cy, %1
  br i1 %i.dl, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i68

.lr.ph.i.i.i.i.i68:                               ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i68
  %.08.i.i.i.i.i69 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i68 ], [ %i.dk, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i70 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i68 ], [ %i.cy, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i69, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i70, i64 16, i1 false), !tbaa.struct !289
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i70, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i69, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %1
  br i1 %i.do, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i68, !llvm.loop !272

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i68, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i71 = phi ptr [ %i.dk, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ], [ %i.dn, %.lr.ph.i.i.i.i.i68 ] ; 7 uses
  %i.dp = add i64 %i.a, -16
  %i.dq = sub i64 %i.dp, %i.b                     ; 3 uses
  %i.dr = lshr i64 %i.dq, 4
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check226 = icmp ult i64 %i.dq, 240
  br i1 %min.iters.check226, label %.lr.ph.i.i.i.i73.preheader, label %vector.memcheck227

vector.memcheck227:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.dt = and i64 %i.dq, -16
  %i.du = add i64 %i.dt, 16                       ; 2 uses
  %i.dv = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.du
  %i.dw = getelementptr i8, ptr %2, i64 %i.du
  %bound0228 = icmp ult ptr %.0.lcssa.i.i.i.i.i71, %i.dw
  %bound1229 = icmp ult ptr %2, %i.dv
  %found.conflict230 = and i1 %bound0228, %bound1229
  br i1 %found.conflict230, label %.lr.ph.i.i.i.i73.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %vector.memcheck227
  %n.vec232 = and i64 %i.ds, 2305843009213693944  ; 3 uses
  %i.dx = shl i64 %n.vec232, 4                    ; 2 uses
  %i.dy = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %2, i64 %i.dx
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph231
  %index234 = phi i64 [ 0, %vector.ph231 ], [ %index.next247, %vector.body233 ] ; 2 uses
  %i.ea = shl i64 %index234, 4                    ; 3 uses
  %i.eb = or disjoint i64 %i.ea, 64               ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.ea
  %next.gep236 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71, i64 %i.eb
  %next.gep237 = getelementptr i8, ptr %2, i64 %i.ea
  %next.gep238 = getelementptr i8, ptr %2, i64 %i.eb
  %wide.vec239 = load <8 x ptr>, ptr %next.gep237, align 8, !tbaa !42, !alias.scope !292
  %wide.vec242 = load <8 x ptr>, ptr %next.gep238, align 8, !tbaa !42, !alias.scope !292
  %interleaved.vec245 = shufflevector <8 x ptr> %wide.vec239, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec245, ptr %next.gep235, align 8, !alias.scope !293, !noalias !292
  %interleaved.vec246 = shufflevector <8 x ptr> %wide.vec242, <8 x ptr> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  store <8 x ptr> %interleaved.vec246, ptr %next.gep236, align 8, !alias.scope !293, !noalias !292
  %index.next247 = add nuw i64 %index234, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next247, %n.vec232
  br i1 %i.ec, label %middle.block248, label %vector.body233, !llvm.loop !285

middle.block248:                                  ; preds = %vector.body233
  %cmp.n249 = icmp eq i64 %i.ds, %n.vec232
  br i1 %cmp.n249, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73.preheader

.lr.ph.i.i.i.i73.preheader:                       ; preds = %vector.memcheck227, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block248
  %.011.i.i.i.i74.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71, %vector.memcheck227 ], [ %.0.lcssa.i.i.i.i.i71, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dy, %middle.block248 ]
  %.0810.i.i.i.i75.ph = phi ptr [ %2, %vector.memcheck227 ], [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dz, %middle.block248 ]
  br label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %.lr.ph.i.i.i.i73.preheader, %.lr.ph.i.i.i.i73
  %.011.i.i.i.i74 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i73 ], [ %.011.i.i.i.i74.ph, %.lr.ph.i.i.i.i73.preheader ] ; 3 uses
  %.0810.i.i.i.i75 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i73 ], [ %.0810.i.i.i.i75.ph, %.lr.ph.i.i.i.i73.preheader ] ; 3 uses
  %i.ed = load ptr, ptr %.0810.i.i.i.i75, align 8, !tbaa !84
  %i.ee = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i75, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !85
  store i64 %i.ef, ptr %.011.i.i.i.i74, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i74, i64 8
  store ptr %i.ed, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i75, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i74, i64 16 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.eh, %3
  br i1 %.not.i.i.i.i76, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78, label %.lr.ph.i.i.i.i73, !llvm.loop !286

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78: ; preds = %.lr.ph.i.i.i.i73, %middle.block248
  %.lcssa120 = phi ptr [ %i.dy, %middle.block248 ], [ %i.ei, %.lr.ph.i.i.i.i73 ] ; 2 uses
  %i.ej = icmp eq ptr %1, %i.h
  br i1 %i.ej, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83, label %.lr.ph.i.i.i.i.i79

.lr.ph.i.i.i.i.i79:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78, %.lr.ph.i.i.i.i.i79
  %.08.i.i.i.i.i80 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i79 ], [ %.lcssa120, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i81 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i79 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i80, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i81, i64 16, i1 false), !tbaa.struct !289
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i81, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i80, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.h
  br i1 %i.em, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83, label %.lr.ph.i.i.i.i.i79, !llvm.loop !272

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83: ; preds = %.lr.ph.i.i.i.i.i79, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78
  %.0.lcssa.i.i.i.i.i82 = phi ptr [ %.lcssa120, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit78 ], [ %i.el, %.lr.ph.i.i.i.i.i79 ]
  %.not.i84 = icmp eq ptr %i.cy, null
  br i1 %.not.i84, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.ep) #19
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit83, %bb.k
  store ptr %i.dk, ptr %0, align 8, !tbaa !81
  store ptr %.0.lcssa.i.i.i.i.i82, ptr %i.g, align 8, !tbaa !288
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dh
  store ptr %i.eq, ptr %i.e, align 8, !tbaa !82
  br label %_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2024011616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i62, %.lr.ph.i.i.i.i.i55, %middle.block170, %middle.block215, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit60, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
end_hunk_0

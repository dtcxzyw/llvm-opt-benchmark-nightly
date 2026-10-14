Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/serialize_xml?download=true
inline.NumInlined: 765
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl3xml15deserialize_xmlISt6vectorIfSaIfEEEEvRT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN8tinyxml211XMLDocumentEPKNSF_10XMLElementE:bb.a
  ret void

bb.ac:                                            ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.s ], [ %i.bp, %bb.t ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.bq, %bb.u ]
  %i.cm = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.b
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ac
  %i.co = load i64, ptr %i.b, align 8, !tbaa !38
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZN8tinyxml210XMLElement21FindOrCreateAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #8

declare void @_ZN8tinyxml212XMLAttribute12SetAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN8tinyxml27XMLNode11DeleteChildEPS0_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl9serializeISt6vectorIfSaIfEEEEbRKT_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS1_IcSB_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, %i.d
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = ptrtoaddr ptr %i.b to i64
  %reass.sub.i = sub i64 %i.e, %i.f
  %i.g = and i64 %reass.sub.i, -4
  %i.h = add i64 %i.g, 8
  %.0.lcssa.i.i = select i1 %.not5.i.i, i64 8, i64 %i.h ; 10 uses
  %i.i = icmp slt i64 %.0.lcssa.i.i, 0
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #26
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %.0.lcssa.i.i, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.lcssa.i.i) #28 ; 7 uses
  store i8 0, ptr %i.j, align 1, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = add nsw i64 %.0.lcssa.i.i, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, i8 0, i64 %i.l, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !58  ; 3 uses
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !55  ; 3 uses
  %i.m = ptrtoint ptr %.pre to i64
  %i.n = ptrtoint ptr %.pre68 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  store i64 %i.p, ptr %i.j, align 1
  %.not14.i = icmp eq ptr %.pre68, %.pre
  br i1 %.not14.i, label %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.0.copyload.i9.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.q, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.010.015.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.pre68, %.lr.ph.i.preheader ] ; 5 uses
  %i.r = load i8, ptr %.sroa.010.015.i, align 1, !tbaa !38
  store i8 %i.r, ptr %.sroa.0.0.copyload.i9.i, align 1, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 1
  %i.u = load i8, ptr %i.s, align 1, !tbaa !38
  store i8 %i.u, ptr %i.t, align 1, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 2
  %i.x = load i8, ptr %i.v, align 1, !tbaa !38
  store i8 %i.x, ptr %i.w, align 1, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 3
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 3
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !38
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %.pre
  br i1 %.not.i, label %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i

_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 17, ptr %i.a, align 8, !tbaa !37
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %bb.f   ; 2 uses

.noexc32:                                         ; preds = %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  store ptr %i.ae, ptr %3, align 8, !tbaa !35
  %i.af = load i64, ptr %i.a, align 8, !tbaa !37  ; 3 uses
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ae, ptr noundef nonnull align 1 dereferenceable(17) @_ZTSSt6vectorIfSaIfEE, i64 17, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !39
  %i.ah = load ptr, ptr %3, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !39 ; 4 uses
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !50    ; 5 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = add nuw i64 %.0.lcssa.i.i, 24
  %i.at = add i64 %i.as, %i.ak
  %i.au = add i64 %i.at, %i.al                    ; 2 uses
  %i.av = add i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = icmp ugt i64 %i.av, %i.ar
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc32
  invoke void @_ZNSt6vectorIcSaIcEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.au)
          to label %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge unwind label %bb.g

._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge:    ; preds = %bb.b
  %.pre69 = load ptr, ptr %2, align 8, !tbaa !59
  %.pre70 = load i64, ptr %i.aj, align 8, !tbaa !39
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.c:                                             ; preds = %.noexc32
  %i.ax = icmp ult i64 %i.av, %i.ar
  br i1 %i.ax, label %bb.d, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.ay
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE6resizeEm.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ay, ptr %i.am, align 8, !tbaa !51
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

_ZNSt6vectorIcSaIcEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %i.az = phi i64 [ %.pre70, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge ], [ %i.ak, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ak, %bb.d ], [ %i.ak, %bb.c ]
  %i.ba = phi ptr [ %.pre69, %._ZNSt6vectorIcSaIcEE6resizeEm.exit_crit_edge ], [ %i.ao, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ], [ %i.ao, %bb.d ], [ %i.ao, %bb.c ] ; 2 uses
  %4 = ptrtoaddr ptr %i.ba to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ar ; 2 uses
  store i64 %i.az, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 7 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !35    ; 8 uses
  %i.be = ptrtoaddr ptr %i.bd to i64              ; 2 uses
  %i.bf = load i64, ptr %i.aj, align 8, !tbaa !39 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf
  %.not14.i35 = icmp samesign eq i64 %i.bf, 0
  br i1 %.not14.i35, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %min.iters.check = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check, label %.lr.ph.i36.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %4, %i.ap
  %i.bi = add i64 %i.aq, %i.be
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = add i64 %i.bj, 7
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %.lr.ph.i36.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check85 = icmp ult i64 %i.bf, 32
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.bf, 24
  %n.vec = and i64 %i.bf, -32                     ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bc, i64 %n.vec ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bd, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %index ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.bd, i64 %index ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep86, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep86, align 1, !tbaa !38
  %wide.load87 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !38
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !38
  store <16 x i8> %wide.load87, ptr %i.bp, align 1, !tbaa !38
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i36.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec89 = and i64 %i.bf, -8                    ; 4 uses
  %i.br = getelementptr i8, ptr %i.bc, i64 %n.vec89 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bd, i64 %n.vec89
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 3 uses
  %next.gep91 = getelementptr i8, ptr %i.bc, i64 %index90
  %next.gep92 = getelementptr i8, ptr %i.bd, i64 %index90
  %wide.load93 = load <8 x i8>, ptr %next.gep92, align 1, !tbaa !38
  store <8 x i8> %wide.load93, ptr %next.gep91, align 1, !tbaa !38
  %index.next94 = add nuw i64 %index90, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %i.bf, %n.vec89
  br i1 %cmp.n95, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.0.copyload.i9.i37.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bc, %vector.memcheck ], [ %i.bm, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.010.015.i38.ph = phi ptr [ %i.bd, %iter.check ], [ %i.bd, %vector.memcheck ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 3 uses
  %i.bu = add i64 %i.bf, %i.be                    ; 2 uses
  %.sroa.010.015.i38.ph134 = ptrtoaddr ptr %.sroa.010.015.i38.ph to i64 ; 2 uses
  %i.bv = sub i64 %i.bu, %.sroa.010.015.i38.ph134
  %xtraiter = and i64 %i.bv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol

.lr.ph.i36.prol:                                  ; preds = %.lr.ph.i36.preheader, %.lr.ph.i36.prol
  %.sroa.0.0.copyload.i9.i37.prol = phi ptr [ %i.bx, %.lr.ph.i36.prol ], [ %.sroa.0.0.copyload.i9.i37.ph, %.lr.ph.i36.preheader ] ; 2 uses
  %.sroa.010.015.i38.prol = phi ptr [ %i.by, %.lr.ph.i36.prol ], [ %.sroa.010.015.i38.ph, %.lr.ph.i36.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i36.prol ], [ 0, %.lr.ph.i36.preheader ]
  %i.bw = load i8, ptr %.sroa.010.015.i38.prol, align 1, !tbaa !38
  store i8 %i.bw, ptr %.sroa.0.0.copyload.i9.i37.prol, align 1, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37.prol, i64 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i36.prol.loopexit, label %.lr.ph.i36.prol, !llvm.loop !121

.lr.ph.i36.prol.loopexit:                         ; preds = %.lr.ph.i36.prol, %.lr.ph.i36.preheader
  %.lcssa133.unr = phi ptr [ poison, %.lr.ph.i36.preheader ], [ %i.bx, %.lr.ph.i36.prol ]
  %.sroa.0.0.copyload.i9.i37.unr = phi ptr [ %.sroa.0.0.copyload.i9.i37.ph, %.lr.ph.i36.preheader ], [ %i.bx, %.lr.ph.i36.prol ]
  %.sroa.010.015.i38.unr = phi ptr [ %.sroa.010.015.i38.ph, %.lr.ph.i36.preheader ], [ %i.by, %.lr.ph.i36.prol ]
  %i.bz = sub i64 %.sroa.010.015.i38.ph134, %i.bu
  %i.ca = icmp ugt i64 %i.bz, -8
  br i1 %i.ca, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36
  %.sroa.0.0.copyload.i9.i37 = phi ptr [ %i.cx, %.lr.ph.i36 ], [ %.sroa.0.0.copyload.i9.i37.unr, %.lr.ph.i36.prol.loopexit ] ; 9 uses
  %.sroa.010.015.i38 = phi ptr [ %i.cy, %.lr.ph.i36 ], [ %.sroa.010.015.i38.unr, %.lr.ph.i36.prol.loopexit ] ; 9 uses
  %i.cb = load i8, ptr %.sroa.010.015.i38, align 1, !tbaa !38
  store i8 %i.cb, ptr %.sroa.0.0.copyload.i9.i37, align 1, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !38
  store i8 %i.ce, ptr %i.cc, align 1, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !38
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !38
  store i8 %i.ck, ptr %i.ci, align 1, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !38
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 5
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 5
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !38
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 6
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 6
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !38
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 7
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !38
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i37, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i38, i64 8 ; 2 uses
  %.not.i39.7 = icmp eq ptr %i.cy, %i.bg
  br i1 %.not.i39.7, label %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit, label %.lr.ph.i36, !llvm.loop !122

_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit: ; preds = %.lr.ph.i36.prol.loopexit, %.lr.ph.i36, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIcSaIcEE6resizeEm.exit
  %.sroa.052.0 = phi ptr [ %i.bc, %_ZNSt6vectorIcSaIcEE6resizeEm.exit ], [ %i.br, %vec.epilog.middle.block ], [ %i.bm, %middle.block ], [ %.lcssa133.unr, %.lr.ph.i36.prol.loopexit ], [ %i.cx, %.lr.ph.i36 ] ; 3 uses
  %.sroa.052.099 = ptrtoaddr ptr %.sroa.052.0 to i64
  %i.cz = load i64, ptr %i.ag, align 8, !tbaa !39
  store i64 %i.cz, ptr %.sroa.052.0, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 8 ; 7 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !35    ; 8 uses
  %i.dc = ptrtoaddr ptr %i.db to i64              ; 2 uses
  %i.dd = load i64, ptr %i.ag, align 8, !tbaa !39 ; 10 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd
  %.not14.i41 = icmp samesign eq i64 %i.dd, 0
  br i1 %.not14.i41, label %.loopexit, label %iter.check117

iter.check117:                                    ; preds = %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  %min.iters.check101 = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check101, label %.lr.ph.i42.preheader, label %vector.memcheck98

vector.memcheck98:                                ; preds = %iter.check117
  %i.df = sub i64 %.sroa.052.099, %i.dc
  %i.dg = add i64 %i.df, 7
  %diff.check100 = icmp ult i64 %i.dg, 31
  br i1 %diff.check100, label %.lr.ph.i42.preheader, label %vector.main.loop.iter.check102

vector.main.loop.iter.check102:                   ; preds = %vector.memcheck98
  %min.iters.check103 = icmp ult i64 %i.dd, 32
  br i1 %min.iters.check103, label %vec.epilog.ph121, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check102
  %i.dh = and i64 %i.dd, 24
  %n.vec105 = and i64 %i.dd, -32                  ; 5 uses
  %i.di = getelementptr i8, ptr %i.da, i64 %n.vec105 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.db, i64 %n.vec105
  br label %vector.body106

vector.body106:                                   ; preds = %vector.ph104, %vector.body106
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %next.gep108 = getelementptr i8, ptr %i.da, i64 %index107 ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.db, i64 %index107 ; 2 uses
  %i.dk = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load110 = load <16 x i8>, ptr %next.gep109, align 1, !tbaa !38
  %wide.load111 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !38
  %i.dl = getelementptr i8, ptr %next.gep108, i64 16
  store <16 x i8> %wide.load110, ptr %next.gep108, align 1, !tbaa !38
  store <16 x i8> %wide.load111, ptr %i.dl, align 1, !tbaa !38
  %index.next112 = add nuw i64 %index107, 32      ; 2 uses
  %i.dm = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.dm, label %middle.block113, label %vector.body106, !llvm.loop !123

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %i.dd, %n.vec105
  br i1 %cmp.n114, label %.loopexit, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block113
  %min.epilog.iters.check120 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check120, label %.lr.ph.i42.preheader, label %vec.epilog.ph121, !prof !129

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check102, %vec.epilog.iter.check119
  %vec.epilog.resume.val115 = phi i64 [ %n.vec105, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check102 ]
  %n.vec122 = and i64 %i.dd, -8                   ; 4 uses
  %i.dn = getelementptr i8, ptr %i.da, i64 %n.vec122 ; 2 uses
  %i.do = getelementptr i8, ptr %i.db, i64 %n.vec122
  br label %vec.epilog.vector.body123

vec.epilog.vector.body123:                        ; preds = %vec.epilog.vector.body123, %vec.epilog.ph121
  %index124 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph121 ], [ %index.next128, %vec.epilog.vector.body123 ] ; 3 uses
  %next.gep125 = getelementptr i8, ptr %i.da, i64 %index124
  %next.gep126 = getelementptr i8, ptr %i.db, i64 %index124
  %wide.load127 = load <8 x i8>, ptr %next.gep126, align 1, !tbaa !38
  store <8 x i8> %wide.load127, ptr %next.gep125, align 1, !tbaa !38
  %index.next128 = add nuw i64 %index124, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.dp, label %vec.epilog.middle.block129, label %vec.epilog.vector.body123, !llvm.loop !124

vec.epilog.middle.block129:                       ; preds = %vec.epilog.vector.body123
  %cmp.n130 = icmp eq i64 %i.dd, %n.vec122
  br i1 %cmp.n130, label %.loopexit, label %.lr.ph.i42.preheader

.lr.ph.i42.preheader:                             ; preds = %iter.check117, %vector.memcheck98, %vec.epilog.iter.check119, %vec.epilog.middle.block129
  %.sroa.0.0.copyload.i9.i43.ph = phi ptr [ %i.da, %iter.check117 ], [ %i.da, %vector.memcheck98 ], [ %i.di, %vec.epilog.iter.check119 ], [ %i.dn, %vec.epilog.middle.block129 ] ; 2 uses
  %.sroa.010.015.i44.ph = phi ptr [ %i.db, %iter.check117 ], [ %i.db, %vector.memcheck98 ], [ %i.dj, %vec.epilog.iter.check119 ], [ %i.do, %vec.epilog.middle.block129 ] ; 3 uses
  %i.dq = add i64 %i.dd, %i.dc                    ; 2 uses
  %.sroa.010.015.i44.ph135 = ptrtoaddr ptr %.sroa.010.015.i44.ph to i64 ; 2 uses
  %i.dr = sub i64 %i.dq, %.sroa.010.015.i44.ph135
  %xtraiter136 = and i64 %i.dr, 7                 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.i42.preheader, %.lr.ph.i42.prol
  %.sroa.0.0.copyload.i9.i43.prol = phi ptr [ %i.dt, %.lr.ph.i42.prol ], [ %.sroa.0.0.copyload.i9.i43.ph, %.lr.ph.i42.preheader ] ; 2 uses
  %.sroa.010.015.i44.prol = phi ptr [ %i.du, %.lr.ph.i42.prol ], [ %.sroa.010.015.i44.ph, %.lr.ph.i42.preheader ] ; 2 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.lr.ph.i42.prol ], [ 0, %.lr.ph.i42.preheader ]
  %i.ds = load i8, ptr %.sroa.010.015.i44.prol, align 1, !tbaa !38
  store i8 %i.ds, ptr %.sroa.0.0.copyload.i9.i43.prol, align 1, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43.prol, i64 1 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44.prol, i64 1 ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol, !llvm.loop !125

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.i42.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i42.preheader ], [ %i.dt, %.lr.ph.i42.prol ]
  %.sroa.0.0.copyload.i9.i43.unr = phi ptr [ %.sroa.0.0.copyload.i9.i43.ph, %.lr.ph.i42.preheader ], [ %i.dt, %.lr.ph.i42.prol ]
  %.sroa.010.015.i44.unr = phi ptr [ %.sroa.010.015.i44.ph, %.lr.ph.i42.preheader ], [ %i.du, %.lr.ph.i42.prol ]
  %i.dv = sub i64 %.sroa.010.015.i44.ph135, %i.dq
  %i.dw = icmp ugt i64 %i.dv, -8
  br i1 %i.dw, label %.loopexit, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %.sroa.0.0.copyload.i9.i43 = phi ptr [ %i.et, %.lr.ph.i42 ], [ %.sroa.0.0.copyload.i9.i43.unr, %.lr.ph.i42.prol.loopexit ] ; 9 uses
  %.sroa.010.015.i44 = phi ptr [ %i.eu, %.lr.ph.i42 ], [ %.sroa.010.015.i44.unr, %.lr.ph.i42.prol.loopexit ] ; 9 uses
  %i.dx = load i8, ptr %.sroa.010.015.i44, align 1, !tbaa !38
  store i8 %i.dx, ptr %.sroa.0.0.copyload.i9.i43, align 1, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !38
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !38
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 3
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 3
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !38
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 4
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !38
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 5
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !38
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 6
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 6
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !38
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 7
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 7
  %i.es = load i8, ptr %i.er, align 1, !tbaa !38
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9.i43, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i44, i64 8 ; 2 uses
  %.not.i45.7 = icmp eq ptr %i.eu, %i.de
  br i1 %.not.i45.7, label %.loopexit, label %.lr.ph.i42, !llvm.loop !126

.loopexit:                                        ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %middle.block113, %vec.epilog.middle.block129, %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  %.sroa.052.1 = phi ptr [ %i.da, %_ZN3igl13serialization9serializeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIcS5_ERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit ], [ %i.dn, %vec.epilog.middle.block129 ], [ %i.di, %middle.block113 ], [ %.lcssa.unr, %.lr.ph.i42.prol.loopexit ], [ %i.et, %.lr.ph.i42 ] ; 2 uses
  store i64 %.0.lcssa.i.i, ptr %.sroa.052.1, align 1
  %i.ev = icmp sgt i64 %.0.lcssa.i.i, 1
  br i1 %i.ev, label %bb.e, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit, !prof !130

bb.e:                                             ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.052.1, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %i.j, i64 %.0.lcssa.i.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit: ; preds = %.loopexit, %bb.e
  %i.ex = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ad
  br i1 %i.ey, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit
  %i.ez = load i64, ptr %i.ad, align 8, !tbaa !38
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #23
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.0.lcssa.i.i) #23
  ret i1 true

bb.f:                                             ; preds = %_ZN3igl13serialization9serializeIfSaIfEEEvRKSt6vectorIT_T0_ERS3_IcSaIcEERN9__gnu_cxx17__normal_iteratorIPcSA_EE.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.g:                                             ; preds = %bb.b
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ad
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.g
  %i.ff = load i64, ptr %i.ad, align 8, !tbaa !38
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.fb, %bb.f ], [ %i.fc, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %.0.lcssa.i.i) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl3xml17serialization_xml9serializeIfSaIfEEEvRKSt6vectorIT_T0_EPN8tinyxml211XMLDocumentEPNSA_10XMLElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = load ptr, ptr %3, align 8, !tbaa !35     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !36
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

end_hunk_0

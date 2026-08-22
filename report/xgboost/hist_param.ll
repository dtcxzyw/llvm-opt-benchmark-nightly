Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/hist_param?download=true
inline.NumInlined: 1333
inline.NumDeleted: 641
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4dmlc8DemangleB5cxx11EPKc:bb.a
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.fn = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.fp = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.w
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.fr = load i64, ptr %i.w, align 8, !tbaa !15
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.e, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ft, ptr %0, align 8, !tbaa !16
  %i.fu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.fu, ptr %i.a, align 8, !tbaa !17
  %i.fv = icmp ugt i64 %i.fu, 15
  br i1 %i.fv, label %.noexc.i96, label %._crit_edge.i.i95

.noexc.i96:                                       ; preds = %bb.ai
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc98 unwind label %bb.am  ; 2 uses

.noexc98:                                         ; preds = %.noexc.i96
  store ptr %i.fw, ptr %0, align 8, !tbaa !9
  %i.fx = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.fx, ptr %i.ft, align 8, !tbaa !15
  br label %._crit_edge.i.i95

._crit_edge.i.i95:                                ; preds = %.noexc98, %bb.ai
  %i.fy = phi ptr [ %i.fw, %.noexc98 ], [ %i.ft, %bb.ai ] ; 2 uses
  switch i64 %i.fu, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %bb.al
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i95
  %i.fz = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.fz, ptr %i.fy, align 1, !tbaa !15
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr nonnull align 1 %1, i64 %i.fu, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i95
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !18
  %i.gc = load ptr, ptr %0, align 8, !tbaa !9
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga
  store i8 0, ptr %i.gd, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.an

bb.am:                                            ; preds = %.noexc.i96
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.al
  %i.gf = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.i
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.an
  %i.gh = load i64, ptr %i.i, align 8, !tbaa !15
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void

bb.ao:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.pn31 = phi { ptr, i32 } [ %i.ge, %bb.am ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ]
  %i.gj = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.i
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ao
  %i.gl = load i64, ptr %i.i, align 8, !tbaa !15
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn31
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare ptr @__cxa_demangle(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc5ErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree19HistMakerTrainParam11__DECLARE__EPN4dmlc9parameter21ParamManagerSingletonIS1_EE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 17, ptr %i.d, align 8, !tbaa !17
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %bb.a     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %3, align 8, !tbaa !9
  %i.g = load i64, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) @.str.24, i64 17, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !18
  %i.i = load ptr, ptr %3, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %i.k = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #33
          to label %.noexc23 unwind label %bb.b   ; 13 uses

.noexc23:                                         ; preds = %.noexc
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.k, i8 0, i64 136, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.o, ptr %i.n, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store ptr %i.r, ptr %i.q, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryIbEE, i64 16), ptr %i.k, align 16, !tbaa !43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc24 unwind label %bb.b

.noexc24:                                         ; preds = %.noexc23
  %i.s = load i64, ptr %i.p, align 16, !tbaa !18
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %.noexc24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !16, !alias.scope !222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.u, ptr noundef nonnull align 1 dereferenceable(7) @.str.40, i64 7, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 7, ptr %i.v, align 8, !tbaa !18, !alias.scope !222
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.w, align 1, !tbaa !15, !alias.scope !222
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.x, ptr noundef nonnull align 1 dereferenceable(7) @.str.40, i64 7, i1 false)
  %i.y = load i64, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  store i64 %i.y, ptr %i.p, align 16, !tbaa !18
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.v, align 8, !tbaa !18
  store i8 0, ptr %.pre.i.i.i, align 1, !tbaa !15
  %i.ab = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.u
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !15
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.noexc24
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store i64 16, ptr %i.af, align 8, !tbaa !227
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.k)
          to label %.noexc.i27 unwind label %bb.b

.noexc.i27:                                       ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i8 0, ptr %i.ag, align 16, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 1, ptr %i.ah, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 68, ptr %i.c, align 8, !tbaa !17
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc28 unwind label %bb.c   ; 3 uses

.noexc28:                                         ; preds = %.noexc.i27
  store ptr %i.aj, ptr %4, align 8, !tbaa !9
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !17  ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.aj, ptr noundef nonnull align 1 dereferenceable(68) @.str.25, i64 68, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.d

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc28
  %i.an = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ai
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ar = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.e
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.e, align 8, !tbaa !15
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.av, ptr %5, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 20, ptr %i.b, align 8, !tbaa !17
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc36 unwind label %bb.f   ; 2 uses

.noexc36:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  store ptr %i.aw, ptr %5, align 8, !tbaa !9
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.aw, ptr noundef nonnull align 1 dereferenceable(20) @.str.26, i64 20, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !18
  %i.az = load ptr, ptr %5, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.bb = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33
          to label %.noexc38 unwind label %bb.g   ; 15 uses

.noexc38:                                         ; preds = %.noexc36
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bb, i8 0, i64 160, i1 false)
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 137
  store i8 0, ptr %i.bj, align 1, !tbaa !232
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4dmlc9parameter10FieldEntryImEE, i64 16), ptr %i.bb, align 16, !tbaa !43
  invoke void @_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryImEEmE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRm(ptr noundef nonnull align 8 dereferenceable(136) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %.noexc39 unwind label %bb.g

.noexc39:                                         ; preds = %.noexc38
  invoke void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.bb)
          to label %_ZN4dmlc9ParameterIN7xgboost4tree19HistMakerTrainParamEE7DECLAREImEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit unwind label %bb.g

_ZN4dmlc9ParameterIN7xgboost4tree19HistMakerTrainParamEE7DECLAREImEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit: ; preds = %.noexc39
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  store i64 -1, ptr %i.bk, align 16, !tbaa !235
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i8 1, ptr %i.bl, align 8, !tbaa !231
  %i.bm = load ptr, ptr %i.bb, align 16, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef nonnull align 8 dereferenceable(160) ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(160) %i.bb, i64 noundef 1)
          to label %.noexc.i42 unwind label %bb.h

.noexc.i42:                                       ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree19HistMakerTrainParamEE7DECLAREImEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bq, ptr %6, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 43, ptr %i.a, align 8, !tbaa !17
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc43 unwind label %bb.i   ; 3 uses

.noexc43:                                         ; preds = %.noexc.i42
  store ptr %i.br, ptr %6, align 8, !tbaa !9
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !17  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.br, ptr noundef nonnull align 1 dereferenceable(43) @.str.27, i64 43, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryImEEmE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j

_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryImEEmE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc43
  %i.bw = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bq
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryImEEmE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.by = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryImEEmE8describeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ca = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.av
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.cc = load i64, ptr %i.av, align 8, !tbaa !15
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.a:                                             ; preds = %.noexc.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.b:                                             ; preds = %_ZN4dmlc9parameter14FieldEntryBaseINS0_10FieldEntryIbEEbE4InitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvRb.exit.i, %.noexc23, %.noexc
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.c:                                             ; preds = %.noexc.i27
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.d:                                             ; preds = %.noexc28
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %4, align 8, !tbaa !9     ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ai
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.d
  %i.ck = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.c
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.c ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.ch, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ] ; 2 uses
  %i.cm = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.e
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.e
  %i.co = load i64, ptr %i.e, align 8, !tbaa !15
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.a
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.a ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %.pn.pn.pn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.l

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.g:                                             ; preds = %.noexc39, %.noexc38, %.noexc36
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %_ZN4dmlc9ParameterIN7xgboost4tree19HistMakerTrainParamEE7DECLAREImEERNS_9parameter10FieldEntryIT_EEPNS6_21ParamManagerSingletonIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %.noexc.i42
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.j:                                             ; preds = %.noexc43
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %6, align 8, !tbaa !9     ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.bq
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.j
  %i.cx = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.i
  %.pn17 = phi { ptr, i32 } [ %i.ct, %bb.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.cu, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.g
  %.pn17.pn.pn = phi { ptr, i32 } [ %i.cr, %bb.g ], [ %.pn17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.cs, %bb.h ] ; 2 uses
  %i.cz = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.av
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.k
  %i.db = load i64, ptr %i.av, align 8, !tbaa !15
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.f
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.f ], [ %.pn17.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %.pn17.pn.pn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %.pn17.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  resume { ptr, i32 } %.pn17.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4dmlc9parameter12ParamManager8AddEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_16FieldAccessEntryE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.h, ptr %i.i, align 8, !tbaa !236
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4dmlc9parameter16FieldAccessEntryESt4lessIS5_ESaISt4pairIKS5_S9_EEE5countERSD_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 4 uses
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

end_hunk_0

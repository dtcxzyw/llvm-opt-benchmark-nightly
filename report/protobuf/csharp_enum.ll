inline.NumInlined: 1242
inline.NumDeleted: 657
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZdlPvm
; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6csharp13EnumGenerator8GenerateEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.47, align 8             ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.48", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.48", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.48", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.48", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_set", align 8 ; 16 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_set.23", align 8 ; 10 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %15 = alloca %"struct.std::pair.34", align 8    ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.e = tail call noundef ptr @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  tail call void @_ZN6google8protobuf8compiler6csharp19WriteEnumDocCommentEPNS0_2io7PrinterEPKNS2_7OptionsEPKNS0_14EnumDescriptorE(ptr noundef %1, ptr noundef %i.e, ptr noundef %i.g)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !30, !range !31, !noundef !32
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 35, ptr nonnull @.str)
          to label %bb.d unwind label %bb.c

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.c ], [ %.pn43.pn.pn.pn.pn, %.body ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %6, align 8, !tbaa !33     ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37
  %i.t = and i64 %i.s, 65536
  %i.u = icmp ne i64 %i.t, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.o, ptr noundef %i.q, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.u)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase18class_access_levelB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.z, align 1
  %i.aa = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.ab = xor i64 %i.aa, -1
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store i64 %i.aa, ptr %8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ac, ptr %i.ad, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA13_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cSt17basic_string_viewIcS8_EEEEvSD_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 29, ptr nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ae = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !30
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !82
  %i.an = add i64 %i.am, %i.ak
  store i64 %i.an, ptr %i.al, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 1, ptr %10, align 8
  %.sroa.4.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i50, align 8
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !83
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.4.0..sroa_idx.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 5 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
          to label %bb.br unwind label %bb.cg

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.bl = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !30
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %common.resume

bb.j:                                             ; preds = %bb.l, %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ] ; 5 uses
  %i.br = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase7optionsEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !84
  %i.bv = getelementptr inbounds nuw [48 x i8], ptr %i.bu, i64 %indvars.iv
  invoke void @_ZN6google8protobuf8compiler6csharp24WriteEnumValueDocCommentEPNS0_2io7PrinterEPKNS2_7OptionsEPKNS0_19EnumValueDescriptorE(ptr noundef nonnull %1, ptr noundef %i.br, ptr noundef %i.bv)
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %i.bz = getelementptr inbounds nuw [48 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !30, !range !31, !noundef !32
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i54, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 35, ptr nonnull @.str)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.cg = load i64, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i54, align 8, !tbaa !30
  %i.cj = load i64, ptr %i.as, align 8, !tbaa !37
  %i.ck = and i64 %i.cj, 65536
  %i.cl = icmp ne i64 %i.ck, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.cg, ptr noundef %i.ci, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.cl)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #26
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre192 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !84
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55
  %i.co = phi ptr [ %i.by, %bb.m ], [ %.pre192, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55 ]
  %20 = phi ptr [ %i.bw, %bb.m ], [ %.pre, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit55 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !90 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !91
  store i64 %i.cu, ptr %11, align 8
  store ptr %i.cs, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !38 ; 2 uses
  %.0.copyload.i.i.i56 = load i16, ptr %i.cw, align 1
  %i.cx = zext i16 %.0.copyload.i.i.i56 to i64    ; 2 uses
  %i.cy = xor i64 %i.cx, -1
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.cy
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !90 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !39
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !91
  invoke void @_ZN6google8protobuf8compiler6csharp16GetEnumValueNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES6_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.cx, ptr nonnull %i.cz, i64 %i.dd, ptr %i.db)
          to label %.preheader unwind label %bb.ar

.preheader:                                       ; preds = %bb.s, %bb.aq
  %i.de = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !92
  call void @llvm.prefetch.p0(ptr %i.de, i32 0, i32 1, i32 1), !noalias !92
  %i.df = load ptr, ptr %12, align 8, !tbaa !39, !noalias !92 ; 12 uses
  %i.dg = load i64, ptr %i.au, align 8, !tbaa !91, !noalias !92 ; 14 uses
  %i.dh = icmp ult i64 %i.dg, 9
  br i1 %i.dh, label %bb.t, label %bb.y

bb.t:                                             ; preds = %.preheader
  %i.di = icmp samesign ugt i64 %i.dg, 3
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.0.copyload.i.i.i115 = load i32, ptr %i.df, align 1
  %i.dj = zext i32 %.0.copyload.i.i.i115 to i64
  %i.dk = shl nuw i64 %i.dj, 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.dm, align 1
  %i.dn = zext i32 %.0.copyload.i4.i.i to i64
  %i.do = or disjoint i64 %i.dk, %i.dn
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %.not.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i, label %.noexc112, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = load i8, ptr %i.df, align 1, !tbaa !30
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 16
  %i.ds = getelementptr i8, ptr %i.df, i64 %i.dg
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !30
  %i.dv = zext i8 %i.du to i64
  %i.dw = or disjoint i64 %i.dr, %i.dv
  %i.dx = lshr i64 %i.dg, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !30
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 8
  %i.ec = or disjoint i64 %i.dw, %i.eb
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0.i.i = phi i64 [ %i.do, %bb.u ], [ %i.ec, %bb.w ]
  %i.ed = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ee = mul i64 %i.ed, -2543921745674291987
  %i.ef = call noundef i64 @llvm.bswap.i64(i64 %i.ee)
  br label %.noexc112

bb.y:                                             ; preds = %.preheader
  %i.eg = icmp ult i64 %i.dg, 17
  br i1 %i.eg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.0.copyload.i.i.i.i = load i64, ptr %i.df, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.ei, align 1
  %i.ej = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ek = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.el = zext i64 %i.ej to i128
  %i.em = zext i64 %i.ek to i128
  %i.en = mul nuw i128 %i.em, %i.el               ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = xor i128 %i.eo, %i.en
  %i.eq = trunc i128 %i.ep to i64
  br label %.noexc112

bb.aa:                                            ; preds = %bb.y
  %i.er = icmp ult i64 %i.dg, 33
  br i1 %i.er, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.0.copyload.i.i20.i = load i64, ptr %i.df, align 1
  %i.es = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.et, align 1
  %i.eu = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ev = zext i64 %i.es to i128
  %i.ew = zext i64 %i.eu to i128
  %i.ex = mul nuw i128 %i.ew, %i.ev               ; 2 uses
  %i.ey = getelementptr i8, ptr %i.df, i64 %i.dg  ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.ez, align 1
  %i.fa = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.fb = getelementptr i8, ptr %i.ey, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.fb, align 1
  %i.fc = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fd = zext i64 %i.fa to i128
  %i.fe = zext i64 %i.fc to i128
  %i.ff = mul nuw i128 %i.fe, %i.fd               ; 2 uses
  %i.fg = xor i128 %i.ff, %i.ex
  %i.fh = lshr i128 %i.fg, 64
  %i.fi = xor i128 %i.ex, %i.fh
  %i.fj = xor i128 %i.fi, %i.ff
  %i.fk = trunc i128 %i.fj to i64
  br label %.noexc112

bb.ac:                                            ; preds = %bb.aa
  %.not.i114 = icmp ugt i64 %i.dg, 1024
  br i1 %.not.i114, label %bb.ae, label %bb.ad, !prof !95

bb.ad:                                            ; preds = %bb.ac
  %i.fl = invoke noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.df, i64 noundef %i.dg)
          to label %.noexc116 unwind label %.loopexit

.noexc116:                                        ; preds = %bb.ad
  %i.fm = xor i64 %i.fl, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.fn = zext i64 %i.fm to i128
  %i.fo = mul nuw i128 %i.fn, 15902822328035259629 ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = xor i128 %i.fp, %i.fo
  %i.fr = trunc i128 %i.fq to i64
  br label %.noexc112

bb.ae:                                            ; preds = %bb.ac
  %i.fs = invoke noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.df, i64 noundef %i.dg)
          to label %.noexc112 unwind label %.loopexit

.noexc112:                                        ; preds = %.noexc116, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.ae
  %.0.i = phi i64 [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.v ], [ %i.eq, %bb.z ], [ %i.fk, %bb.ab ], [ %i.fr, %.noexc116 ], [ %i.ef, %bb.x ], [ %i.fs, %bb.ae ]
  %i.ft = add i64 %i.dg, 87
  %i.fu = add i64 %i.ft, %.0.i                    ; 3 uses
  %i.fv = load i64, ptr %i.av, align 8, !tbaa !37, !noalias !96
  %i.fw = and i64 %i.fv, 65535
  %i.fx = load i64, ptr %9, align 8, !tbaa !33, !noalias !96 ; 5 uses
  %i.fy = lshr i64 %i.fu, 7
  %i.fz = xor i64 %i.fw, %i.fy                    ; 2 uses
  %i.ga = trunc i64 %i.fu to i8
  %i.gb = and i8 %i.ga, 127
  %i.gc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !30, !noalias !92 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !30, !noalias !92 ; 4 uses
  %i.gd = insertelement <16 x i8> poison, i8 %i.gb, i64 0
  %i.ge = shufflevector <16 x i8> %i.gd, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.gf = load ptr, ptr %12, align 8
  %i.gg = load i64, ptr %i.au, align 8
  %.fr173 = freeze i64 %i.gg                      ; 3 uses
  %i.gh = icmp eq i64 %.fr173, 0
  br i1 %i.gh, label %.noexc112.split.us, label %.noexc112.split

.noexc112.split.us:                               ; preds = %.noexc112, %bb.af
  %.pn.i.us = phi i64 [ %i.gq, %bb.af ], [ %i.fz, %.noexc112 ]
  %.sroa.15.0.i.us = phi i64 [ %i.gp, %bb.af ], [ 0, %.noexc112 ] ; 2 uses
  %.sroa.7.0.i.us = and i64 %.pn.i.us, %i.fx      ; 5 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i.us
  call void @llvm.prefetch.p0(ptr %i.gi, i32 0, i32 3, i32 1), !noalias !92
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.sroa.7.0.i.us
  %i.gk = load <16 x i8>, ptr %i.gj, align 1, !tbaa !30, !noalias !92 ; 2 uses
  %i.gl = icmp eq <16 x i8> %i.ge, %i.gk
  %i.gm = bitcast <16 x i1> %i.gl to i16          ; 2 uses
  %.not58.i.us = icmp eq i16 %i.gm, 0
  br i1 %.not58.i.us, label %.critedge18.i.us, label %.lr.ph.i.us

.critedge18.i.us:                                 ; preds = %.critedge.i.us.us, %.noexc112.split.us
  %i.gn = icmp eq <16 x i8> %i.gk, splat (i8 -128)
  %i.go = bitcast <16 x i1> %i.gn to i16          ; 2 uses
  %.not51.i.us = icmp eq i16 %i.go, 0
  br i1 %.not51.i.us, label %bb.af, label %.thread.i, !prof !95

bb.af:                                            ; preds = %.critedge18.i.us
  %i.gp = add i64 %.sroa.15.0.i.us, 16            ; 2 uses
  %i.gq = add i64 %i.gp, %.sroa.7.0.i.us
  br label %.noexc112.split.us

.lr.ph.i.us:                                      ; preds = %.noexc112.split.us, %.critedge.i.us.us
  %.sroa.033.059.i.us.us = phi i16 [ %i.ha, %.critedge.i.us.us ], [ %i.gm, %.noexc112.split.us ] ; 3 uses
  %i.gr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i.us.us, i1 true)
  %i.gs = zext nneg i16 %i.gr to i64
  %i.gt = add i64 %.sroa.7.0.i.us, %i.gs
  %i.gu = and i64 %i.gt, %i.fx
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !91, !noalias !92
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE6insertIS9_Li0EEESt4pairINSE_8iteratorEbERKT_.exit, label %.critedge.i.us.us, !prof !99

.critedge.i.us.us:                                ; preds = %.lr.ph.i.us
  %i.gz = add i16 %.sroa.033.059.i.us.us, -1
  %i.ha = and i16 %i.gz, %.sroa.033.059.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.ha, 0
  br i1 %.not.i.us.us, label %.critedge18.i.us, label %.lr.ph.i.us

.noexc112.split:                                  ; preds = %.noexc112, %bb.ag
  %.pn.i = phi i64 [ %i.ia, %bb.ag ], [ %i.fz, %.noexc112 ]
  %.sroa.15.0.i = phi i64 [ %i.hz, %bb.ag ], [ 0, %.noexc112 ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.fx            ; 5 uses
end_hunk_0

inline.NumInlined: 1190
inline.NumDeleted: 527
begin_hunk_0_@_ZNK6google8protobuf8compiler10objectivec12ImportWriter19PrintRuntimeImportsEPNS0_2io7PrinterEb:bb.a
  %.pn75.pn.pn.ph = phi { ptr, i32 } [ %.pn75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %eh.lpad-body.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203 ]
  %.025.ph = phi ptr [ %i.qa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %i.op, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203 ]
  %.2.ph = phi i1 [ %i.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i203 ]
  %i.so = add i64 %.sink498, 1
  call void @_ZdlPvm(ptr noundef %.sink496, i64 noundef %i.so) #22
  br label %.body212

.body212:                                         ; preds = %.body212.sink.split, %.body231, %.body.i201
  %.pn75.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i202, %.body.i201 ], [ %.pn75, %.body231 ], [ %.pn75.pn.pn.ph, %.body212.sink.split ] ; 2 uses
  %.025 = phi ptr [ %i.op, %.body.i201 ], [ %i.qa, %.body231 ], [ %.025.ph, %.body212.sink.split ] ; 2 uses
  %.2 = phi i1 [ false, %.body.i201 ], [ %i.sk, %.body231 ], [ %.2.ph, %.body212.sink.split ] ; 2 uses
  %i.sp = load ptr, ptr %17, align 8, !tbaa !11   ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.oq
  br i1 %i.sq, label %.body193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %.body212
  %i.sr = load i64, ptr %i.oq, align 8, !tbaa !16
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #22
  br label %.body193

.body193:                                         ; preds = %.body212, %bb.at, %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oc, %bb.at ], [ %.pn75.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190 ], [ %i.se, %bb.bc ], [ %.pn75.pn.pn, %.body212 ] ; 2 uses
  %.227 = phi ptr [ %i.nd, %bb.at ], [ %.025, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.nd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190 ], [ %i.op, %bb.bc ], [ %.025, %.body212 ] ; 2 uses
  %.4 = phi i1 [ false, %bb.at ], [ %.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i190 ], [ false, %bb.bc ], [ %.2, %.body212 ] ; 2 uses
  %i.st = load ptr, ptr %16, align 8, !tbaa !11   ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.ne
  br i1 %i.su, label %.body182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %.body193
  %i.sv = load i64, ptr %i.ne, align 8, !tbaa !16
  br label %.body182.sink.split

.body182.sink.split:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  %.sink501 = phi i64 [ %i.sv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175 ]
  %.sink499 = phi ptr [ %i.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175 ]
  %.pn75.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175 ]
  %.429.ph = phi ptr [ %.227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175 ]
  %.6.ph = phi i1 [ %.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175 ]
  %i.sw = add i64 %.sink501, 1
  call void @_ZdlPvm(ptr noundef %.sink499, i64 noundef %i.sw) #22
  br label %.body182

.body182:                                         ; preds = %.body182.sink.split, %.body193, %.body.i
  %.pn75.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn75.pn.pn.pn.pn, %.body193 ], [ %.pn75.pn.pn.pn.pn.pn.pn.ph, %.body182.sink.split ] ; 2 uses
  %.429 = phi ptr [ %i.ls, %.body.i ], [ %.227, %.body193 ], [ %.429.ph, %.body182.sink.split ] ; 2 uses
  %.6 = phi i1 [ false, %.body.i ], [ %.4, %.body193 ], [ %.6.ph, %.body182.sink.split ] ; 2 uses
  %i.sx = load ptr, ptr %15, align 8, !tbaa !11   ; 2 uses
  %i.sy = icmp eq ptr %i.sx, %i.lt
  br i1 %i.sy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %.body182
  %i.sz = load i64, ptr %i.lt, align 8, !tbaa !16
  %i.ta = add i64 %i.sz, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.ta) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %.body182, %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260
  %.pn75.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.sd, %bb.bb ], [ %.pn75.pn.pn.pn.pn.pn.pn, %.body182 ] ; 2 uses
  %.631 = phi ptr [ %.429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.ls, %bb.bb ], [ %.429, %.body182 ] ; 2 uses
  %.8 = phi i1 [ %.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ false, %bb.bb ], [ %.6, %.body182 ] ; 2 uses
  %i.tb = load ptr, ptr %14, align 8, !tbaa !11   ; 2 uses
  %i.tc = icmp eq ptr %i.tb, %i.lb
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  %i.td = load i64, ptr %i.lb, align 8, !tbaa !16
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.tb, i64 noundef %i.te) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, %bb.ba
  %.pn75.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.sc, %bb.ba ], [ %.pn75.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.pn75.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ]
  %.732 = phi ptr [ %12, %bb.ba ], [ %.631, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.631, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ] ; 2 uses
  %.9 = phi i1 [ false, %bb.ba ], [ %.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.tf = load ptr, ptr %13, align 8, !tbaa !11   ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.km
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  %i.th = load i64, ptr %i.km, align 8, !tbaa !16
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.ti) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266
  %i.tj = icmp eq ptr %12, %.732
  %or.cond7 = select i1 %.9, i1 true, i1 %i.tj
  br i1 %or.cond7, label %.loopexit317, label %.preheader

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %.preheader
  %i.tk = phi ptr [ %i.tl, %.preheader ], [ %.732, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ]
  %i.tl = getelementptr inbounds i8, ptr %i.tk, i64 -184 ; 3 uses
  call void @_ZN6google8protobuf2io7Printer3SubD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.tl) #21
  %i.tm = icmp eq ptr %i.tl, %12
  br i1 %i.tm, label %.loopexit317, label %.preheader

.loopexit317:                                     ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %.loopexit319
  %.pn87.pn.pn = phi { ptr, i32 } [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %.pn75.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit317 ], [ %.pn.pn.pn, %.loopexit319 ]
  resume { ptr, i32 } %.pn87.pn.pn
}

declare void @_ZN6google8protobuf8compiler10objectivec29ProtobufFrameworkImportSymbolB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec15ParseSimpleFileESt17basic_string_viewIcSt11char_traitsIcEEPNS2_12LineConsumerEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler10objectivec12LineConsumerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8__detail9__variant16_Variant_storageILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFbvEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef 3)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #24
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.d, %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_123ProtoFrameworkCollectorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN6google8protobuf8compiler10objectivec12_GLOBAL__N_123ProtoFrameworkCollector11ConsumeLineESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, ptr %2, ptr noundef captures(address) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %2, i32 noundef 58, i64 noundef %1) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %.not142 = icmp eq i64 %i.e, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %.not142
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.h

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 55, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.17, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 %1, ptr %6, align 8, !tbaa !15
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 2, ptr %7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.18, ptr %i.g, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7)
  %i.h = load ptr, ptr %3, align 8, !tbaa !11     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %i.k = load ptr, ptr %4, align 8, !tbaa !11     ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = icmp eq ptr %i.k, %i.l                   ; 2 uses
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  br i1 %i.m, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  br i1 %i.m, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %i.p = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.p)
  %.not21.i = icmp eq ptr %4, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !92

bb.c:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.k, align 1, !tbaa !16
  store i8 %i.q, ptr %i.h, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.r = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = load ptr, ptr %3, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %3, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load <2 x i64>, ptr %i.w, align 8, !tbaa !16
  store <2 x i64> %i.x, ptr %i.v, align 8, !tbaa !16
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.i, align 8, !tbaa !16
  store ptr %i.k, ptr %3, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x i64>, ptr %i.z, align 8, !tbaa !16
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !16
  %.not.i35 = icmp eq ptr %i.h, null
  br i1 %.not.i35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.h, ptr %4, align 8, !tbaa !11
  store i64 %i.y, ptr %i.l, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.l, ptr %4, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ac = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %bb.f ], [ %i.l, %bb.g ], [ %i.k, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !14
  store i8 0, ptr %i.ac, align 1, !tbaa !16
  %i.ae = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !16
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.loopexit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.e)
  %i.aj = tail call { i64, ptr } @_ZN4absl12lts_2025051227StripLeadingAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE(i64 %.sroa.speculated.i, ptr %2) ; 2 uses
  %i.ak = extractvalue { i64, ptr } %i.aj, 0      ; 4 uses
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = ashr i64 %i.ak, 2                       ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.preheader.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.preheader.i.i:                       ; preds = %bb.h
  %i.aq = and i64 %i.ak, 3
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.aq
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i.i.preheader.i.i
  %.sroa.03.3.i.i.i.i = phi ptr [ %i.bj, %bb.l ], [ %i.am, %.lr.ph.i.i.i.preheader.i.i ] ; 8 uses
  %.015.i.i.i.i.i = phi i64 [ %i.bp, %bb.l ], [ %i.ao, %.lr.ph.i.i.i.preheader.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16, !noalias !151
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16, !noalias !151
  %i.aw = and i8 %i.av, 8
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16, !noalias !151
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16, !noalias !151
  %i.bc = and i8 %i.bb, 8
  %.not9.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not9.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit219, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16, !noalias !151
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16, !noalias !151
  %i.bi = and i8 %i.bh, 8
  %.not10.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not10.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit217, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i.i, i64 -4 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16, !noalias !151
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16, !noalias !151
  %i.bo = and i8 %i.bn, 8
  %.not11.i.i = icmp eq i8 %i.bo, 0
  br i1 %.not11.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit.loopexit.split.loop.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add nsw i64 %.015.i.i.i.i.i, -1
  %i.bq = icmp sgt i64 %.015.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !158

._crit_edge.i.i.i.i.i:                            ; preds = %bb.l, %bb.h
  %.sroa.03.0.i.i.i.i = phi ptr [ %i.am, %bb.h ], [ %scevgep.i.i, %bb.l ] ; 5 uses
  %.pre-phi.i.i.i.i.i = ptrtoint ptr %.sroa.03.0.i.i.i.i to i64
  %i.br = sub i64 %.pre-phi.i.i.i.i.i, %i.an
  switch i64 %i.br, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit [
    i64 3, label %bb.m
    i64 2, label %bb.n
    i64 1, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i, i64 -1 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16, !noalias !151
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16, !noalias !151
  %i.bx = and i8 %i.bw, 8
  %.not12.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not12.i.i, label %_ZN4absl12lts_2025051220StripAsciiWhitespaceESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.n
end_hunk_0

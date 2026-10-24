Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat?download=true
inline.NumInlined: 13193
inline.NumDeleted: 4330
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZL34common_chat_params_init_minimax_m3RK20common_chat_templateRKN10autoparser17generation_paramsE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375
  %i.ace = load i64, ptr %i.dg, align 8, !tbaa !63
  %i.acf = add i64 %i.ace, 1
  call void @_ZdlPvm(ptr noundef %i.acc, i64 noundef %i.acf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.acg = load ptr, ptr %15, align 8, !tbaa !61  ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.dd
  br i1 %i.ach, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  %i.aci = load i64, ptr %i.dd, align 8, !tbaa !63
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.ack = load ptr, ptr %14, align 8, !tbaa !61  ; 2 uses
  %i.acl = icmp eq ptr %i.ack, %i.da
  br i1 %i.acl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  %i.acm = load i64, ptr %i.da, align 8, !tbaa !63
  %i.acn = add i64 %i.acm, 1
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  ret void

bb.eq:                                            ; preds = %.loopexit, %_ZNSt14_Function_baseD2Ev.exit360, %bb.ei
  %.pn112.pn = phi { ptr, i32 } [ %.pn112, %.loopexit ], [ %.pn110, %_ZNSt14_Function_baseD2Ev.exit360 ], [ %i.aax, %bb.ei ]
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %28) #32
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %_ZNSt14_Function_baseD2Ev.exit358
  %.pn112.pn.pn = phi { ptr, i32 } [ %.pn112.pn, %bb.eq ], [ %.pn108, %_ZNSt14_Function_baseD2Ev.exit358 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  br label %bb.es

bb.es:                                            ; preds = %.body245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %bb.cv, %bb.er
  %.pn112.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn, %bb.er ], [ %.pn100, %.body245 ], [ %i.wv, %bb.cv ], [ %.pn102.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ] ; 2 uses
  %i.aco = load ptr, ptr %22, align 8, !tbaa !61  ; 2 uses
  %i.acp = icmp eq ptr %i.aco, %i.nz
  br i1 %i.acp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.es
  %i.acq = load i64, ptr %i.nz, align 8, !tbaa !63
  %i.acr = add i64 %i.acq, 1
  call void @_ZdlPvm(ptr noundef %i.aco, i64 noundef %i.acr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385, %bb.co
  %.pn112.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vt, %bb.co ], [ %.pn112.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385 ], [ %.pn112.pn.pn.pn, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  br label %bb.et

bb.et:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %bb.cn
  %.pn112.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387 ], [ %i.vs, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.cm
  %.pn112.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn.pn.pn.pn, %bb.et ], [ %i.vr, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.body228, %.thread439
  %.pn112.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn.pn.pn.pn.pn, %bb.eu ], [ %eh.lpad-body229, %.body228 ], [ %.pn90.pn.pn444, %.thread439 ] ; 2 uses
  %i.acs = load ptr, ptr %19, align 8, !tbaa !61  ; 2 uses
  %i.act = icmp eq ptr %i.acs, %i.eo
  br i1 %i.act, label %.body180, label %.body180.sink.split

.body180.sink.split:                              ; preds = %bb.ev, %bb.aa
  %.sink641 = phi ptr [ %i.fa, %bb.aa ], [ %i.acs, %bb.ev ]
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ez, %bb.aa ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn, %bb.ev ]
  %i.acu = load i64, ptr %i.eo, align 8, !tbaa !63
  %i.acv = add i64 %i.acu, 1
  call void @_ZdlPvm(ptr noundef %.sink641, i64 noundef %i.acv) #34
  br label %.body180

.body180:                                         ; preds = %.body180.sink.split, %bb.ev, %bb.aa
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.aa ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn, %bb.ev ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body180.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.acw = load ptr, ptr %18, align 8, !tbaa !61  ; 2 uses
  %i.acx = icmp eq ptr %i.acw, %i.dy
  br i1 %i.acx, label %.body169, label %.body169.sink.split

.body169.sink.split:                              ; preds = %.body180, %bb.y
  %.sink644 = phi ptr [ %i.ek, %bb.y ], [ %i.acw, %.body180 ]
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.ej, %bb.y ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn, %.body180 ]
  %i.acy = load i64, ptr %i.dy, align 8, !tbaa !63
  %i.acz = add i64 %i.acy, 1
  call void @_ZdlPvm(ptr noundef %.sink644, i64 noundef %i.acz) #34
  br label %.body169

.body169:                                         ; preds = %.body169.sink.split, %.body180, %bb.y
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.y ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn, %.body180 ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body169.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.ada = load ptr, ptr %17, align 8, !tbaa !61  ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.dj
  br i1 %i.adb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body169, %bb.w
  %.sink647 = phi ptr [ %i.du, %bb.w ], [ %i.ada, %.body169 ]
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dt, %bb.w ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body169 ]
  %i.adc = load i64, ptr %i.dj, align 8, !tbaa !63
  %i.add = add i64 %i.adc, 1
  call void @_ZdlPvm(ptr noundef %.sink647, i64 noundef %i.add) #34
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body169, %bb.w
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.w ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body169 ], [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.ade = load ptr, ptr %16, align 8, !tbaa !61  ; 2 uses
  %i.adf = icmp eq ptr %i.ade, %i.dg
  br i1 %i.adf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %.body
  %i.adg = load i64, ptr %i.dg, align 8, !tbaa !63
  %i.adh = add i64 %i.adg, 1
  call void @_ZdlPvm(ptr noundef %i.ade, i64 noundef %i.adh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.adi = load ptr, ptr %15, align 8, !tbaa !61  ; 2 uses
  %i.adj = icmp eq ptr %i.adi, %i.dd
  br i1 %i.adj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %i.adk = load i64, ptr %i.dd, align 8, !tbaa !63
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.adm = load ptr, ptr %14, align 8, !tbaa !61  ; 2 uses
  %i.adn = icmp eq ptr %i.adm, %i.da
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.ado = load i64, ptr %i.da, align 8, !tbaa !63
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adm, i64 noundef %i.adp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ew

bb.ew:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %bb.ci, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit291, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit288
  %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ], [ %i.tt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ], [ %i.ts, %bb.ci ], [ %i.tl, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit291 ], [ %i.te, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit288 ]
  call void @_ZN18common_chat_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %0) #32
  resume { ptr, i32 } %.pn112.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull align 8 dereferenceable(421) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.common_chat_peg_builder, align 8 ; 9 uses
  %4 = alloca %class.common_peg_parser, align 8   ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.common_json, align 8         ; 5 uses
  %6 = alloca %class.common_json, align 8         ; 5 uses
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %8 = alloca %"class.std::_Temporary_buffer", align 8 ; 8 uses
  %9 = alloca %"class.std::tuple.524", align 8    ; 4 uses
  %10 = alloca %"class.std::tuple.527", align 1   ; 3 uses
  %11 = alloca %"class.std::map.505", align 8     ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::vector.510", align 8  ; 13 uses
  %23 = alloca %class.common_json, align 8        ; 6 uses
  %i.h = alloca i8, align 1                       ; 8 uses
  %24 = alloca %"class.std::optional", align 8    ; 10 uses
  %25 = alloca %class.common_json, align 8        ; 14 uses
  %i.i = alloca i8, align 1                       ; 6 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %26 = alloca %"class.std::optional", align 8    ; 12 uses
  %27 = alloca %class.common_json, align 8        ; 7 uses
  %28 = alloca [1 x %struct.common_json_item], align 8 ; 15 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %51 = alloca %"class.std::optional", align 8    ; 7 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %53 = alloca %"class.std::optional", align 8    ; 7 uses
  %54 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 24 uses
  %55 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 30 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %64 = alloca %class.common_peg_arena, align 8   ; 8 uses
  %65 = alloca %"class.std::function", align 8    ; 12 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %68 = alloca %"class.std::function.308", align 8 ; 12 uses
  %69 = alloca %struct.common_grammar_options, align 1 ; 5 uses
  %70 = alloca [1 x %struct.common_grammar_trigger], align 8 ; 14 uses
  store i32 0, ptr %0, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8, !tbaa !57
  store i8 0, ptr %i.n, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 0, ptr %i.r, align 8, !tbaa !57
  store i8 0, ptr %i.q, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.s, align 8, !tbaa !181
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  store i64 0, ptr %i.v, align 8, !tbaa !57
  store i8 0, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !165
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.z, align 8, !tbaa !57
  store i8 0, ptr %i.y, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, i8 0, i64 96, i1 false)
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !57
  store i8 0, ptr %i.ac, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ag = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull @.str.131, i64 noundef 0, i64 noundef 14) #32
  %i.ah = icmp eq i64 %i.ag, -1                   ; 2 uses
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.h, align 1, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 7 uses
  store i8 0, ptr %i.aj, align 8, !tbaa !224
  br i1 %i.ah, label %bb.b, label %bb.cc

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  invoke void @_ZN11common_jsonC1ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.cb

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !860
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 10 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !146, !noalias !860
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr null, ptr %i.al, align 8, !tbaa !147, !noalias !860
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !105, !noalias !860
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !148, !noalias !860
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 5 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !281, !noalias !860
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bg = ptrtoint ptr %11 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 26
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 26
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 26
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 26
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 18
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i, %.noexc
  %.053.i = phi i64 [ 0, %.noexc ], [ %.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i ] ; 5 uses
  %i.bw = invoke noundef i64 @_ZNK11common_json4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.bx = icmp ult i64 %.053.i, %i.bw
  br i1 %i.bx, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.by = load ptr, ptr %i.al, align 8, !tbaa !147, !noalias !860
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.by)
          to label %bb.by unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonixEm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %.053.i)
          to label %._crit_edge.i.i.i unwind label %bb.s ; 5 uses

._crit_edge.i.i.i:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32, !noalias !860
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32, !noalias !860
  store ptr %i.ap, ptr %13, align 8, !tbaa !60, !noalias !860
  store i32 1701605234, ptr %i.ap, align 8, !noalias !860
  store i64 4, ptr %i.aq, align 8, !tbaa !57, !noalias !860
  store i8 0, ptr %i.bp, align 4, !tbaa !63, !noalias !860
  invoke void @_ZNK11common_json5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load ptr, ptr %13, align 8, !tbaa !61, !noalias !860 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ap
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !63, !noalias !860
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32, !noalias !860
  %i.cg = load i64, ptr %i.ar, align 8, !tbaa !57, !noalias !860 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 9
  br i1 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge124.thread.i
end_hunk_0
begin_hunk_1_@_ZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsE:bb.a
  %.not.i.i.i219.i = icmp eq ptr %i.lj, %.pre760
  br i1 %.not.i.i.i219.i, label %_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %22, align 8, !tbaa !288, !noalias !860
  br label %_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge448.i
  %i.lk = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre759, %._crit_edge448.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorI11common_jsonSaIS0_EED2Ev.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ll = load ptr, ptr %i.bc, align 8, !tbaa !290, !noalias !860
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lk to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lo) #34
  br label %_ZNSt6vectorI11common_jsonSaIS0_EED2Ev.exit.i

_ZNSt6vectorI11common_jsonSaIS0_EED2Ev.exit.i:    ; preds = %bb.bg, %bb.bq, %_ZSt8_DestroyIP11common_jsonS0_EvT_S2_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32, !noalias !860
  br label %bb.bt

.lr.ph447.i:                                      ; preds = %.lr.ph447.i.preheader, %bb.br
  %.0446.i = phi i64 [ %i.lv, %bb.br ], [ 0, %.lr.ph447.i.preheader ] ; 3 uses
  %i.lp = load ptr, ptr %22, align 8, !tbaa !288, !noalias !860
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.lp, i64 %.0446.i
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.lq) #32
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0243.3.i, i64 %.0446.i
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !62
  %i.lt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonixEm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %i.ls)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %.lr.ph447.i
  %i.lu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(32) %i.lt, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %23) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #32
  %i.lv = add nuw nsw i64 %.0446.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lv, %i.jv
  br i1 %exitcond.not.i, label %._crit_edge448.i, label %.lr.ph447.i, !llvm.loop !803

bb.bs:                                            ; preds = %.lr.ph447.i
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #32
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs, %bb.bj
  %.pn100.i = phi { ptr, i32 } [ %i.ks, %bb.bj ], [ %i.lw, %bb.bs ], [ %lpad.loopexit.split-lp1200, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorI11common_jsonSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32, !noalias !860
  br label %bb.bv

bb.bt:                                            ; preds = %_ZNSt6vectorI11common_jsonSaIS0_EED2Ev.exit.i, %bb.bd
  %.not.i.i.i220.i = icmp eq ptr %.sroa.0243.3.i, null
  br i1 %.not.i.i.i220.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lx = ptrtoint ptr %.sroa.20.3.i to i64
  %i.ly = sub i64 %i.lx, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0243.3.i, i64 noundef %i.ly) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bu, %bb.bt, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit186.thread.i, %bb.r
  %.1.i = phi i64 [ %i.dx, %bb.r ], [ %i.hw, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit186.thread.i ], [ %storemerge.i, %bb.bt ], [ %storemerge.i, %bb.bu ]
  %i.lz = load ptr, ptr %12, align 8, !tbaa !61, !noalias !860 ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.bo
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.mb = load i64, ptr %i.bo, align 8, !tbaa !63, !noalias !860
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !860
  br label %bb.c

bb.bv:                                            ; preds = %.body.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i, %bb.ay
  %.sroa.20.4.i = phi ptr [ %.sroa.20.0468.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i ], [ %.sroa.20.3.i, %.body.i ], [ %.sroa.20.0.i, %bb.ay ]
  %.sroa.0243.4.i = phi ptr [ %.sroa.0243.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i ], [ %.sroa.0243.3.i, %.body.i ], [ %.sroa.0243.0.i, %bb.ay ] ; 3 uses
  %.pn100.pn.i = phi { ptr, i32 } [ %.pn98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203.i ], [ %.pn100.i, %.body.i ], [ %i.iz, %bb.ay ] ; 2 uses
  %.not.i.i.i224.i = icmp eq ptr %.sroa.0243.4.i, null
  br i1 %.not.i.i.i224.i, label %_ZNSt6vectorImSaImEED2Ev.exit225.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.md = ptrtoint ptr %.sroa.20.4.i to i64
  %i.me = ptrtoint ptr %.sroa.0243.4.i to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0243.4.i, i64 noundef %i.mf) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit225.i

_ZNSt6vectorImSaImEED2Ev.exit225.i:               ; preds = %bb.bw, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i
  %.pn107.pn.pn.pn.i = phi { ptr, i32 } [ %.pn90.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164.i ], [ %.pn107.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181.i ], [ %i.ey, %bb.aa ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i ], [ %.pn100.pn.i, %bb.bv ], [ %.pn100.pn.i, %bb.bw ] ; 2 uses
  %i.mg = load ptr, ptr %12, align 8, !tbaa !61, !noalias !860 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, %i.bo
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit225.i
  %i.mi = load i64, ptr %i.bo, align 8, !tbaa !63, !noalias !860
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit225.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i
  %.pn107.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155.i ], [ %.pn107.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i ], [ %.pn107.pn.pn.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit225.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !860
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, %bb.s
  %.pn107.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.dy, %bb.s ], [ %.pn107.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !860
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %25) #32
  br label %.body

bb.by:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !860
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.mk = load i8, ptr %i.aj, align 8, !tbaa !224, !range !166, !noundef !167
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %25) #32
  %i.mm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %6) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #32
  br label %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit

bb.ca:                                            ; preds = %bb.by
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(32) %25) #32
  store i8 1, ptr %i.aj, align 8, !tbaa !224
  br label %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit

_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit: ; preds = %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.cc

bb.cb:                                            ; preds = %bb.b
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bx, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.mn, %bb.cb ], [ %.pn107.pn.pn.pn.pn.pn.pn.i, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.js

bb.cc:                                            ; preds = %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit, %bb.a
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.mp = invoke noundef zeroext i1 @_ZNK11common_json8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mo)
          to label %bb.cd unwind label %bb.cw

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.mp, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.mq = invoke noundef zeroext i1 @_ZNK11common_json5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mo)
          to label %bb.cf unwind label %bb.cw

bb.cf:                                            ; preds = %bb.ce
  %i.mr = xor i1 %i.mq, true
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.ms = phi i1 [ false, %bb.cd ], [ %i.mr, %bb.cf ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.mu = invoke noundef zeroext i1 @_ZNK11common_json7is_nullEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mt)
          to label %bb.ch unwind label %bb.cx

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.mu, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mv = invoke noundef zeroext i1 @_ZNK11common_json9is_objectEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mt)
          to label %bb.cj unwind label %bb.cx

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.mw = phi i1 [ false, %bb.ch ], [ %i.mv, %bb.ci ] ; 4 uses
  %i.mx = zext i1 %i.mw to i8
  store i8 %i.mx, ptr %i.i, align 1, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !254
  %i.na = icmp ne i32 %i.mz, 0
  %i.nb = zext i1 %i.na to i8
  store i8 %i.nb, ptr %i.j, align 1, !tbaa !225
  %.not = xor i1 %i.ms, true
  %brmerge = or i1 %i.mw, %.not
  br i1 %brmerge, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !263
  %i.ne = icmp ne i32 %i.nd, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %71 = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  store i8 0, ptr %71, align 8, !tbaa !224
  br label %._crit_edge.i.i162

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  %i.nf = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 6 uses
  store i8 0, ptr %i.nf, align 8, !tbaa !224
  %i.ng = load i8, ptr %i.h, align 1, !tbaa !225, !range !166, !noundef !167
  %i.nh = trunc nuw i8 %i.ng to i1
  %or.cond = and i1 %i.mw, %i.nh
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, label %._crit_edge.i.i162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  %i.ni = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ni, ptr noundef nonnull align 1 dereferenceable(15) @.str.353, i64 15, i1 false)
  %i.nj = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %29, i64 31
  store i8 0, ptr %i.nk, align 1, !tbaa !63
  %i.nl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.nl, ptr %28, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nl, ptr noundef nonnull align 8 dereferenceable(16) %i.ni, i64 16, i1 false)
  %i.nm = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 15, ptr %i.nm, align 8, !tbaa !57
  store ptr %i.ni, ptr %29, align 8, !tbaa !61
  store i64 0, ptr %i.nj, align 8, !tbaa !57
  store i8 0, ptr %i.ni, align 8, !tbaa !63
  %i.nn = getelementptr inbounds nuw i8, ptr %28, i64 32
  invoke void @_ZN17common_json_valueC1ERK11common_json(ptr noundef nonnull align 8 dereferenceable(64) %i.nn, ptr noundef nonnull align 8 dereferenceable(32) %i.mt)
          to label %_ZN16common_json_itemC2IRK11common_jsonEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit unwind label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.no = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.np = load ptr, ptr %28, align 8, !tbaa !61   ; 2 uses
  %i.nq = icmp eq ptr %i.np, %i.nl
  br i1 %i.nq, label %.body150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %bb.cm
  %i.nr = load i64, ptr %i.nl, align 8, !tbaa !63
  %i.ns = add i64 %i.nr, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.ns) #34
  br label %.body150

_ZN16common_json_itemC2IRK11common_jsonEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZN11common_jsonC1ESt16initializer_listI16common_json_itemE(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr nonnull %28, i64 1)
          to label %bb.cn unwind label %.body150.loopexit

bb.cn:                                            ; preds = %_ZN16common_json_itemC2IRK11common_jsonEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.nt = load i8, ptr %i.nf, align 8, !tbaa !224, !range !166, !noundef !167
  %i.nu = trunc nuw i8 %i.nt to i1
  br i1 %i.nu, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %27) #32
  %i.nv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonaSES_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5) #32 ; 0 uses
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #32
  br label %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit152

bb.cp:                                            ; preds = %bb.cn
  call void @_ZN11common_jsonC1EOS_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(32) %27) #32
  store i8 1, ptr %i.nf, align 8, !tbaa !224
  br label %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit152

_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit152: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #32
  %i.nw = getelementptr inbounds nuw i8, ptr %28, i64 88
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !82 ; 8 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i153, label %_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit152
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 4 uses
  %i.nz = load atomic i64, ptr %i.ny acquire, align 8 ; 2 uses
  %i.oa = icmp eq i64 %i.nz, 4294967297
  %i.ob = trunc i64 %i.nz to i32                  ; 2 uses
  br i1 %i.oa, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.ny, align 8, !tbaa !84
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nx, i64 12
  store i32 0, ptr %i.oc, align 4, !tbaa !85
  %i.od = load ptr, ptr %i.nx, align 8, !tbaa !87
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #32, !inline_history !0
  %i.og = load ptr, ptr %i.nx, align 8, !tbaa !87
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #32, !inline_history !0
  br label %_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.oj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i.i.i154 = icmp eq i8 %i.oj, 0
  br i1 %.not.i.i.i.i.i154, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ok = add nsw i32 %i.ob, -1
  store i32 %i.ok, ptr %i.ny, align 8, !tbaa !88
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.ol = atomicrmw volatile add ptr %i.ny, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i = phi i32 [ %i.ob, %bb.ct ], [ %i.ol, %bb.cu ]
  %i.om = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.om, label %bb.cv, label %_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !89

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nx) #32
  br label %_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.cv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cr, %_ZNSt8optionalI11common_jsonEaSIS0_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES4_ISt6__and_IJSt9is_scalarIS0_ES5_IS0_NSt5decayIS8_E4typeEEEEESt16is_constructibleIS0_JS8_EESt13is_assignableIRS0_S8_EEERS1_E4typeEOS8_.exit152
  %i.on = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !61 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZN17common_json_valueD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.or = load i64, ptr %i.op, align 8, !tbaa !63
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #34
  br label %_ZN17common_json_valueD2Ev.exit.i

_ZN17common_json_valueD2Ev.exit.i:                ; preds = %_ZNSt12__shared_ptrI11common_jsonLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ot = load ptr, ptr %28, align 8, !tbaa !61   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZN16common_json_itemD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155: ; preds = %_ZN17common_json_valueD2Ev.exit.i
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !63
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #34
  br label %_ZN16common_json_itemD2Ev.exit

_ZN16common_json_itemD2Ev.exit:                   ; preds = %_ZN17common_json_valueD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155
  %i.oy = load ptr, ptr %29, align 8, !tbaa !61   ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.ni
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZN16common_json_itemD2Ev.exit
  %i.pa = load i64, ptr %i.ni, align 8, !tbaa !63
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN16common_json_itemD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %._crit_edge.i.i162

bb.cw:                                            ; preds = %bb.ce, %bb.cc
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.cx:                                            ; preds = %bb.ci, %bb.cg
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

.body150.loopexit:                                ; preds = %_ZN16common_json_itemC2IRK11common_jsonEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_.exit
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16common_json_itemD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %28) #32
  br label %.body150

.body150:                                         ; preds = %bb.cm, %.body150.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  %.pn = phi { ptr, i32 } [ %i.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147 ], [ %i.pe, %.body150.loopexit ], [ %i.no, %bb.cm ]
  %i.pf = load ptr, ptr %29, align 8, !tbaa !61   ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.ni
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %.body150
  %i.ph = load i64, ptr %i.ni, align 8, !tbaa !63
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %.body150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br label %bb.jp

._crit_edge.i.i162:                               ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cl
  %72 = phi ptr [ %71, %bb.ck ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.nf, %bb.cl ] ; 3 uses
  %73 = phi i1 [ %i.ne, %bb.ck ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.mw, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.pj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 7 uses
  store ptr %i.pj, ptr %30, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.pj, ptr noundef nonnull align 1 dereferenceable(10) @.str.354, i64 10, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 7 uses
  store i64 10, ptr %i.pk, align 8, !tbaa !57
  %i.pl = getelementptr inbounds nuw i8, ptr %30, i64 26
  store i8 0, ptr %i.pl, align 2, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.pm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  store ptr %i.pm, ptr %31, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.pm, ptr noundef nonnull align 1 dereferenceable(7) @.str.275, i64 7, i1 false)
  %i.pn = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  store i64 7, ptr %i.pn, align 8, !tbaa !57
  %i.po = getelementptr inbounds nuw i8, ptr %31, i64 23
  store i8 0, ptr %i.po, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  %i.pp = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.pp, ptr %32, align 8, !tbaa !60
  store i64 4497810051862638396, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 5 uses
  store i64 8, ptr %i.pq, align 8, !tbaa !57
  %i.pr = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i8 0, ptr %i.pr, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  %74 = load i8, ptr %i.h, align 1, !tbaa !225, !range !166, !noundef !167
  %75 = trunc nuw i8 %74 to i1                    ; 3 uses
  %i.ps = select i1 %75, ptr @.str.16, ptr @.str.131
  %i.pt = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.pt, ptr %33, align 8, !tbaa !60
  %i.pu = select i1 %75, i64 10, i64 14           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.pt, ptr noundef nonnull align 1 dereferenceable(10) %i.ps, i64 %i.pu, i1 false)
  %i.pv = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  store i64 %i.pu, ptr %i.pv, align 8, !tbaa !57
  %.sroa.sel.v.sroa.sel.v = select i1 %75, i64 26, i64 30
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %33, i64 %.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel, align 2, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  %i.pw = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.pw, ptr %36, align 8, !tbaa !60, !alias.scope !862
  %i.px = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  store i64 0, ptr %i.px, align 8, !tbaa !57, !alias.scope !862
  store i8 0, ptr %i.pw, align 8, !tbaa !63, !alias.scope !862
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %36, i64 noundef 11)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i162
  %i.py = load i64, ptr %i.px, align 8, !tbaa !57, !alias.scope !862
  %i.pz = icmp eq i64 %i.py, 4611686018427387903
  br i1 %i.pz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.cy
  %i.qa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.352, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.cz ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.qb = load i64, ptr %i.px, align 8, !tbaa !57, !alias.scope !862
  %i.qc = add i64 %i.qb, -4611686018427387894
  %i.qd = icmp ult i64 %i.qc, 10
  br i1 %i.qd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.cy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #33
          to label %.cont.i.i unwind label %bb.cz

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.qe = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull %i.pj, i64 noundef 10)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.cz ; 0 uses

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge.i.i162
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = load ptr, ptr %36, align 8, !tbaa !61, !alias.scope !862 ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.pw
  br i1 %i.qh, label %.body181, label %.body181.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.qi = load i64, ptr %i.pv, align 8, !tbaa !57, !noalias !863 ; 2 uses
  %i.qj = load i64, ptr %i.px, align 8, !tbaa !57, !noalias !863
  %i.qk = sub i64 4611686018427387903, %i.qj
  %i.ql = icmp ult i64 %i.qk, %i.qi
  br i1 %i.ql, label %bb.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.da:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #33
          to label %.noexc186 unwind label %bb.gc

.noexc186:                                        ; preds = %bb.da
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.qm = load ptr, ptr %33, align 8, !tbaa !61, !noalias !863
  %i.qn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef %i.qm, i64 noundef %i.qi)
          to label %.noexc187 unwind label %bb.gc ; 6 uses

.noexc187:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.qo = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  store ptr %i.qo, ptr %35, align 8, !tbaa !60, !alias.scope !863
  %i.qp = load ptr, ptr %i.qn, align 8, !tbaa !61 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 16 ; 5 uses
  %i.qr = icmp eq ptr %i.qp, %i.qq
  br i1 %i.qr, label %bb.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

bb.db:                                            ; preds = %.noexc187
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !57 ; 3 uses
  %i.qu = icmp ult i64 %i.qt, 16
  call void @llvm.assume(i1 %i.qu)
  %i.qv = add nuw nsw i64 %i.qt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qo, ptr noundef nonnull align 8 dereferenceable(1) %i.qq, i64 %i.qv, i1 false)
  br label %bb.dc

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %.noexc187
  store ptr %i.qp, ptr %35, align 8, !tbaa !61, !alias.scope !863
  %i.qw = load i64, ptr %i.qq, align 8, !tbaa !63
  store i64 %i.qw, ptr %i.qo, align 8, !tbaa !63, !alias.scope !863
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %.pre.i184 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !57
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183, %bb.db
  %i.qx = phi i64 [ %i.qt, %bb.db ], [ %.pre.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qz = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  store i64 %i.qx, ptr %i.qz, align 8, !tbaa !57, !alias.scope !863
  store ptr %i.qq, ptr %i.qn, align 8, !tbaa !61
  store i64 0, ptr %i.qy, align 8, !tbaa !57
  store i8 0, ptr %i.qq, align 8, !tbaa !63
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !57, !noalias !864
  %i.rb = icmp eq i64 %i.ra, 4611686018427387903
  br i1 %i.rb, label %bb.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.336) #33
          to label %.noexc192 unwind label %bb.gd

.noexc192:                                        ; preds = %bb.dd
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.dc
  %i.rc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.351, i64 noundef 1)
          to label %.noexc193 unwind label %bb.gd ; 6 uses

.noexc193:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.rd = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 7 uses
  store ptr %i.rd, ptr %34, align 8, !tbaa !60, !alias.scope !864
  %i.re = load ptr, ptr %i.rc, align 8, !tbaa !61 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 16 ; 5 uses
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

bb.de:                                            ; preds = %.noexc193
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !57 ; 3 uses
  %i.rj = icmp ult i64 %i.ri, 16
  call void @llvm.assume(i1 %i.rj)
  %i.rk = add nuw nsw i64 %i.ri, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.rd, ptr noundef nonnull align 8 dereferenceable(1) %i.rf, i64 %i.rk, i1 false)
  br label %bb.df

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %.noexc193
  store ptr %i.re, ptr %34, align 8, !tbaa !61, !alias.scope !864
  %i.rl = load i64, ptr %i.rf, align 8, !tbaa !63
  store i64 %i.rl, ptr %i.rd, align 8, !tbaa !63, !alias.scope !864
  %.phi.trans.insert.i189 = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %.pre.i190 = load i64, ptr %.phi.trans.insert.i189, align 8, !tbaa !57
  br label %bb.df

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %bb.de
  %i.rm = phi i64 [ %i.ri, %bb.de ], [ %.pre.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.ro = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  store i64 %i.rm, ptr %i.ro, align 8, !tbaa !57, !alias.scope !864
  store ptr %i.rf, ptr %i.rc, align 8, !tbaa !61
  store i64 0, ptr %i.rn, align 8, !tbaa !57
  store i8 0, ptr %i.rf, align 8, !tbaa !63
  %i.rp = load ptr, ptr %35, align 8, !tbaa !61   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.qo
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.df
  %i.rr = load i64, ptr %i.qo, align 8, !tbaa !63
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  %i.rt = load ptr, ptr %36, align 8, !tbaa !61   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.pw
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.rv = load i64, ptr %i.pw, align 8, !tbaa !63
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.rx = load ptr, ptr %30, align 8, !tbaa !61, !noalias !865
  %i.ry = load i64, ptr %i.pk, align 8, !tbaa !57, !noalias !865 ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 7 uses
  store ptr %i.rz, ptr %39, align 8, !tbaa !60, !alias.scope !866
  %i.sa = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  store i64 0, ptr %i.sa, align 8, !tbaa !57, !alias.scope !866
  store i8 0, ptr %i.rz, align 8, !tbaa !63, !alias.scope !866
  %i.sb = add i64 %i.ry, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef %i.sb)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !57, !alias.scope !866
  %i.sd = and i64 %i.sc, -2
  %i.se = icmp eq i64 %i.sd, 4611686018427387902
  br i1 %i.se, label %.invoke.i.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203: ; preds = %bb.dg
  %i.sf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.350, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i204 unwind label %bb.dh ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i204: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i203
  %i.sg = load i64, ptr %i.sa, align 8, !tbaa !57, !alias.scope !866
  %i.sh = sub i64 4611686018427387903, %i.sg
end_hunk_1
begin_hunk_2_@_ZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsE:bb.a
  store i64 0, ptr %i.asf, align 8
  %i.asg = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #35
          to label %bb.ht unwind label %bb.iy     ; 17 uses

bb.ht:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit527
  store ptr %48, ptr %i.asg, align 16, !tbaa !202
  %.sroa.5654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  store ptr %i.l, ptr %.sroa.5654.0..sroa_idx, align 8, !tbaa !256
  %.sroa.6655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  store ptr %2, ptr %.sroa.6655.0..sroa_idx, align 16, !tbaa !258
  %.sroa.7656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 24
  store ptr %44, ptr %.sroa.7656.0..sroa_idx, align 8, !tbaa !202
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 32
  store ptr %46, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !202
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 40
  store ptr %40, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !202
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 48
  store ptr %42, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !202
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 56
  store ptr %34, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !202
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 64
  store ptr %37, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !202
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 72
  store ptr %i.k, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !256
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 80
  store ptr %i.j, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !256
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 88
  store ptr %31, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !202
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 96
  store ptr %32, ptr %.sroa.16.0..sroa_idx, align 16, !tbaa !202
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 104
  store ptr %49, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !202
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 112
  store ptr %i.h, ptr %.sroa.18.0..sroa_idx, align 16, !tbaa !256
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asg, i64 120
  store ptr %i.i, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !256
  store ptr %i.asg, ptr %65, align 8, !tbaa !242
  store ptr @"_ZNSt17_Function_handlerIF17common_peg_parserR23common_chat_peg_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_0E9_M_invokeERKSt9_Any_dataS2_", ptr %i.ase, align 8, !tbaa !261
  store ptr @"_ZNSt17_Function_handlerIF17common_peg_parserR23common_chat_peg_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.asd, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !887
  invoke void @_ZN25common_peg_parser_builderC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %.noexc530 unwind label %bb.iz

.noexc530:                                        ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !887
  %i.ash = load ptr, ptr %i.asd, align 8, !tbaa !262, !noalias !888
  %.not.i.i.i = icmp eq ptr %i.ash, null
  br i1 %.not.i.i.i, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %.noexc530
  invoke void @_ZSt25__throw_bad_function_callv() #33
          to label %.noexc.i529 unwind label %bb.hx, !noalias !887

.noexc.i529:                                      ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %.noexc530
  %i.asi = load ptr, ptr %i.ase, align 8, !tbaa !261, !noalias !888
  invoke void %i.asi(ptr dead_on_unwind nonnull writable sret(%class.common_peg_parser) align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i unwind label %bb.hx, !noalias !887, !inline_history !13

_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i: ; preds = %bb.hv
  invoke void @_ZN25common_peg_parser_builder8set_rootERK17common_peg_parser(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.hw unwind label %bb.hx, !noalias !887

bb.hw:                                            ; preds = %_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !887
  invoke void @_ZN25common_peg_parser_builder5buildEv(ptr dead_on_unwind nonnull writable sret(%class.common_peg_arena) align 8 %64, ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.ia unwind label %bb.hy

bb.hx:                                            ; preds = %_ZNKSt8functionIF17common_peg_parserR23common_chat_peg_builderEEclES2_.exit.i, %bb.hv, %bb.hu
  %i.asj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !887
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw
  %i.ask = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %.pn.i = phi { ptr, i32 } [ %i.ask, %bb.hy ], [ %i.asj, %bb.hx ]
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !887
  br label %.body531

bb.ia:                                            ; preds = %bb.hw
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !887
  %i.asl = load ptr, ptr %i.asd, align 8, !tbaa !262 ; 2 uses
  %.not.i533 = icmp eq ptr %i.asl, null
  br i1 %.not.i533, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.asm = invoke noundef zeroext i1 %i.asl(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull align 8 dereferenceable(32) %65, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ic ; 0 uses

bb.ic:                                            ; preds = %bb.ib
  %i.asn = landingpad { ptr, i32 }
          catch ptr null
  %i.aso = extractvalue { ptr, i32 } %i.asn, 0
  call void @__clang_call_terminate(ptr %i.aso) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ia, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #32
  invoke void @_ZNK16common_peg_arena4saveB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %66, ptr noundef nonnull align 8 dereferenceable(88) %64)
          to label %bb.id unwind label %bb.jc

bb.id:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.asp = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 6 uses
  %i.asq = icmp eq ptr %i.asp, %i.ac
  %i.asr = load ptr, ptr %66, align 8, !tbaa !61  ; 6 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 4 uses
  %i.ast = icmp eq ptr %i.asr, %i.ass             ; 2 uses
  br i1 %i.asq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540: ; preds = %bb.id
  br i1 %i.ast, label %bb.ie, label %.thread.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534: ; preds = %bb.id
  br i1 %i.ast, label %bb.ie, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535

bb.ie:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540
  %i.asu = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !57 ; 3 uses
  %i.asw = icmp ult i64 %i.asv, 16
  call void @llvm.assume(i1 %i.asw)
  %.not21.i537 = icmp eq ptr %66, %i.ab
  br i1 %.not21.i537, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542, label %bb.if, !prof !89

bb.if:                                            ; preds = %bb.ie
  switch i64 %i.asv, label %bb.ih [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538
    i64 1, label %bb.ig
  ]

bb.ig:                                            ; preds = %bb.if
  %i.asx = load i8, ptr %i.asr, align 1, !tbaa !63
  store i8 %i.asx, ptr %i.asp, align 1, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538

bb.ih:                                            ; preds = %bb.if
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.asp, ptr align 1 %i.asr, i64 %i.asv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538: ; preds = %bb.ih, %bb.ig, %bb.if
  %i.asy = load i64, ptr %i.asu, align 8, !tbaa !57 ; 2 uses
  store i64 %i.asy, ptr %i.ad, align 8, !tbaa !57
  %i.asz = load ptr, ptr %i.ab, align 8, !tbaa !61
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 %i.asy
  store i8 0, ptr %i.ata, align 1, !tbaa !63
  %.pre.i539 = load ptr, ptr %66, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542

.thread.i541:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i540
  store ptr %i.asr, ptr %i.ab, align 8, !tbaa !61
  %i.atb = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.atc = load <2 x i64>, ptr %i.atb, align 8, !tbaa !63
  store <2 x i64> %i.atc, ptr %i.ad, align 8, !tbaa !63
  br label %bb.ij

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i534
  %i.atd = load i64, ptr %i.ac, align 8, !tbaa !63
  store ptr %i.asr, ptr %i.ab, align 8, !tbaa !61
  %i.ate = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.atf = load <2 x i64>, ptr %i.ate, align 8, !tbaa !63
  store <2 x i64> %i.atf, ptr %i.ad, align 8, !tbaa !63
  %.not.i536 = icmp eq ptr %i.asp, null
  br i1 %.not.i536, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535
  store ptr %i.asp, ptr %66, align 8, !tbaa !61
  store i64 %i.atd, ptr %i.ass, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542

bb.ij:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i535, %.thread.i541
  store ptr %i.ass, ptr %66, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542: ; preds = %bb.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538, %bb.ii, %bb.ij
  %i.atg = phi ptr [ %.pre.i539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i538 ], [ %i.asp, %bb.ii ], [ %i.ass, %bb.ij ], [ %i.asr, %bb.ie ]
  %i.ath = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 0, ptr %i.ath, align 8, !tbaa !57
  store i8 0, ptr %i.atg, align 1, !tbaa !63
  %i.ati = load ptr, ptr %66, align 8, !tbaa !61  ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.atk = icmp eq ptr %i.ati, %i.atj
  br i1 %i.atk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542
  %i.atl = load i64, ptr %i.atj, align 8, !tbaa !63
  %i.atm = add i64 %i.atl, 1
  call void @_ZdlPvm(ptr noundef %i.ati, i64 noundef %i.atm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i543
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #32
  br i1 %73, label %bb.ik, label %bb.jj

bb.ik:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545
  %i.atn = load i8, ptr %i.k, align 1, !range !166
  %i.ato = xor i8 %i.atn, 1
  %i.atp = select i1 %i.ms, i8 %i.ato, i8 0
  store i8 %i.atp, ptr %i.s, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #32
  %i.atq = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 3 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 0, ptr %i.atr, align 8
  %i.ats = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35
          to label %bb.il unwind label %bb.jd     ; 5 uses

bb.il:                                            ; preds = %bb.ik
  %i.att = getelementptr inbounds nuw i8, ptr %68, i64 24
  store ptr %2, ptr %i.ats, align 16, !tbaa !258
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !256
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  store ptr %64, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !265
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ats, i64 24
  store ptr %0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !267
  store ptr %i.ats, ptr %68, align 8, !tbaa !242
  store ptr @"_ZNSt17_Function_handlerIFvRK22common_grammar_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_1E9_M_invokeERKSt9_Any_dataS2_", ptr %i.att, align 8, !tbaa !269
  store ptr @"_ZNSt17_Function_handlerIFvRK22common_grammar_builderEZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsEE3$_1E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.atq, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #32
  store i8 0, ptr %69, align 1, !tbaa !271
  invoke void @_Z13build_grammarB5cxx11RKSt8functionIFvRK22common_grammar_builderEERK22common_grammar_options(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %67, ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 1 dereferenceable(1) %69)
          to label %bb.im unwind label %bb.je

bb.im:                                            ; preds = %bb.il
  %i.atu = load ptr, ptr %i.p, align 8, !tbaa !61 ; 6 uses
  %i.atv = icmp eq ptr %i.atu, %i.q
  %i.atw = load ptr, ptr %67, align 8, !tbaa !61  ; 6 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 4 uses
  %i.aty = icmp eq ptr %i.atw, %i.atx             ; 2 uses
  br i1 %i.atv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553: ; preds = %bb.im
  br i1 %i.aty, label %bb.in, label %.thread.i554

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547: ; preds = %bb.im
  br i1 %i.aty, label %bb.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548

bb.in:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553
  %i.atz = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !57 ; 3 uses
  %i.aub = icmp ult i64 %i.aua, 16
  call void @llvm.assume(i1 %i.aub)
  %.not21.i550 = icmp eq ptr %67, %i.p
  br i1 %.not21.i550, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555, label %bb.io, !prof !89

bb.io:                                            ; preds = %bb.in
  switch i64 %i.aua, label %bb.iq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551
    i64 1, label %bb.ip
  ]

bb.ip:                                            ; preds = %bb.io
  %i.auc = load i8, ptr %i.atw, align 1, !tbaa !63
  store i8 %i.auc, ptr %i.atu, align 1, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551

bb.iq:                                            ; preds = %bb.io
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atu, ptr align 1 %i.atw, i64 %i.aua, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551: ; preds = %bb.iq, %bb.ip, %bb.io
  %i.aud = load i64, ptr %i.atz, align 8, !tbaa !57 ; 2 uses
  store i64 %i.aud, ptr %i.r, align 8, !tbaa !57
  %i.aue = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aud
  store i8 0, ptr %i.auf, align 1, !tbaa !63
  %.pre.i552 = load ptr, ptr %67, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555

.thread.i554:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i553
  store ptr %i.atw, ptr %i.p, align 8, !tbaa !61
  %i.aug = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.auh = load <2 x i64>, ptr %i.aug, align 8, !tbaa !63
  store <2 x i64> %i.auh, ptr %i.r, align 8, !tbaa !63
  br label %bb.is

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i547
  %i.aui = load i64, ptr %i.q, align 8, !tbaa !63
  store ptr %i.atw, ptr %i.p, align 8, !tbaa !61
  %i.auj = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.auk = load <2 x i64>, ptr %i.auj, align 8, !tbaa !63
  store <2 x i64> %i.auk, ptr %i.r, align 8, !tbaa !63
  %.not.i549 = icmp eq ptr %i.atu, null
  br i1 %.not.i549, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548
  store ptr %i.atu, ptr %67, align 8, !tbaa !61
  store i64 %i.aui, ptr %i.atx, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555

bb.is:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i548, %.thread.i554
  store ptr %i.atx, ptr %67, align 8, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555: ; preds = %bb.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551, %bb.ir, %bb.is
  %i.aul = phi ptr [ %.pre.i552, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i551 ], [ %i.atu, %bb.ir ], [ %i.atx, %bb.is ], [ %i.atw, %bb.in ]
  %i.aum = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 0, ptr %i.aum, align 8, !tbaa !57
  store i8 0, ptr %i.aul, align 1, !tbaa !63
  %i.aun = load ptr, ptr %67, align 8, !tbaa !61  ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 2 uses
  %i.aup = icmp eq ptr %i.aun, %i.auo
  br i1 %i.aup, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555
  %i.auq = load i64, ptr %i.auo, align 8, !tbaa !63
  %i.aur = add i64 %i.auq, 1
  call void @_ZdlPvm(ptr noundef %i.aun, i64 noundef %i.aur) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit555, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i556
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #32
  %i.aus = load ptr, ptr %i.atq, align 8, !tbaa !262 ; 2 uses
  %.not.i559 = icmp eq ptr %i.aus, null
  br i1 %.not.i559, label %_ZNSt14_Function_baseD2Ev.exit560, label %bb.it

bb.it:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558
  %i.aut = invoke noundef zeroext i1 %i.aus(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(32) %68, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit560 unwind label %bb.iu ; 0 uses

bb.iu:                                            ; preds = %bb.it
  %i.auu = landingpad { ptr, i32 }
          catch ptr null
  %i.auv = extractvalue { ptr, i32 } %i.auu, 0
  call void @__clang_call_terminate(ptr %i.auv) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit560:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit558, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #32
  store i32 1, ptr %70, align 8, !tbaa !274
  %i.auw = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 3 uses
  store ptr %i.aux, ptr %i.auw, align 8, !tbaa !60
  %i.auy = load ptr, ptr %34, align 8, !tbaa !61  ; 2 uses
  %i.auz = load i64, ptr %i.ro, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.auz, ptr %i.a, align 8, !tbaa !62
  %i.ava = icmp ugt i64 %i.auz, 15
  br i1 %i.ava, label %.noexc.i562, label %._crit_edge.i.i561

.noexc.i562:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit560
  %i.avb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.auw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc563 unwind label %bb.jh ; 2 uses

.noexc563:                                        ; preds = %.noexc.i562
  store ptr %i.avb, ptr %i.auw, align 8, !tbaa !61
  %i.avc = load i64, ptr %i.a, align 8, !tbaa !62
  store i64 %i.avc, ptr %i.aux, align 8, !tbaa !63
  br label %._crit_edge.i.i561

._crit_edge.i.i561:                               ; preds = %.noexc563, %_ZNSt14_Function_baseD2Ev.exit560
  %i.avd = phi ptr [ %i.avb, %.noexc563 ], [ %i.aux, %_ZNSt14_Function_baseD2Ev.exit560 ] ; 2 uses
  switch i64 %i.auz, label %bb.iw [
    i64 1, label %bb.iv
    i64 0, label %bb.ix
  ]

bb.iv:                                            ; preds = %._crit_edge.i.i561
  %i.ave = load i8, ptr %i.auy, align 1, !tbaa !63
  store i8 %i.ave, ptr %i.avd, align 1, !tbaa !63
  br label %bb.ix

bb.iw:                                            ; preds = %._crit_edge.i.i561
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.avd, ptr align 1 %i.auy, i64 %i.auz, i1 false)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv, %._crit_edge.i.i561
  %i.avf = load i64, ptr %i.a, align 8, !tbaa !62 ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i64 %i.avf, ptr %i.avg, align 8, !tbaa !57
  %i.avh = load ptr, ptr %i.auw, align 8, !tbaa !61
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 %i.avf
  store i8 0, ptr %i.avi, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.avj = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i32 -1, ptr %i.avj, align 8, !tbaa !275
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.avl = getelementptr inbounds nuw i8, ptr %70, i64 48
  invoke void @_ZNSt6vectorI22common_grammar_triggerSaIS0_EE13_M_assign_auxIPKS0_EEvT_S6_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.avk, ptr noundef nonnull %70, ptr noundef nonnull %i.avl)
          to label %_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader unwind label %bb.ji

_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader: ; preds = %bb.ix
  %i.avm = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !61 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 2 uses
  %i.avp = icmp eq ptr %i.avn, %i.avo
  br i1 %i.avp, label %_ZN22common_grammar_triggerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i566: ; preds = %_ZNSt6vectorI22common_grammar_triggerSaIS0_EEaSESt16initializer_listIS0_E.exit.preheader
  %i.avq = load i64, ptr %i.avo, align 8, !tbaa !63
end_hunk_2
begin_hunk_3_@_ZL37common_chat_params_init_deepseek_v3_2RK20common_chat_templateRKN10autoparser17generation_paramsE:bb.a

bb.je:                                            ; preds = %bb.il
  %i.awa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #32
  %i.awb = load ptr, ptr %i.atq, align 8, !tbaa !262 ; 2 uses
  %.not.i571 = icmp eq ptr %i.awb, null
  br i1 %.not.i571, label %_ZNSt14_Function_baseD2Ev.exit572, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.awc = invoke noundef zeroext i1 %i.awb(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(32) %68, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit572 unwind label %bb.jg ; 0 uses

bb.jg:                                            ; preds = %bb.jf
  %i.awd = landingpad { ptr, i32 }
          catch ptr null
  %i.awe = extractvalue { ptr, i32 } %i.awd, 0
  call void @__clang_call_terminate(ptr %i.awe) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit572:                ; preds = %bb.jf, %bb.je, %bb.jd
  %.pn123 = phi { ptr, i32 } [ %i.avz, %bb.jd ], [ %i.awa, %bb.je ], [ %i.awa, %bb.jf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #32
  br label %bb.jm

bb.jh:                                            ; preds = %.noexc.i562
  %i.awf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ji:                                            ; preds = %bb.ix
  %i.awg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !61 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 2 uses
  %i.awk = icmp eq ptr %i.awi, %i.awj
  br i1 %i.awk, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i573: ; preds = %bb.ji
  %i.awl = load i64, ptr %i.awj, align 8, !tbaa !63
  %i.awm = add i64 %i.awl, 1
  call void @_ZdlPvm(ptr noundef %i.awi, i64 noundef %i.awm) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i573, %bb.jh
  %.pn125 = phi { ptr, i32 } [ %i.awf, %bb.jh ], [ %i.awg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i573 ], [ %i.awg, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #32
  br label %bb.jm

bb.jj:                                            ; preds = %_ZN22common_grammar_triggerD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %64) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  %i.awn = load ptr, ptr %49, align 8, !tbaa !61  ; 2 uses
  %i.awo = icmp eq ptr %i.awn, %i.zu
  br i1 %i.awo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577: ; preds = %bb.jj
  %i.awp = load i64, ptr %i.zu, align 8, !tbaa !63
  %i.awq = add i64 %i.awp, 1
  call void @_ZdlPvm(ptr noundef %i.awn, i64 noundef %i.awq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579: ; preds = %bb.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32
  %i.awr = load ptr, ptr %48, align 8, !tbaa !61  ; 2 uses
  %i.aws = icmp eq ptr %i.awr, %i.zo
  br i1 %i.aws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
  %i.awt = load i64, ptr %i.zo, align 8, !tbaa !63
  %i.awu = add i64 %i.awt, 1
  call void @_ZdlPvm(ptr noundef %i.awr, i64 noundef %i.awu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #32
  %i.awv = load ptr, ptr %46, align 8, !tbaa !61  ; 2 uses
  %i.aww = icmp eq ptr %i.awv, %i.yy
  br i1 %i.aww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582
  %i.awx = load i64, ptr %i.yy, align 8, !tbaa !63
  %i.awy = add i64 %i.awx, 1
  call void @_ZdlPvm(ptr noundef %i.awv, i64 noundef %i.awy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #32
  %i.awz = load ptr, ptr %44, align 8, !tbaa !61  ; 2 uses
  %i.axa = icmp eq ptr %i.awz, %i.xo
  br i1 %i.axa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
  %i.axb = load i64, ptr %i.xo, align 8, !tbaa !63
  %i.axc = add i64 %i.axb, 1
  call void @_ZdlPvm(ptr noundef %i.awz, i64 noundef %i.axc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  %i.axd = load ptr, ptr %42, align 8, !tbaa !61  ; 2 uses
  %i.axe = icmp eq ptr %i.axd, %i.wf
  br i1 %i.axe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
  %i.axf = load i64, ptr %i.wf, align 8, !tbaa !63
  %i.axg = add i64 %i.axf, 1
  call void @_ZdlPvm(ptr noundef %i.axd, i64 noundef %i.axg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #32
  %i.axh = load ptr, ptr %40, align 8, !tbaa !61  ; 2 uses
  %i.axi = icmp eq ptr %i.axh, %i.uv
  br i1 %i.axi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591
  %i.axj = load i64, ptr %i.uv, align 8, !tbaa !63
  %i.axk = add i64 %i.axj, 1
  call void @_ZdlPvm(ptr noundef %i.axh, i64 noundef %i.axk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #32
  %i.axl = load ptr, ptr %37, align 8, !tbaa !61  ; 2 uses
  %i.axm = icmp eq ptr %i.axl, %i.ti
  br i1 %i.axm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594
  %i.axn = load i64, ptr %i.ti, align 8, !tbaa !63
  %i.axo = add i64 %i.axn, 1
  call void @_ZdlPvm(ptr noundef %i.axl, i64 noundef %i.axo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.axp = load ptr, ptr %34, align 8, !tbaa !61  ; 2 uses
  %i.axq = icmp eq ptr %i.axp, %i.rd
  br i1 %i.axq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597
  %i.axr = load i64, ptr %i.rd, align 8, !tbaa !63
  %i.axs = add i64 %i.axr, 1
  call void @_ZdlPvm(ptr noundef %i.axp, i64 noundef %i.axs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.axt = load ptr, ptr %33, align 8, !tbaa !61  ; 2 uses
  %i.axu = icmp eq ptr %i.axt, %i.pt
  br i1 %i.axu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
  %i.axv = load i64, ptr %i.pt, align 8, !tbaa !63
  %i.axw = add i64 %i.axv, 1
  call void @_ZdlPvm(ptr noundef %i.axt, i64 noundef %i.axw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.axx = load ptr, ptr %32, align 8, !tbaa !61  ; 2 uses
  %i.axy = icmp eq ptr %i.axx, %i.pp
  br i1 %i.axy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
  %i.axz = load i64, ptr %i.pp, align 8, !tbaa !63
  %i.aya = add i64 %i.axz, 1
  call void @_ZdlPvm(ptr noundef %i.axx, i64 noundef %i.aya) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  %i.ayb = load ptr, ptr %31, align 8, !tbaa !61  ; 2 uses
  %i.ayc = icmp eq ptr %i.ayb, %i.pm
  br i1 %i.ayc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606
  %i.ayd = load i64, ptr %i.pm, align 8, !tbaa !63
  %i.aye = add i64 %i.ayd, 1
  call void @_ZdlPvm(ptr noundef %i.ayb, i64 noundef %i.aye) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  %i.ayf = load ptr, ptr %30, align 8, !tbaa !61  ; 2 uses
  %i.ayg = icmp eq ptr %i.ayf, %i.pj
  br i1 %i.ayg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609
  %i.ayh = load i64, ptr %i.pj, align 8, !tbaa !63
  %i.ayi = add i64 %i.ayh, 1
  call void @_ZdlPvm(ptr noundef %i.ayf, i64 noundef %i.ayi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %i.ayj = load i8, ptr %72, align 8, !tbaa !224, !range !166, !noundef !167
  %i.ayk = trunc nuw i8 %i.ayj to i1
  store i8 0, ptr %72, align 8, !tbaa !224
  br i1 %i.ayk, label %bb.jk, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit613

bb.jk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %26) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit613

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit613: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  %i.ayl = load i8, ptr %i.aj, align 8, !tbaa !224, !range !166, !noundef !167
  %i.aym = trunc nuw i8 %i.ayl to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !224
  br i1 %i.aym, label %bb.jl, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit614

bb.jl:                                            ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit613
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %24) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit614

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit614: ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit613, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  ret void

bb.jm:                                            ; preds = %.loopexit, %_ZNSt14_Function_baseD2Ev.exit572, %bb.jc
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %.loopexit ], [ %.pn123, %_ZNSt14_Function_baseD2Ev.exit572 ], [ %i.avy, %bb.jc ]
  call void @_ZN16common_peg_arenaD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %64) #32
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %_ZNSt14_Function_baseD2Ev.exit570
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %bb.jm ], [ %.pn121, %_ZNSt14_Function_baseD2Ev.exit570 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  br label %bb.jo

bb.jo:                                            ; preds = %.body385, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, %.body464, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523, %bb.hs, %bb.jn, %.loopexit673, %.loopexit675.a, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit437, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit436
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn, %bb.jn ], [ %i.akq, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit436 ], [ %.pn110, %.body464 ], [ %.pn108, %.loopexit673 ], [ %.pn106, %.loopexit675.a ], [ %i.akt, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit437 ], [ %i.arw, %bb.hs ], [ %.pn116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455 ], [ %i.ahj, %.body385 ], [ %.pn112.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523 ] ; 2 uses
  %i.ayn = load ptr, ptr %49, align 8, !tbaa !61  ; 2 uses
  %i.ayo = icmp eq ptr %i.ayn, %i.zu
  br i1 %i.ayo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %bb.jo
  %i.ayp = load i64, ptr %i.zu, align 8, !tbaa !63
  %i.ayq = add i64 %i.ayp, 1
  call void @_ZdlPvm(ptr noundef %i.ayn, i64 noundef %i.ayq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617: ; preds = %bb.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32
  %i.ayr = load ptr, ptr %48, align 8, !tbaa !61  ; 2 uses
  %i.ays = icmp eq ptr %i.ayr, %i.zo
  br i1 %i.ays, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617
  %i.ayt = load i64, ptr %i.zo, align 8, !tbaa !63
  %i.ayu = add i64 %i.ayt, 1
  call void @_ZdlPvm(ptr noundef %i.ayr, i64 noundef %i.ayu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618, %bb.gk
  %.pn125.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.akp, %bb.gk ], [ %.pn125.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618 ], [ %.pn125.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #32
  %i.ayv = load ptr, ptr %46, align 8, !tbaa !61  ; 2 uses
  %i.ayw = icmp eq ptr %i.ayv, %i.yy
  br i1 %i.ayw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620
  %i.ayx = load i64, ptr %i.yy, align 8, !tbaa !63
  %i.ayy = add i64 %i.ayx, 1
  call void @_ZdlPvm(ptr noundef %i.ayv, i64 noundef %i.ayy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621, %.body307
  %.pn125.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn104, %.body307 ], [ %.pn125.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i621 ], [ %.pn125.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #32
  %i.ayz = load ptr, ptr %44, align 8, !tbaa !61  ; 2 uses
  %i.aza = icmp eq ptr %i.ayz, %i.xo
  br i1 %i.aza, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623
  %i.azb = load i64, ptr %i.xo, align 8, !tbaa !63
  %i.azc = add i64 %i.azb, 1
  call void @_ZdlPvm(ptr noundef %i.ayz, i64 noundef %i.azc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624, %.body285
  %.pn125.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn102, %.body285 ], [ %.pn125.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i624 ], [ %.pn125.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  %i.azd = load ptr, ptr %42, align 8, !tbaa !61  ; 2 uses
  %i.aze = icmp eq ptr %i.azd, %i.wf
  br i1 %i.aze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626
  %i.azf = load i64, ptr %i.wf, align 8, !tbaa !63
  %i.azg = add i64 %i.azf, 1
  call void @_ZdlPvm(ptr noundef %i.azd, i64 noundef %i.azg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627, %.body263
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100, %.body263 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i627 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #32
  %i.azh = load ptr, ptr %40, align 8, !tbaa !61  ; 2 uses
  %i.azi = icmp eq ptr %i.azh, %i.uv
  br i1 %i.azi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629
  %i.azj = load i64, ptr %i.uv, align 8, !tbaa !63
  %i.azk = add i64 %i.azj, 1
  call void @_ZdlPvm(ptr noundef %i.azh, i64 noundef %i.azk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630, %.body241
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn98, %.body241 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i630 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #32
  %i.azl = load ptr, ptr %37, align 8, !tbaa !61  ; 2 uses
  %i.azm = icmp eq ptr %i.azl, %i.ti
  br i1 %i.azm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632
  %i.azn = load i64, ptr %i.ti, align 8, !tbaa !63
  %i.azo = add i64 %i.azn, 1
  call void @_ZdlPvm(ptr noundef %i.azl, i64 noundef %i.azo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633, %.body208
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn95.pn, %.body208 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i633 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit632 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.azp = load ptr, ptr %34, align 8, !tbaa !61  ; 2 uses
  %i.azq = icmp eq ptr %i.azp, %i.rd
  br i1 %i.azq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635
  %i.azr = load i64, ptr %i.rd, align 8, !tbaa !63
  %i.azs = add i64 %i.azr, 1
  call void @_ZdlPvm(ptr noundef %i.azp, i64 noundef %i.azs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636, %.body181
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %.body181 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i636 ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit635 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.azt = load ptr, ptr %33, align 8, !tbaa !61  ; 2 uses
  %i.azu = icmp eq ptr %i.azt, %i.pt
  br i1 %i.azu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638
  %i.azv = load i64, ptr %i.pt, align 8, !tbaa !63
  %i.azw = add i64 %i.azv, 1
  call void @_ZdlPvm(ptr noundef %i.azt, i64 noundef %i.azw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i639
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.azx = load ptr, ptr %32, align 8, !tbaa !61  ; 2 uses
  %i.azy = icmp eq ptr %i.azx, %i.pp
  br i1 %i.azy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641
  %i.azz = load i64, ptr %i.pp, align 8, !tbaa !63
  %i.baa = add i64 %i.azz, 1
  call void @_ZdlPvm(ptr noundef %i.azx, i64 noundef %i.baa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit641, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i642
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  %i.bab = load ptr, ptr %31, align 8, !tbaa !61  ; 2 uses
  %i.bac = icmp eq ptr %i.bab, %i.pm
  br i1 %i.bac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644
  %i.bad = load i64, ptr %i.pm, align 8, !tbaa !63
  %i.bae = add i64 %i.bad, 1
  call void @_ZdlPvm(ptr noundef %i.bab, i64 noundef %i.bae) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i645
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  %i.baf = load ptr, ptr %30, align 8, !tbaa !61  ; 2 uses
  %i.bag = icmp eq ptr %i.baf, %i.pj
  br i1 %i.bag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647
  %i.bah = load i64, ptr %i.pj, align 8, !tbaa !63
  %i.bai = add i64 %i.bah, 1
  call void @_ZdlPvm(ptr noundef %i.baf, i64 noundef %i.bai) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i648
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.jp

bb.jp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %76 = phi ptr [ %72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650 ], [ %i.nf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ] ; 2 uses
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit650 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ]
  %i.baj = load i8, ptr %76, align 8, !tbaa !224, !range !166, !noundef !167
  %i.bak = trunc nuw i8 %i.baj to i1
  store i8 0, ptr %76, align 8, !tbaa !224
  br i1 %i.bak, label %bb.jq, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit651

bb.jq:                                            ; preds = %bb.jp
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %26) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit651

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit651: ; preds = %bb.jp, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br label %bb.jr

bb.jr:                                            ; preds = %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit651, %bb.cx
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit651 ], [ %i.pd, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  br label %bb.js

bb.js:                                            ; preds = %bb.cw, %bb.jr, %.body
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.jr ], [ %i.pc, %bb.cw ]
  %i.bal = load i8, ptr %i.aj, align 8, !tbaa !224, !range !166, !noundef !167
  %i.bam = trunc nuw i8 %i.bal to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !224
  br i1 %i.bam, label %bb.jt, label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit652

bb.jt:                                            ; preds = %bb.js
  call void @_ZN11common_jsonD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(40) %24) #32
  br label %_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit652

_ZNSt14_Optional_baseI11common_jsonLb0ELb0EED2Ev.exit652: ; preds = %bb.js, %bb.jt
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @_ZN18common_chat_paramsD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %0) #32
  resume { ptr, i32 } %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN10workaroundL29convert_tool_responses_gemma4ER11common_json(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.common_json, align 8         ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %struct.common_json_value, align 8  ; 9 uses
  %8 = alloca %"struct.workaround::gemma4_model_turn_builder", align 8 ; 11 uses
  %9 = alloca %struct.common_json_value, align 8  ; 9 uses
  %10 = alloca %class.common_json, align 8        ; 7 uses
  %11 = alloca %class.common_json, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @_ZN11common_json5arrayEv(ptr dead_on_unwind nonnull writable sret(%class.common_json) align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 26
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.064 = phi i64 [ 0, %bb.a ], [ %.064.be, %.backedge ] ; 4 uses
  %i.z = invoke noundef i64 @_ZNK11common_json4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp ult i64 %.064, %i.z
  br i1 %i.aa, label %bb.d, label %bb.ay

bb.d:                                             ; preds = %bb.c
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_jsonixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.064)
          to label %._crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

._crit_edge.i.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.a, ptr %3, align 8, !tbaa !60
  store i32 1701605234, ptr %i.a, align 8
  store i64 4, ptr %i.b, align 8, !tbaa !57
  store i8 0, ptr %i.v, align 4, !tbaa !63
  invoke void @_ZNK11common_json5valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !57
  %i.ad = icmp eq i64 %i.ac, 9
  %.pre221 = load ptr, ptr %2, align 8, !tbaa !61 ; 4 uses
  br i1 %i.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge91

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ae = load i64, ptr %.pre221, align 1
  %i.af = xor i64 %i.ae, 7953766455952241505
  %i.ag = getelementptr i8, ptr %.pre221, i64 8
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = xor i64 %i.ai, 116
  %i.ak = or i64 %i.af, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread143, label %.critedge91

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread143: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr %i.d, ptr %4, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.16, i64 10, i1 false)
  store i64 10, ptr %i.e, align 8, !tbaa !57
  store i8 0, ptr %i.w, align 2, !tbaa !63
  %i.an = invoke noundef zeroext i1 @_ZNK11common_json8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread143
  br i1 %i.an, label %._crit_edge.i.i96, label %.critedge89

._crit_edge.i.i96:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %i.f, ptr %5, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.f, ptr noundef nonnull align 1 dereferenceable(10) @.str.16, i64 10, i1 false)
  store i64 10, ptr %i.g, align 8, !tbaa !57
  store i8 0, ptr %i.x, align 2, !tbaa !63
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_json2atERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %._crit_edge.i.i96
  %i.ap = invoke noundef zeroext i1 @_ZNK11common_json8is_arrayEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  br i1 %i.ap, label %._crit_edge.i.i100, label %.critedge85

._crit_edge.i.i100:                               ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.h, ptr %6, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.h, ptr noundef nonnull align 1 dereferenceable(10) @.str.16, i64 10, i1 false)
  store i64 10, ptr %i.i, align 8, !tbaa !57
  store i8 0, ptr %i.y, align 2, !tbaa !63
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11common_json2atERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.i unwind label %bb.v

bb.i:                                             ; preds = %._crit_edge.i.i100
  %i.ar = invoke noundef zeroext i1 @_ZNK11common_json5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %.critedge unwind label %bb.v

.critedge:                                        ; preds = %bb.i
  %i.as = load ptr, ptr %6, align 8, !tbaa !61    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.h
  br i1 %i.at, label %.critedge83.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.au = load i64, ptr %i.h, align 8, !tbaa !63
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #34
  br label %.critedge83.thread

.critedge83.thread:                               ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %.critedge85

.critedge85:                                      ; preds = %bb.h, %.critedge83.thread
  %i.aw = phi i1 [ %i.ar, %.critedge83.thread ], [ true, %bb.h ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.f
  br i1 %i.ay, label %.critedge87.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.critedge85
  %i.az = load i64, ptr %i.f, align 8, !tbaa !63
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #34
  br label %.critedge87.thread

.critedge87.thread:                               ; preds = %.critedge85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.critedge89

.critedge89:                                      ; preds = %bb.f, %.critedge87.thread
  %i.bb = phi i1 [ %i.aw, %.critedge87.thread ], [ true, %bb.f ]
  %i.bc = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.d
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %.critedge89
  %i.be = load i64, ptr %i.d, align 8, !tbaa !63
  %i.bf = add i64 %i.be, 1
end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/projinfo_lib?download=true
inline.NumInlined: 3852
inline.NumDeleted: 1141
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL5usageRN12_GLOBAL__N_18StreamerEb:bb.a

bb.bj:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.sa = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.rj
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  %i.sc = load i64, ptr %i.rj, align 8, !tbaa !64
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bs

bb.bk:                                            ; preds = %.invoke, %.noexc381, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i376, %.noexc379, %bb.be, %.noexc370, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i365, %.noexc368, %bb.bc, %.noexc359, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i354, %.noexc357, %bb.ba, %.noexc348, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i343, %.noexc346, %bb.ay, %.noexc337, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i332, %.noexc335, %bb.aw, %.noexc326, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i321, %.noexc324, %bb.au, %.noexc315, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i310, %.noexc313, %bb.as, %.noexc304, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i299, %.noexc302, %bb.aq, %.noexc293, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i288, %.noexc291, %bb.ao, %.noexc282, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277, %.noexc280, %bb.am, %.noexc271, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266, %.noexc269, %bb.ak, %.noexc260, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i255, %.noexc258, %bb.ai, %.noexc249, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244, %.noexc247, %bb.ag, %.noexc238, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i233, %.noexc236, %bb.ae, %.noexc227, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i222, %.noexc225, %bb.ac, %.noexc216, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i211, %.noexc214, %bb.aa, %.noexc205, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i200, %.noexc203, %bb.y, %.noexc194, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i189, %.noexc192, %bb.w, %.noexc183, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i178, %.noexc181, %bb.u, %.noexc172, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i167, %.noexc170, %bb.s, %.noexc161, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i156, %.noexc159, %bb.q, %.noexc150, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i145, %.noexc148, %bb.o, %.noexc139, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i134, %.noexc137, %bb.m, %.noexc128, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i123, %.noexc126, %bb.k, %.noexc117, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i112, %.noexc115, %bb.i, %.noexc106, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i101, %.noexc104, %bb.g, %.noexc95, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i90, %.noexc93, %bb.e, %.noexc85, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc83, %bb.c, %_ZNSolsEPFRSoS_E.exit61, %_ZNSolsEPFRSoS_E.exit58, %_ZNSolsEPFRSoS_E.exit56, %_ZNSolsEPFRSoS_E.exit53, %_ZNSolsEPFRSoS_E.exit51, %_ZNSolsEPFRSoS_E.exit48, %_ZNSolsEPFRSoS_E.exit46, %_ZNSolsEPFRSoS_E.exit44, %_ZNSolsEPFRSoS_E.exit42, %_ZNSolsEPFRSoS_E.exit40, %_ZNSolsEPFRSoS_E.exit38, %_ZNSolsEPFRSoS_E.exit36, %_ZNSolsEPFRSoS_E.exit34, %_ZNSolsEPFRSoS_E.exit32, %_ZNSolsEPFRSoS_E.exit30, %_ZNSolsEPFRSoS_E.exit28, %_ZNSolsEPFRSoS_E.exit26, %_ZNSolsEPFRSoS_E.exit24, %_ZNSolsEPFRSoS_E.exit22, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %_ZNSolsEPFRSoS_E.exit19, %_ZNSolsEPFRSoS_E.exit17, %_ZNSolsEPFRSoS_E.exit15, %_ZNSolsEPFRSoS_E.exit13, %_ZNSolsEPFRSoS_E.exit, %bb.a
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bl:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.sf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sg = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.rj
  br i1 %i.sh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bl, %bb.bh
  %.sink = phi ptr [ %i.rv, %bb.bh ], [ %i.sg, %bb.bl ]
  %.pn9.ph = phi { ptr, i32 } [ %i.ru, %bb.bh ], [ %i.sf, %bb.bl ]
  %i.si = load i64, ptr %i.rj, align 8, !tbaa !64
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.sj) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bl, %bb.bh
  %.pn9 = phi { ptr, i32 } [ %i.ru, %bb.bh ], [ %i.sf, %bb.bl ], [ %.pn9.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.bt

bb.bm:                                            ; preds = %_ZNSolsEPFRSoS_E.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.sk, ptr %4, align 8, !tbaa !66, !alias.scope !281
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.sl, align 8, !tbaa !67, !alias.scope !281
  store i8 0, ptr %i.sk, align 8, !tbaa !64, !alias.scope !281
  %i.sm = load ptr, ptr %i.rh, align 8, !tbaa !93, !noalias !281 ; 3 uses
  %.not.i.not.i.i67 = icmp eq ptr %i.sm, null
  %i.sn = load ptr, ptr %i.ri, align 8, !noalias !281 ; 2 uses
  %i.so = icmp ugt ptr %i.sm, %i.sn
  %.08.i.i.i68 = select i1 %i.so, ptr %i.sm, ptr %i.sn ; 2 uses
  %.not5.i.i69 = icmp eq ptr %.08.i.i.i68, null
  %.not.i.i70 = select i1 %.not.i.not.i.i67, i1 true, i1 %.not5.i.i69
  br i1 %.not.i.i70, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !94, !noalias !281 ; 2 uses
  %i.sr = ptrtoint ptr %.08.i.i.i68 to i64
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = sub i64 %i.sr, %i.ss
  %i.su = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.sq, i64 noundef %i.st)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit76 unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bp, %bb.bn
  %i.sv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sw = load ptr, ptr %4, align 8, !tbaa !63, !alias.scope !281 ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.sk
  br i1 %i.sx, label %.body74, label %.body74.sink.split

bb.bp:                                            ; preds = %bb.bm
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.sy)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit76 unwind label %bb.bo

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit76: ; preds = %bb.bp, %bb.bn
  %i.sz = invoke fastcc noundef nonnull align 8 dereferenceable(408) ptr @_ZN12_GLOBAL__N_18Streamer6StreamIL21PJ_PROJINFO_LOG_LEVEL1EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS3_RKT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bq unwind label %bb.br     ; 0 uses

bb.bq:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit76
  %i.ta = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.tb = icmp eq ptr %i.ta, %i.sk
  br i1 %i.tb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.bq
  %i.tc = load i64, ptr %i.sk, align 8, !tbaa !64
  %i.td = add i64 %i.tc, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.td) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bs

bb.br:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit76
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tf = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.sk
  br i1 %i.tg, label %.body74, label %.body74.sink.split

.body74.sink.split:                               ; preds = %bb.br, %bb.bo
  %.sink425 = phi ptr [ %i.sw, %bb.bo ], [ %i.tf, %bb.br ]
  %.pn.ph = phi { ptr, i32 } [ %i.sv, %bb.bo ], [ %i.te, %bb.br ]
  %i.th = load i64, ptr %i.sk, align 8, !tbaa !64
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %.sink425, i64 noundef %i.ti) #35
  br label %.body74

.body74:                                          ; preds = %.body74.sink.split, %bb.br, %bb.bo
  %.pn = phi { ptr, i32 } [ %i.sv, %bb.bo ], [ %i.te, %bb.br ], [ %.pn.ph, %.body74.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.bt

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.tj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.tj, ptr %2, align 8, !tbaa !56
  %i.tk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.tl = getelementptr i8, ptr %i.tj, i64 -24
  %i.tm = load i64, ptr %i.tl, align 8
  %i.tn = getelementptr inbounds i8, ptr %2, i64 %i.tm
  store ptr %i.tk, ptr %i.tn, align 8, !tbaa !56
  %i.to = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.to, ptr %i.a, align 8, !tbaa !56
  %i.tp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.tp, align 8, !tbaa !56
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !63 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.tt = icmp eq ptr %i.tr, %i.ts
  br i1 %i.tt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bs
  %i.tu = load i64, ptr %i.ts, align 8, !tbaa !64
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tv) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.tw = zext i1 %1 to i32
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.tp, align 8, !tbaa !56
  %i.tx = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.tx) #31
  %i.ty = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ty, ptr %2, align 8, !tbaa !56
  %i.tz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ua = getelementptr i8, ptr %i.ty, i64 -24
  %i.ub = load i64, ptr %i.ua, align 8
  %i.uc = getelementptr inbounds i8, ptr %2, i64 %i.ub
  store ptr %i.tz, ptr %i.uc, align 8, !tbaa !56
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ud, align 8, !tbaa !154
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ue) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i32 %i.tw

bb.bt:                                            ; preds = %.body74, %.body, %bb.bk
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %.body ], [ %.pn, %.body74 ], [ %i.se, %bb.bk ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %.pn9.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %"class.std::set.153", align 8      ; 7 uses
  %6 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::vector", align 8       ; 10 uses
  %9 = alloca %"class.std::set.153", align 8      ; 7 uses
  %10 = alloca %"class.dropbox::oxygen::nn", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::vector", align 8      ; 7 uses
  %13 = alloca %"class.std::set.153", align 8     ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.dropbox::oxygen::nn", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::vector", align 8      ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.dropbox::oxygen::nn.23", align 8 ; 7 uses
  %22 = alloca %"class.std::__cxx11::list", align 8 ; 9 uses
  %23 = alloca %"class.std::vector", align 8      ; 14 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.b = alloca [2 x ptr], align 8                ; 7 uses
  %29 = alloca %"class.dropbox::oxygen::nn.23", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::allocator", align 1   ; 4 uses
  %32 = alloca %"class.std::__cxx11::list", align 8 ; 11 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.dropbox::oxygen::nn.23", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.std::__cxx11::list.160", align 8 ; 8 uses
  %42 = alloca %"class.std::vector.165", align 8  ; 9 uses
  %i.c = alloca [3 x i32], align 4                ; 7 uses
  %43 = alloca %"class.std::allocator.167", align 1 ; 4 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.dropbox::oxygen::nn.23", align 8 ; 7 uses
  %46 = alloca %"class.std::__cxx11::list", align 8 ; 12 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %51 = alloca %"class.std::allocator", align 1   ; 7 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::allocator", align 1   ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !77     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %.not603650 = icmp eq ptr %i.d, %i.f
  br i1 %.not603650, label %._crit_edge.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0579.0651, i64 32 ; 2 uses
  %.not603 = icmp eq ptr %i.g, %i.f
  br i1 %.not603, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0579.0651 = phi ptr [ %i.g, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0579.0651, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.l, align 8, !tbaa !67
  store i8 0, ptr %i.k, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5osgeo4proj2io15DatabaseContext6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EEP6pj_ctx(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %1)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %._crit_edge.thread
  %i.m = load ptr, ptr %4, align 8, !tbaa !60     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i, align 8, !tbaa !63 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !64
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.v = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ab = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.k
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !64
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.af = load ptr, ptr %2, align 8, !tbaa !106
  invoke void @_ZNK5osgeo4proj2io15DatabaseContext14getAuthoritiesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::set.153") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !112 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not611702 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not611702, label %._crit_edge707, label %.lr.ph706.preheader._crit_edge

.lr.ph706.preheader._crit_edge:                   ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.pre760 = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef %.pre760) ; 0 uses
  %i.al = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.ah) #33 ; 2 uses
  %.not611.peel = icmp eq ptr %i.al, %i.ai
  br i1 %.not611.peel, label %._crit_edge707, label %.lr.ph706.peel.next

._crit_edge707:                                   ; preds = %.lr.ph706.peel.next, %.lr.ph706.preheader._crit_edge, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !111
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.an)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge707
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #32
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %._crit_edge707
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %putchar304 = call i32 @putchar(i32 10)         ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 8 uses
  %.not.i.i.i324 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i324, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.as, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !101
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !1
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31, !inline_history !1
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !64
  %.not.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.j ], [ %i.bf, %bb.k ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.l, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev.exit, !prof !103

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #31
end_hunk_0
begin_hunk_1_@_ZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctx:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.ny = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ny, ptr %24, align 8, !tbaa !66
  %i.nz = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.nz, align 8, !tbaa !67
  store i8 0, ptr %i.ny, align 8, !tbaa !64
  %.sroa.0562.0665 = load ptr, ptr %22, align 8, !tbaa !124 ; 2 uses
  %.not605666 = icmp eq ptr %.sroa.0562.0665, %22
  br i1 %.not605666, label %._crit_edge670, label %.lr.ph669

.lr.ph669:                                        ; preds = %bb.bw
  %i.oa = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  br label %bb.cc

._crit_edge670.loopexit:                          ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread
  %.pre724 = load ptr, ptr %i.ob, align 8, !tbaa !62
  %.pre725 = load ptr, ptr %23, align 8, !tbaa !60
  br label %._crit_edge670

._crit_edge670:                                   ; preds = %._crit_edge670.loopexit, %bb.bw
  %i.od = phi ptr [ %.pre725, %._crit_edge670.loopexit ], [ null, %bb.bw ] ; 2 uses
  %i.oe = phi ptr [ %.pre724, %._crit_edge670.loopexit ], [ null, %bb.bw ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.od to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = icmp eq i64 %i.oi, 32
  br i1 %i.oj, label %bb.cn, label %bb.co

bb.bx:                                            ; preds = %.loopexit614
  %i.ok = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.ol = load ptr, ptr %17, align 8, !tbaa !63   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ne
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.bx
  %i.on = load i64, ptr %i.ne, align 8, !tbaa !64
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.gb

bb.by:                                            ; preds = %bb.bq
  %i.op = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

bb.bz:                                            ; preds = %bb.bs
  %i.oq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

bb.ca:                                            ; preds = %bb.bu
  %i.or = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.cu

bb.cb:                                            ; preds = %bb.bv
  %i.os = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.ct

bb.cc:                                            ; preds = %.lr.ph669, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread
  %.sroa.0562.0667 = phi ptr [ %.sroa.0562.0665, %.lr.ph669 ], [ %.sroa.0562.0, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread ] ; 7 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0562.0667, i64 116
  %i.ou = load i8, ptr %i.ot, align 4, !tbaa !132, !range !90, !noundef !91
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ow = load i64, ptr %i.oa, align 8, !tbaa !67 ; 3 uses
  %i.ox = icmp eq i64 %i.ow, 0
  br i1 %i.ox, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0562.0667, i64 56
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !67
  %i.pa = icmp ult i64 %i.oz, %i.ow
  br i1 %i.pa, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390: ; preds = %bb.ce
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0562.0667, i64 48
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !63
  %i.pd = load ptr, ptr %20, align 8, !tbaa !63
  %bcmp.i388 = call i32 @bcmp(ptr %i.pc, ptr %i.pd, i64 %i.ow)
  %i.pe = icmp eq i32 %bcmp.i388, 0
  br i1 %i.pe, label %bb.cf, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread

bb.cf:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390, %bb.cd
  %i.pf = load ptr, ptr %23, align 8, !tbaa !77
  %i.pg = load ptr, ptr %i.ob, align 8, !tbaa !77
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %bb.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

bb.cg:                                            ; preds = %bb.cf
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0562.0667, i64 48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %i.pi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.0562.0667, i64 48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.pj)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.pk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.207)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0562.0667, i64 80
  %i.pm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pk, ptr noundef nonnull align 8 dereferenceable(32) %i.pl)
          to label %bb.cj unwind label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(32) %i.pm)
          to label %bb.ck unwind label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.pn = load ptr, ptr %25, align 8, !tbaa !63   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.oc
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %bb.ck
  %i.pp = load i64, ptr %i.oc, align 8, !tbaa !64
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.pr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

bb.cm:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.ps = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.pt = load ptr, ptr %25, align 8, !tbaa !63   ; 2 uses
  %i.pu = icmp eq ptr %i.pt, %i.oc
  br i1 %i.pu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %bb.cm
  %i.pv = load i64, ptr %i.oc, align 8, !tbaa !64
  %i.pw = add i64 %i.pv, 1
  call void @_ZdlPvm(ptr noundef %i.pt, i64 noundef %i.pw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394, %bb.cl
  %.pn276 = phi { ptr, i32 } [ %i.pr, %bb.cl ], [ %i.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394 ], [ %i.ps, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  br label %.loopexit.split-lp

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread: ; preds = %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390, %bb.cc
  %.sroa.0562.0 = load ptr, ptr %.sroa.0562.0667, align 8, !tbaa !124 ; 2 uses
  %.not605 = icmp eq ptr %.sroa.0562.0, %22
  br i1 %.not605, label %._crit_edge670.loopexit, label %bb.cc

bb.cn:                                            ; preds = %._crit_edge670
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %23) #31
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %._crit_edge726 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge726:                                   ; preds = %bb.cn
  %.pre727 = load ptr, ptr %23, align 8, !tbaa !77
  %.pre728 = load ptr, ptr %i.of, align 8, !tbaa !77
  br label %bb.co

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cg, %bb.cn
  %lpad.loopexit.split-lp945 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %.loopexit.split-lp

bb.co:                                            ; preds = %._crit_edge726, %._crit_edge670
  %i.px = phi ptr [ %.pre728, %._crit_edge726 ], [ %i.oe, %._crit_edge670 ] ; 3 uses
  %i.py = phi ptr [ %.pre727, %._crit_edge726 ], [ %i.od, %._crit_edge670 ] ; 3 uses
  %.not606671 = icmp eq ptr %i.py, %i.px
  br i1 %.not606671, label %._crit_edge676, label %.lr.ph675

.lr.ph675:                                        ; preds = %bb.co
  %i.pz = trunc nuw i8 %.3171 to i1
  %54 = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 10 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %27, i64 17 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 10 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %28, i64 18 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %26, i64 8
  br i1 %i.pz, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph675
  %putchar272.peel = call i32 @putchar(i32 32)    ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.lr.ph675
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  store ptr %54, ptr %27, align 8, !tbaa !66
  store i8 32, ptr %54, align 8, !tbaa !64
  store i64 1, ptr %i.qa, align 8, !tbaa !67
  store i8 0, ptr %i.qb, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  store ptr %i.qc, ptr %28, align 8, !tbaa !66
  store i16 8284, ptr %i.qc, align 8
  store i64 2, ptr %i.qd, align 8, !tbaa !67
  store i8 0, ptr %i.qe, align 2, !tbaa !64
  invoke void @_ZN5osgeo4proj8internal10replaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %i.py, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cr unwind label %.loopexit.split-lp717.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq
  %i.qh = load ptr, ptr %26, align 8, !tbaa !63
  %i.qi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %i.qh) ; 0 uses
  %i.qj = load ptr, ptr %26, align 8, !tbaa !63   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.qf
  br i1 %i.qk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i411.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.peel: ; preds = %bb.cr
  %i.ql = load i64, ptr %i.qf, align 8, !tbaa !64
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i411.peel: ; preds = %bb.cr
  %55 = load i64, ptr %i.qg, align 8, !tbaa !67
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i411.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410.peel
  %i.qn = load ptr, ptr %28, align 8, !tbaa !63   ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.qc
  br i1 %i.qo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i414.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412.peel
  %i.qp = load i64, ptr %i.qc, align 8, !tbaa !64
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i414.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412.peel
  %57 = load i64, ptr %i.qd, align 8, !tbaa !67
  %58 = icmp ult i64 %57, 16
  call void @llvm.assume(i1 %58)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i414.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.qr = load ptr, ptr %27, align 8, !tbaa !63   ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %54
  br i1 %i.qs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i417.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.peel
  %i.qt = load i64, ptr %54, align 8, !tbaa !64
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i417.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415.peel
  %59 = load i64, ptr %i.qa, align 8, !tbaa !67
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i417.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  %i.qv = getelementptr inbounds nuw i8, ptr %i.py, i64 32 ; 2 uses
  %.not606.peel = icmp eq ptr %i.qv, %i.px
  br i1 %.not606.peel, label %._crit_edge676, label %.peel.next

._crit_edge676:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.peel, %bb.co
  %putchar271 = call i32 @putchar(i32 10)         ; 0 uses
  %i.qw = load ptr, ptr %24, align 8, !tbaa !63   ; 2 uses
  %i.qx = icmp eq ptr %i.qw, %i.ny
  br i1 %i.qx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %._crit_edge676
  %i.qy = load i64, ptr %i.ny, align 8, !tbaa !64
  %i.qz = add i64 %i.qy, 1
  call void @_ZdlPvm(ptr noundef %i.qw, i64 noundef %i.qz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %._crit_edge676, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory7CRSInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  %i.ra = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !64
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.rf = load ptr, ptr %19, align 8, !tbaa !63   ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.ri = load i64, ptr %i.rg, align 8, !tbaa !64
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.rj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.fz

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %.sroa.0558.0672 = phi ptr [ %i.ry, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418 ], [ %i.qv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418.peel ] ; 2 uses
  %putchar272 = call i32 @putchar(i32 32)         ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #31
  store ptr %54, ptr %27, align 8, !tbaa !66
  store i8 32, ptr %54, align 8, !tbaa !64
  store i64 1, ptr %i.qa, align 8, !tbaa !67
  store i8 0, ptr %i.qb, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31
  store ptr %i.qc, ptr %28, align 8, !tbaa !66
  store i16 8284, ptr %i.qc, align 8
  store i64 2, ptr %i.qd, align 8, !tbaa !67
  store i8 0, ptr %i.qe, align 2, !tbaa !64
  invoke void @_ZN5osgeo4proj8internal10replaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0558.0672, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.cs unwind label %.loopexit.split-lp717.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %.peel.next
  %i.rk = load ptr, ptr %26, align 8, !tbaa !63
  %i.rl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %i.rk) ; 0 uses
  %i.rm = load ptr, ptr %26, align 8, !tbaa !63   ; 2 uses
  %i.rn = icmp eq ptr %i.rm, %i.qf
  br i1 %i.rn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410: ; preds = %bb.cs
  %i.ro = load i64, ptr %i.qf, align 8, !tbaa !64
  %i.rp = add i64 %i.ro, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i410
  %i.rq = load ptr, ptr %28, align 8, !tbaa !63   ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.qc
  br i1 %i.rr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412
  %i.rs = load i64, ptr %i.qc, align 8, !tbaa !64
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.ru = load ptr, ptr %27, align 8, !tbaa !63   ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %54
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.rw = load i64, ptr %54, align 8, !tbaa !64
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0558.0672, i64 32 ; 2 uses
  %.not606 = icmp eq ptr %i.ry, %i.px
  br i1 %.not606, label %._crit_edge676, label %.peel.next, !llvm.loop !285

.loopexit.split-lp717.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.cq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.rz = load ptr, ptr %28, align 8, !tbaa !63   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.qc
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %.loopexit.split-lp717.loopexit.split-lp.loopexit.split-lp
  %i.sb = load i64, ptr %i.qc, align 8, !tbaa !64
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %.loopexit.split-lp717.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31
  %i.sd = load ptr, ptr %27, align 8, !tbaa !63   ; 2 uses
  %i.se = icmp eq ptr %i.sd, %54
  br i1 %i.se, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  %i.sf = load i64, ptr %54, align 8, !tbaa !64
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i422
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #31
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424
  %.pn276.pn.pn = phi { ptr, i32 } [ %.pn276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396 ], [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424 ], [ %lpad.loopexit.split-lp945, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.sh = load ptr, ptr %24, align 8, !tbaa !63   ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.ny
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425: ; preds = %.loopexit.split-lp
  %i.sj = load i64, ptr %i.ny, align 8, !tbaa !64
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory7CRSInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427, %bb.cb
  %.pn276.pn.pn.pn = phi { ptr, i32 } [ %.pn276.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427 ], [ %i.os, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #31
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.ca
  %.pn276.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn276.pn.pn.pn, %bb.ct ], [ %i.or, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  %i.sl = load ptr, ptr %20, align 8, !tbaa !63   ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %bb.cu
  %i.so = load i64, ptr %i.sm, align 8, !tbaa !64
  %i.sp = add i64 %i.so, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.sp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428, %bb.bz
  %.pn276.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oq, %bb.bz ], [ %.pn276.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428 ], [ %.pn276.pn.pn.pn.pn, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  %i.sq = load ptr, ptr %19, align 8, !tbaa !63   ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !64
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.su) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431, %bb.by
  %.pn276.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.op, %bb.by ], [ %.pn276.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431 ], [ %.pn276.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.ga

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr @.str.209, ptr %i.b, align 8, !tbaa !57
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.145, ptr %i.sv, align 8, !tbaa !57
  %i.sw = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %36, i64 17
  %i.te = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %37, i64 18
  %i.th = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.critedge307
  %.0163.idx685 = phi i64 [ 0, %bb.cv ], [ %.0163.add, %.critedge307 ] ; 2 uses
  %.6684 = phi i8 [ %.3171, %bb.cv ], [ 1, %.critedge307 ] ; 2 uses
  %.0163.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0163.idx685
  %i.ti = load ptr, ptr %.0163.ptr, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.ti, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.23") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.cy unwind label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.tj = load ptr, ptr %30, align 8, !tbaa !63   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.sw
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %bb.cy
  %i.tl = load i64, ptr %i.sw, align 8, !tbaa !64
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  %i.tn = load ptr, ptr %29, align 8, !tbaa !121
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory14getCRSInfoListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.tn)
          to label %.preheader613 unwind label %bb.db

.preheader613:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %.sroa.0550.0677 = load ptr, ptr %32, align 8, !tbaa !124 ; 2 uses
  %.not607678 = icmp eq ptr %.sroa.0550.0677, %32
  br i1 %.not607678, label %._crit_edge682, label %.lr.ph681

._crit_edge682:                                   ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread, %.preheader613
  %.7.lcssa = phi i8 [ %.6684, %.preheader613 ], [ %.8, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread ]
  %i.to = trunc nuw i8 %.7.lcssa to i1
  br i1 %i.to, label %.critedge307, label %.thread596

bb.cz:                                            ; preds = %bb.cw
  %i.tp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

bb.da:                                            ; preds = %bb.cx
  %i.tq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.tr = load ptr, ptr %30, align 8, !tbaa !63   ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.sw
  br i1 %i.ts, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.da
  %i.tt = load i64, ptr %i.sw, align 8, !tbaa !64
  %i.tu = add i64 %i.tt, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437, %bb.cz
  %.pn240 = phi { ptr, i32 } [ %i.tp, %bb.cz ], [ %i.tq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437 ], [ %i.tq, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  br label %bb.du

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.tv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.dt

.lr.ph681:                                        ; preds = %.preheader613, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread
  %.sroa.0550.0680 = phi ptr [ %.sroa.0550.0, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread ], [ %.sroa.0550.0677, %.preheader613 ] ; 4 uses
  %.7679 = phi i8 [ %.8, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread ], [ %.6684, %.preheader613 ] ; 4 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0550.0680, i64 116
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !132, !range !90, !noundef !91
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph681
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0550.0680, i64 80 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0550.0680, i64 88 ; 2 uses
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !67
  %i.uc = load i64, ptr %i.sx, align 8, !tbaa !67 ; 2 uses
  %i.ud = icmp ult i64 %i.ub, %i.uc
  br i1 %i.ud, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442: ; preds = %bb.dc
  %i.ue = load ptr, ptr %i.tz, align 8, !tbaa !63
  %i.uf = load ptr, ptr %14, align 8, !tbaa !63
  %bcmp.i440 = call i32 @bcmp(ptr %i.ue, ptr %i.uf, i64 %i.uc)
  %i.ug = icmp eq i32 %bcmp.i440, 0
  br i1 %i.ug, label %bb.dd, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread

bb.dd:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442
  %i.uh = trunc nuw i8 %.7679 to i1
  br i1 %i.uh, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %putchar262 = call i32 @putchar(i32 32)         ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  store ptr %i.sy, ptr %33, align 8, !tbaa !66
  %i.ui = load ptr, ptr %i.tz, align 8, !tbaa !63 ; 2 uses
  %i.uj = load i64, ptr %i.ua, align 8, !tbaa !67 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.uj, ptr %i.a, align 8, !tbaa !76
end_hunk_1

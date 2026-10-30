Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/objective?download=true
inline.NumInlined: 479
inline.NumDeleted: 286
begin_hunk_0_@_ZN7xgboost11ObjFunction6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7ContextE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41
  %i.bo = load i64, ptr %i.as, align 8, !tbaa !27
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.bq = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !40
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bs = getelementptr i8, ptr %i.bq, i64 -24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %3, i64 %i.bt
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !40
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bx, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !27
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bx, align 8, !tbaa !40
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ce) #10
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cf, ptr %3, align 8, !tbaa !40
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %3, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !40
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cl) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.y

bb.r:                                             ; preds = %.noexc, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.as
  br i1 %i.cq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.t, %bb.o
  %.sink = phi ptr [ %i.bg, %bb.o ], [ %i.cp, %bb.t ]
  %.pn.ph = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.co, %bb.t ]
  %i.cr = load i64, ptr %i.as, align 8, !tbaa !27
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cs) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.t, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.co, %bb.t ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.u

bb.u:                                             ; preds = %.body, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cn, %bb.s ]
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn20 = phi { ptr, i32 } [ %i.cm, %bb.r ], [ %.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v
  %.pn22.pn = phi { ptr, i32 } [ %.pn20, %bb.v ], [ %i.al, %bb.m ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %bb.w ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ac

bb.y:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !29
  %.not.i.i45 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i45, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt25__throw_bad_function_callv() #28
          to label %.noexc46 unwind label %bb.ab

.noexc46:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !66
  %i.cy = invoke noundef ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %i.cv)
          to label %_ZNKSt8functionIFPN7xgboost11ObjFunctionEvEEclEv.exit unwind label %bb.ab, !inline_history !58 ; 2 uses

_ZNKSt8functionIFPN7xgboost11ObjFunctionEvEEclEv.exit: ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %1, ptr %i.cz, align 8, !tbaa !44
  %i.da = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.b
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNKSt8functionIFPN7xgboost11ObjFunctionEvEEclEv.exit
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !27
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNKSt8functionIFPN7xgboost11ObjFunctionEvEEclEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %i.cy

bb.ab:                                            ; preds = %bb.aa, %bb.z, %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.x ], [ %i.de, %bb.ab ]
  %i.df = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.b
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.ac
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !27
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  resume { ptr, i32 } %.pn22.pn.pn.pn

bb.ad:                                            ; preds = %bb.u
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE4FindERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst) #10
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), align 8, !tbaa !15
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 64), align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 72), align 8, !tbaa !17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 80), align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 88), i8 0, i64 48, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEED2Ev, ptr nonnull @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, ptr nonnull @__dso_handle) #10 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst) #10
  br label %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit

_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 64), align 8, !tbaa !16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 4 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.j) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #10 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.o = sub i64 %i.j, %i.g
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.p, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.d, !llvm.loop !67

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.q = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56)
  br i1 %i.q, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.g) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.w = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.v, i64 noundef %.sroa.speculated.i.i.i.i.i) #10 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.e
  %i.x = sub i64 %i.g, %i.s
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.y = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select = select i1 %i.y, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), %_ZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEv.exit ], [ getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56), %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN7xgboost14ObjFunctionRegEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN4dmlc8RegistryIN7xgboost14ObjFunctionRegEE3GetEvE4inst, i64 56)
  br i1 %.not, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.a

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.a: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.a
  %.0 = phi ptr [ %i.aa, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.a ], [ null, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN7xgboost14ObjFunctionRegESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0) ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = tail call ptr @getenv(ptr noundef nonnull @.str.26) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN4dmlc18LogStackTraceLevelEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a) #10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZN4dmlc18LogStackTraceLevelEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !33
  %i.h = add i64 %i.g, 1
  br label %_ZN4dmlc18LogStackTraceLevelEv.exit

_ZN4dmlc18LogStackTraceLevelEv.exit:              ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i64 [ %i.h, %bb.c ], [ 10, %bb.b ], [ 10, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 noundef 1, i64 noundef %i.i)
  %i.j = load ptr, ptr %1, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.j, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !27
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv(ptr dead_on_unwind writable sret(%"struct.dmlc::Error") align 8 %i.t, ptr noundef nonnull align 8 dereferenceable(376) %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN4dmlc5ErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #28
  unreachable

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN4dmlc18LogStackTraceLevelEv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !27
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.t) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.g ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK7xgboost11ObjFunction14InitEstimationERKNS_8MetaInfoEPNS_6linalg6TensorIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.xgboost::linalg::Tensor.32", align 8 ; 8 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.e, !prof !71

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.b = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.b, ptr noundef nonnull @.str.2, i32 noundef 36)
  %i.c = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.5, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.h

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.g = load ptr, ptr %0, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
  store i32 %i.j, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  call void @_ZN7xgboost6linalg8ConstantIfJRjEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::Tensor.32") align 8 %4, ptr noundef %i.l, float noundef 5.000000e-01, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost16HostDeviceVectorIfEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(17) %4)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.n, ptr noundef nonnull align 8 dereferenceable(9) %i.o, i64 9, i1 false)
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #26
  unreachable
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN4dmlc15LogMessageFatal5Entry4InitEPKci:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.w = call i64 @time(ptr noundef null) #10
  store i64 %i.w, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.x = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %3) #10 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !92
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !93
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(9) %4, i64 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ac) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #10
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %4, i64 noundef %i.ae) ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 2) ; 0 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !40
  %i.ai = getelementptr i8, ptr %i.ah, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !100
  %i.an = or i32 %i.am, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ak, i32 noundef %i.an)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1, i64 noundef %i.ao) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a, %bb.b
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %2)
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull @.str.6, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void

bb.c:                                             ; preds = %.noexc6, %._crit_edge.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.c
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !27
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv() local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !101

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) @_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result)
  %i.c = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4dmlc15LogMessageFatal5EntryD2Ev, ptr nonnull @_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result, ptr nonnull @__dso_handle) #10 ; 0 uses
  store i8 1, ptr @_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result)
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4dmlc15LogMessageFatal5EntryD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !40
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !27
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.n) #10
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4dmlc10StackTraceB5cxx11Emm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.a = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIPvSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #28
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIPvSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPvSaIS0_EEC2EmRKS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.b = shl nuw nsw i64 %2, 3
  %i.c = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #29
          to label %.noexc27 unwind label %bb.f   ; 5 uses

.noexc27:                                         ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %2 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !107
  %i.e = add nsw i64 %2, -1                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt6vectorIPvSaIS0_EEC2EmRKS1_.exit, label %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc27
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.e, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !107
  br label %_ZNSt6vectorIPvSaIS0_EEC2EmRKS1_.exit

_ZNSt6vectorIPvSaIS0_EEC2EmRKS1_.exit:            ; preds = %_ZNSt6vectorIPvSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc27
  %.sroa.11.0 = phi ptr [ %i.d, %.noexc27 ], [ %i.d, %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ null, %_ZNSt6vectorIPvSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 2 uses
  %.sroa.042.0 = phi ptr [ %i.c, %.noexc27 ], [ %i.c, %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ null, %_ZNSt6vectorIPvSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 8 uses
  %i.h = trunc i64 %2 to i32
  %i.i = invoke i32 @backtrace(ptr noundef %.sroa.042.0, i32 noundef %i.h)
          to label %bb.d unwind label %bb.n       ; 4 uses

bb.d:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EEC2EmRKS1_.exit
  %i.j = sext i32 %i.i to i64
  %i.k = icmp ult i64 %1, %i.j
  br i1 %i.k, label %bb.e, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.17, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit41

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.d
  %i.n = call ptr @backtrace_symbols(ptr noundef %.sroa.042.0, i32 noundef %i.i) #10 ; 3 uses
  %.not = icmp ne ptr %i.n, null
  %i.o = trunc i64 %1 to i32
  %i.p = icmp sgt i32 %i.i, %i.o
  %or.cond = select i1 %.not, i1 %i.p, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %sext = shl i64 %1, 32
  %i.s = ashr exact i64 %sext, 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108
  invoke void @_ZN4dmlc8DemangleB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.u)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.18, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %bb.h
  %i.w = sub i64 %indvars.iv, %1
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.w)
          to label %_ZNSolsEm.exit unwind label %bb.j ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.19, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZNSolsEm.exit
  %i.z = load ptr, ptr %4, align 8, !tbaa !26
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !32
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  %i.af = load i64, ptr %i.r, align 8, !tbaa !27
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.i, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !102

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.r
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.j
  %i.al = load i64, ptr %i.r, align 8, !tbaa !27
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %.body

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @free(ptr noundef %i.n) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !31, !alias.scope !111
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !32, !alias.scope !111
  store i8 0, ptr %i.an, align 8, !tbaa !27, !alias.scope !111
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37, !noalias !111 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !111 ; 2 uses
  %i.at = icmp ugt ptr %i.aq, %i.as
  %.08.i.i.i = select i1 %i.at, ptr %i.aq, ptr %i.as ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !38, !noalias !111 ; 2 uses
  %i.aw = ptrtoint ptr %.08.i.i.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.av, i64 noundef %i.ay)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !26, !alias.scope !111 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.an
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !27, !alias.scope !111
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %.body

bb.m:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

bb.n:                                             ; preds = %bb.e, %_ZNSt6vectorIPvSaIS0_EEC2EmRKS1_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %.not.i.i.i = icmp eq ptr %.sroa.042.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bh = ptrtoint ptr %.sroa.11.0 to i64
  %i.bi = ptrtoint ptr %.sroa.042.0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.0, i64 noundef %i.bj) #27
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.o
  %i.bk = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bk, ptr %3, align 8, !tbaa !40
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bp, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !26 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !27
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bp, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bx) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void

.body:                                            ; preds = %bb.l, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/mapping_file_provider?download=true
inline.NumInlined: 228
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4i18n12phonenumbers19MappingFileProvider11GetFileNameEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bn, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bn, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bo = load i64, ptr %i.ar, align 8, !tbaa !18 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %.not21.i = icmp eq ptr %8, %5
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bo, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !20
  store i8 %i.bq, ptr %i.bj, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.br = load i64, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  store i64 %i.br, ptr %i.a, align 8, !tbaa !18
  %i.bs = load ptr, ptr %5, align 8, !tbaa !19
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bm, ptr %5, align 8, !tbaa !19
  %i.bu = load <2 x i64>, ptr %i.ar, align 8, !tbaa !20
  store <2 x i64> %i.bu, ptr %i.a, align 8, !tbaa !20
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bv = load i64, ptr %i.bk, align 8, !tbaa !20
  store ptr %i.bm, ptr %5, align 8, !tbaa !19
  %i.bw = load <2 x i64>, ptr %i.ar, align 8, !tbaa !20
  store <2 x i64> %i.bw, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bj, ptr %8, align 8, !tbaa !19
  store i64 %i.bv, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %8, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bj, %bb.q ], [ %i.aq, %bb.r ], [ %i.bm, %bb.m ]
  store i64 0, ptr %i.ar, align 8, !tbaa !18
  store i8 0, ptr %i.bx, align 1, !tbaa !20
  %i.by = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aq
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.cc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cc, ptr %7, align 8, !tbaa !43
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ce = getelementptr i8, ptr %i.cc, i64 -24
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %7, i64 %i.cf
  store ptr %i.cd, ptr %i.cg, align 8, !tbaa !43
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ch, ptr %i.ak, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ci, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !19 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !20
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ci, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cp) #13
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cq, ptr %7, align 8, !tbaa !43
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds i8, ptr %7, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cv, align 8, !tbaa !45
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cw) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.x

bb.s:                                             ; preds = %bb.e
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.g
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i, %bb.h
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bd, %.body ], [ %i.cz, %bb.u ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.cy, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.f
  %i.da = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ag
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.x
  %i.dc = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.cx, %bb.s ]
  %i.de = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ag
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.y
  %i.dg = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %bb.c, %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.d, %bb.a
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZNK4i18n12phonenumbers19MappingFileProvider28FindBestMatchingLanguageCodeEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_PSA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %10

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = load i64, ptr %i.d, align 8, !tbaa !18
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc73 unwind label %10     ; 0 uses

.noexc73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !18
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %.noexc73
  %i.o = load ptr, ptr %3, align 8, !tbaa !19
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.o, i64 noundef %i.k)
          to label %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i unwind label %10 ; 0 uses

_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN4i18n12phonenumbers12_GLOBAL__N_119ConstructFullLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !18
  %i.u = icmp eq i64 %i.t, 4611686018427387903
  br i1 %i.u, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6.i: ; preds = %bb.c
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc77 unwind label %10     ; 0 uses

.noexc77:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6.i
  %i.w = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !18
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i7.i

.invoke:                                          ; preds = %.noexc77, %bb.c, %.noexc73, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
          to label %.cont unwind label %10

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i7.i: ; preds = %.noexc77
  %i.aa = load ptr, ptr %4, align 8, !tbaa !19
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.aa, i64 noundef %i.w)
          to label %_ZN4i18n12phonenumbers12_GLOBAL__N_119ConstructFullLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_.exit unwind label %10 ; 0 uses

_ZN4i18n12phonenumbers12_GLOBAL__N_119ConstructFullLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_.exit: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i7.i
  %.val = load ptr, ptr %6, align 8               ; 5 uses
  %.val53 = load i64, ptr %i.d, align 8           ; 3 uses
  %i.ac = icmp eq i64 %.val53, 0
  br i1 %i.ac, label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_119ConstructFullLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_.exit
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.val53, i64 5) ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull @.str.1, i64 %.sroa.speculated.i.i)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  %i.ad = icmp eq i64 %.val53, 5                  ; 3 uses
  %or.cond.i = and i1 %i.ad, %.not.i.i
  br i1 %or.cond.i, label %._crit_edge.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %bcmp.1.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull @.str.3, i64 %.sroa.speculated.i.i)
  %.not.i.1.i = icmp eq i32 %bcmp.1.i, 0
  %or.cond.1.i = and i1 %i.ad, %.not.i.1.i
  br i1 %or.cond.1.i, label %._crit_edge.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.2.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.2.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1.i
  %bcmp.2.i = call i32 @bcmp(ptr readonly %.val, ptr nonnull @.str.4, i64 %.sroa.speculated.i.i)
  %.not.i.2.i = icmp eq i32 %bcmp.2.i, 0
  %or.cond.2.i = and i1 %i.ad, %.not.i.2.i
  br i1 %or.cond.2.i, label %._crit_edge.i.i, label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

._crit_edge.i.i:                                  ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.1.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.2.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ae, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i64 7, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.ag, align 1, !tbaa !20
  %.val69 = load ptr, ptr %1, align 8, !tbaa !47  ; 3 uses
  %i.ah = getelementptr i8, ptr %1, i64 8
  %.val70 = load i32, ptr %i.ah, align 8, !tbaa !25 ; 2 uses
  %i.ai = sext i32 %.val70 to i64                 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %.val69, i64 %i.ai
  %i.ak = icmp sgt i32 %.val70, 0
  br i1 %i.ak, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i

_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %._crit_edge.i.i, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.017.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ai, %._crit_edge.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %.112.i.i.i, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %.val69, %._crit_edge.i.i ] ; 2 uses
  %i.al = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48
  %i.ao = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.an, ptr noundef nonnull readonly dereferenceable(1) %i.ae) #16
  %i.ap = icmp slt i32 %i.ao, 0                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = xor i64 %i.al, -1
  %i.as = add nsw i64 %.017.i.i.i, %i.ar
  %.112.i.i.i = select i1 %i.ap, ptr %i.aq, ptr %.01116.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ap, i64 %i.as, i64 %i.al ; 2 uses
  %i.at = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.at, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i, !llvm.loop !46

_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %._crit_edge.i.i
  %.011.lcssa.i.i.i = phi ptr [ %.val69, %._crit_edge.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.011.lcssa.i.i.i, %i.aj
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i
  %i.au = load ptr, ptr %.011.lcssa.i.i.i, align 8, !tbaa !48
  %i.av = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %i.au) #16
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.d:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %i.ax = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ae
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.az = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

10:                                               ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %bb.a
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.e:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.2.i, %_ZN4i18n12phonenumbers12_GLOBAL__N_119ConstructFullLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.val66 = load ptr, ptr %1, align 8, !tbaa !47  ; 5 uses
  %i.bc = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %.val67 = load i32, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.bd = sext i32 %.val67 to i64                 ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %.val66, i64 %i.bd ; 2 uses
  %i.bf = icmp sgt i32 %.val67, 0                 ; 2 uses
  br i1 %i.bf, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i88

_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91
  %.017.i.i.i92 = phi i64 [ %.1.i.i.i97, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91 ], [ %i.bd, %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.01116.i.i.i93 = phi ptr [ %.112.i.i.i96, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91 ], [ %.val66, %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.bg = lshr i64 %.017.i.i.i92, 1               ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i93, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bj = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bi, ptr noundef nonnull readonly dereferenceable(1) %.val) #16
  %i.bk = icmp slt i32 %i.bj, 0                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = xor i64 %i.bg, -1
  %i.bn = add nsw i64 %.017.i.i.i92, %i.bm
  %.112.i.i.i96 = select i1 %i.bk, ptr %i.bl, ptr %.01116.i.i.i93 ; 2 uses
  %.1.i.i.i97 = select i1 %i.bk, i64 %i.bn, i64 %i.bg ; 2 uses
  %i.bo = icmp sgt i64 %.1.i.i.i97, 0
  br i1 %i.bo, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i88, !llvm.loop !46

_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i88: ; preds = %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91, %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.011.lcssa.i.i.i89 = phi ptr [ %.val66, %_ZN4i18n12phonenumbers12_GLOBAL__N_119GetNormalizedLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %.112.i.i.i96, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i91 ] ; 2 uses
  %.not.i90 = icmp eq ptr %.011.lcssa.i.i.i89, %i.be
  br i1 %.not.i90, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98.thread, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i88
  %i.bp = load ptr, ptr %.011.lcssa.i.i.i89, align 8, !tbaa !48
  %i.bq = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val, ptr noundef nonnull dereferenceable(1) %i.bp) #16
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.f, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98.thread

bb.f:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98.thread: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i88, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98
  %i.bs = load i64, ptr %i.e, align 8, !tbaa !18
  %i.bt = icmp eq i64 %i.bs, 0                    ; 2 uses
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bv = icmp eq i64 %i.bu, 0                    ; 2 uses
  %i.bw = xor i1 %i.bt, %i.bv
  br i1 %i.bw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98.thread
  %.val65 = load ptr, ptr %2, align 8, !tbaa !19  ; 4 uses
  br i1 %i.bf, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i99

_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102: ; preds = %bb.g, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102
  %.017.i.i.i103 = phi i64 [ %.1.i.i.i108, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102 ], [ %i.bd, %bb.g ] ; 2 uses
  %.01116.i.i.i104 = phi ptr [ %.112.i.i.i107, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102 ], [ %.val66, %bb.g ] ; 2 uses
  %i.bx = lshr i64 %.017.i.i.i103, 1              ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i104, i64 %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !48
  %i.ca = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.bz, ptr noundef nonnull readonly dereferenceable(1) %.val65) #16
  %i.cb = icmp slt i32 %i.ca, 0                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cd = xor i64 %i.bx, -1
  %i.ce = add nsw i64 %.017.i.i.i103, %i.cd
  %.112.i.i.i107 = select i1 %i.cb, ptr %i.cc, ptr %.01116.i.i.i104 ; 2 uses
  %.1.i.i.i108 = select i1 %i.cb, i64 %i.ce, i64 %i.bx ; 2 uses
  %i.cf = icmp sgt i64 %.1.i.i.i108, 0
  br i1 %i.cf, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i99, !llvm.loop !46

_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i99: ; preds = %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102, %bb.g
  %.011.lcssa.i.i.i100 = phi ptr [ %.val66, %bb.g ], [ %.112.i.i.i107, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i102 ] ; 2 uses
  %.not.i101 = icmp eq ptr %.011.lcssa.i.i.i100, %i.be
  br i1 %.not.i101, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109.thread, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i99
  %i.cg = load ptr, ptr %.011.lcssa.i.i.i100, align 8, !tbaa !48
  %i.ch = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val65, ptr noundef nonnull dereferenceable(1) %i.cg) #16
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.h, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109.thread

bb.h:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.e

bb.i:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit98.thread
  %brmerge = or i1 %i.bt, %i.bv
  %.pre189 = load ptr, ptr %2, align 8, !tbaa !19 ; 3 uses
  br i1 %brmerge, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.cj, ptr %8, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !49
  %i.cm = icmp ugt i64 %i.cl, 15
  br i1 %i.cm, label %.noexc.i112, label %._crit_edge.i.i111

.noexc.i112:                                      ; preds = %bb.j
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc113 unwind label %bb.o  ; 2 uses

.noexc113:                                        ; preds = %.noexc.i112
  store ptr %i.cn, ptr %8, align 8, !tbaa !19
  %i.co = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.co, ptr %i.cj, align 8, !tbaa !20
  br label %._crit_edge.i.i111

._crit_edge.i.i111:                               ; preds = %.noexc113, %bb.j
  %i.cp = phi ptr [ %i.cn, %.noexc113 ], [ %i.cj, %bb.j ] ; 2 uses
  switch i64 %i.cl, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i111
  %i.cq = load i8, ptr %.pre189, align 1, !tbaa !20
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !20
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %.pre189, i64 %i.cl, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i111
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !18
  %i.ct = load ptr, ptr %8, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.cw = icmp eq i64 %i.cv, 4611686018427387903
  br i1 %i.cw, label %.invoke206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.m
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.cy = load i64, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.cz = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.da = sub i64 4611686018427387903, %i.cz
  %i.db = icmp ult i64 %i.da, %i.cy
  br i1 %i.db, label %.invoke206, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

.invoke206:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
          to label %.cont207 unwind label %bb.p

.cont207:                                         ; preds = %.invoke206
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.dc = load ptr, ptr %3, align 8, !tbaa !19
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.dc, i64 noundef %i.cy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %.val60 = load ptr, ptr %1, align 8, !tbaa !47  ; 3 uses
  %.val61 = load i32, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %.val62 = load ptr, ptr %8, align 8, !tbaa !19  ; 4 uses
  %i.de = sext i32 %.val61 to i64                 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.val60, i64 %i.de
  %i.dg = icmp sgt i32 %.val61, 0
  br i1 %i.dg, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i118

_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121
  %.017.i.i.i122 = phi i64 [ %.1.i.i.i127, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit ] ; 2 uses
  %.01116.i.i.i123 = phi ptr [ %.112.i.i.i126, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121 ], [ %.val60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit ] ; 2 uses
  %i.dh = lshr i64 %.017.i.i.i122, 1              ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i123, i64 %i.dh ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !48
  %i.dk = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dj, ptr noundef nonnull readonly dereferenceable(1) %.val62) #16
  %i.dl = icmp slt i32 %i.dk, 0                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = xor i64 %i.dh, -1
  %i.do = add nsw i64 %.017.i.i.i122, %i.dn
  %.112.i.i.i126 = select i1 %i.dl, ptr %i.dm, ptr %.01116.i.i.i123 ; 2 uses
  %.1.i.i.i127 = select i1 %i.dl, i64 %i.do, i64 %i.dh ; 2 uses
  %i.dp = icmp sgt i64 %.1.i.i.i127, 0
  br i1 %i.dp, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i118, !llvm.loop !46

_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i118: ; preds = %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %.011.lcssa.i.i.i119 = phi ptr [ %.val60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit ], [ %.112.i.i.i126, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i121 ] ; 2 uses
  %.not.i120 = icmp eq ptr %.011.lcssa.i.i.i119, %i.df
  br i1 %.not.i120, label %.critedge52, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit128

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit128: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i118
  %i.dq = load ptr, ptr %.011.lcssa.i.i.i119, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers19MappingFileProvider28FindBestMatchingLanguageCodeEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_PSA_:bb.a
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !49
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %.noexc.i139, label %._crit_edge.i.i138

.noexc.i139:                                      ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109.thread
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc140 unwind label %bb.u  ; 2 uses

.noexc140:                                        ; preds = %.noexc.i139
  store ptr %i.el, ptr %9, align 8, !tbaa !19
  %i.em = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.em, ptr %i.eh, align 8, !tbaa !20
  br label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %.noexc140, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109.thread
  %i.en = phi ptr [ %i.el, %.noexc140 ], [ %i.eh, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit109.thread ] ; 2 uses
  switch i64 %i.ej, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i138
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !20
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !20
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.eg, i64 %i.ej, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i138
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !18
  %i.er = load ptr, ptr %9, align 8, !tbaa !19
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ep
  store i8 0, ptr %i.es, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.et = load i64, ptr %i.eq, align 8, !tbaa !18
  %i.eu = icmp eq i64 %i.et, 4611686018427387903
  br i1 %i.eu, label %.invoke208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i142: ; preds = %bb.s
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145 unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i142
  %i.ew = load i64, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.ex = load i64, ptr %i.eq, align 8, !tbaa !18
  %i.ey = sub i64 4611686018427387903, %i.ex
  %i.ez = icmp ult i64 %i.ey, %i.ew
  br i1 %i.ez, label %.invoke208, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i146

.invoke208:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #15
          to label %.cont209 unwind label %bb.v

.cont209:                                         ; preds = %.invoke208
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit145
  %i.fa = load ptr, ptr %4, align 8, !tbaa !19
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.fa, i64 noundef %i.ew)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149 unwind label %bb.v ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i146
  %.val57 = load ptr, ptr %1, align 8, !tbaa !47  ; 5 uses
  %.val58 = load i32, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %.val59 = load ptr, ptr %9, align 8, !tbaa !19  ; 2 uses
  %i.fc = sext i32 %.val58 to i64                 ; 3 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %.val57, i64 %i.fc ; 2 uses
  %i.fe = icmp sgt i32 %.val58, 0                 ; 2 uses
  br i1 %i.fe, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i150

_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153
  %.017.i.i.i154 = phi i64 [ %.1.i.i.i159, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153 ], [ %i.fc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149 ] ; 2 uses
  %.01116.i.i.i155 = phi ptr [ %.112.i.i.i158, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153 ], [ %.val57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149 ] ; 2 uses
  %i.ff = lshr i64 %.017.i.i.i154, 1              ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i155, i64 %i.ff ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !48
  %i.fi = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fh, ptr noundef nonnull readonly dereferenceable(1) %.val59) #16
  %i.fj = icmp slt i32 %i.fi, 0                   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fl = xor i64 %i.ff, -1
  %i.fm = add nsw i64 %.017.i.i.i154, %i.fl
  %.112.i.i.i158 = select i1 %i.fj, ptr %i.fk, ptr %.01116.i.i.i155 ; 2 uses
  %.1.i.i.i159 = select i1 %i.fj, i64 %i.fm, i64 %i.ff ; 2 uses
  %i.fn = icmp sgt i64 %.1.i.i.i159, 0
  br i1 %i.fn, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i150, !llvm.loop !46

_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i150: ; preds = %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149
  %.011.lcssa.i.i.i151 = phi ptr [ %.val57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit149 ], [ %.112.i.i.i158, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i153 ] ; 2 uses
  %.not.i152 = icmp eq ptr %.011.lcssa.i.i.i151, %i.fd
  br i1 %.not.i152, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i150
  %i.fo = load ptr, ptr %.011.lcssa.i.i.i151, align 8, !tbaa !48
  %i.fp = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val59, ptr noundef nonnull dereferenceable(1) %i.fo) #16
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.t, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread

bb.t:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit176

bb.u:                                             ; preds = %.noexc.i139
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.v:                                             ; preds = %.invoke208, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i142
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.eh
  br i1 %i.fu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.v
  %i.fv = load i64, ptr %i.eh, align 8, !tbaa !20
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i150, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160
  %.val56 = load ptr, ptr %2, align 8, !tbaa !19  ; 2 uses
  br i1 %i.fe, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i164

_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167: ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167
  %.017.i.i.i168 = phi i64 [ %.1.i.i.i173, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167 ], [ %i.fc, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread ] ; 2 uses
  %.01116.i.i.i169 = phi ptr [ %.112.i.i.i172, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167 ], [ %.val57, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread ] ; 2 uses
  %i.fx = lshr i64 %.017.i.i.i168, 1              ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i169, i64 %i.fx ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !48
  %i.ga = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.fz, ptr noundef nonnull readonly dereferenceable(1) %.val56) #16
  %i.gb = icmp slt i32 %i.ga, 0                   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gd = xor i64 %i.fx, -1
  %i.ge = add nsw i64 %.017.i.i.i168, %i.gd
  %.112.i.i.i172 = select i1 %i.gb, ptr %i.gc, ptr %.01116.i.i.i169 ; 2 uses
  %.1.i.i.i173 = select i1 %i.gb, i64 %i.ge, i64 %i.fx ; 2 uses
  %i.gf = icmp sgt i64 %.1.i.i.i173, 0
  br i1 %i.gf, label %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167, label %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i164, !llvm.loop !46

_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i164: ; preds = %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread
  %.011.lcssa.i.i.i165 = phi ptr [ %.val57, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit160.thread ], [ %.112.i.i.i172, %_ZSt9__advanceIPPKclEvRT_T0_St26random_access_iterator_tag.exit.i.i.i167 ] ; 2 uses
  %.not.i166 = icmp eq ptr %.011.lcssa.i.i.i165, %i.fd
  br i1 %.not.i166, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174.thread, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i164
  %i.gg = load ptr, ptr %.011.lcssa.i.i.i165, align 8, !tbaa !48
  %i.gh = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val56, ptr noundef nonnull dereferenceable(1) %i.gg) #16
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.w, label %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174.thread

bb.w:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit176 unwind label %bb.v

_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174.thread: ; preds = %_ZSt11lower_boundIPPKcS1_PFbS1_S1_EET_S5_S5_RKT0_T1_.exit.i164, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.gj, align 8, !tbaa !18
  %i.gk = load ptr, ptr %5, align 8, !tbaa !19
  store i8 0, ptr %i.gk, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit176: ; preds = %bb.w, %_ZN4i18n12phonenumbers12_GLOBAL__N_111HasLanguageEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit174.thread, %bb.t
  %i.gl = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.eh
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit176
  %i.gn = load i64, ptr %i.eh, align 8, !tbaa !20
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, %bb.f
  %i.gp = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.c
  br i1 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.gr = load i64, ptr %i.c, align 8, !tbaa !20
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.u
  %.pn46 = phi { ptr, i32 } [ %i.fr, %bb.u ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %i.fs, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %10
  %.pn48.pn = phi { ptr, i32 } [ %11, %10 ], [ %i.bb, %bb.e ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.pn44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ]
  %i.gt = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.c
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183: ; preds = %bb.x
  %i.gv = load i64, ptr %i.c, align 8, !tbaa !20
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn48.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!"_ZTSN4i18n12phonenumbers19MappingFileProviderE", !9, i64 0, !5, i64 8, !8, i64 16}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!10, !8, i64 16}
!14 = !{!"p1 omnipotent char", !8, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !4, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !14, i64 0}
!20 = !{!4, !4, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"any p2 pointer", !8, i64 0}
!23 = !{!"p2 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSN4i18n12phonenumbers16CountryLanguagesE", !23, i64 0, !5, i64 8}
!25 = !{!24, !5, i64 8}
!26 = !{!15, !14, i64 0}
!27 = distinct !{!27, !21}
!28 = distinct !{!28, i1 true, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!29 = distinct !{!29, !28, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!31 = distinct !{!31, !30, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!32 = !{!5, !5, i64 0}
!33 = !{!29}
!34 = !{!31}
!35 = !{!31, !29}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !8, i64 0}
!37 = !{!"_ZTSSt6locale", !36, i64 0}
!38 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !37, i64 56}
!39 = !{!38, !14, i64 40}
!40 = !{!38, !14, i64 32}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!"vtable pointer", !3, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSSi", !16, i64 8}
!45 = !{!44, !16, i64 8}
!46 = distinct !{!46, !21}
!47 = !{!24, !23, i64 0}
!48 = !{!14, !14, i64 0}
!49 = !{!16, !16, i64 0}
end_hunk_1

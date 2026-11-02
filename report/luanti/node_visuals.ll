Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/node_visuals?download=true
inline.NumInlined: 1465
inline.NumDeleted: 729
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11NodeVisuals14updateTexturesEP14ITextureSourceP13IShaderSourceP6ClientP17PreLoadedTexturesRK15TextureSettings:.preheader336.preheader
  br i1 %i.aal, label %_ZN7TileDefD2Ev.exit319.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.3: ; preds = %_ZN7TileDefD2Ev.exit319.2
  %i.aam = load i64, ptr %i.cx, align 16, !tbaa !68
  %i.aan = add i64 %i.aam, 1
  call void @_ZdlPvm(ptr noundef %i.aak, i64 noundef %i.aan) #25
  br label %_ZN7TileDefD2Ev.exit319.3

_ZN7TileDefD2Ev.exit319.3:                        ; preds = %_ZN7TileDefD2Ev.exit319.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.3
  %i.aao = load ptr, ptr %.ptr178.1, align 16, !tbaa !89 ; 2 uses
  %i.aap = icmp eq ptr %i.aao, %i.cq
  br i1 %i.aap, label %_ZN7TileDefD2Ev.exit319.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.4: ; preds = %_ZN7TileDefD2Ev.exit319.3
  %i.aaq = load i64, ptr %i.cq, align 16, !tbaa !68
  %i.aar = add i64 %i.aaq, 1
  call void @_ZdlPvm(ptr noundef %i.aao, i64 noundef %i.aar) #25
  br label %_ZN7TileDefD2Ev.exit319.4

_ZN7TileDefD2Ev.exit319.4:                        ; preds = %_ZN7TileDefD2Ev.exit319.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.4
  %i.aas = load ptr, ptr %7, align 16, !tbaa !89  ; 2 uses
  %i.aat = icmp eq ptr %i.aas, %i.cj
  br i1 %i.aat, label %_ZN7TileDefD2Ev.exit319.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.5: ; preds = %_ZN7TileDefD2Ev.exit319.4
  %i.aau = load i64, ptr %i.cj, align 16, !tbaa !68
  %i.aav = add i64 %i.aau, 1
  call void @_ZdlPvm(ptr noundef %i.aas, i64 noundef %i.aav) #25
  br label %_ZN7TileDefD2Ev.exit319.5

_ZN7TileDefD2Ev.exit319.5:                        ; preds = %_ZN7TileDefD2Ev.exit319.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i317.5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.fl

bb.fl:                                            ; preds = %_ZN7TileDefD2Ev.exit319.5, %bb.c
  %.pn212 = phi { ptr, i32 } [ %i.bj, %bb.c ], [ %.pn209, %_ZN7TileDefD2Ev.exit319.5 ]
  %i.aaw = load ptr, ptr %.ptr.5, align 16, !tbaa !89 ; 2 uses
  %i.aax = icmp eq ptr %i.aaw, %i.ap
  br i1 %i.aax, label %_ZN7TileDefD2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320: ; preds = %bb.fl
  %i.aay = load i64, ptr %i.ap, align 16, !tbaa !68
  %i.aaz = add i64 %i.aay, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aaz) #25
  br label %_ZN7TileDefD2Ev.exit322

_ZN7TileDefD2Ev.exit322:                          ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320
  %i.aba = load ptr, ptr %.ptr.4, align 16, !tbaa !89 ; 2 uses
  %i.abb = icmp eq ptr %i.aba, %i.ai
  br i1 %i.abb, label %_ZN7TileDefD2Ev.exit322.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.1: ; preds = %_ZN7TileDefD2Ev.exit322
  %i.abc = load i64, ptr %i.ai, align 16, !tbaa !68
  %i.abd = add i64 %i.abc, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abd) #25
  br label %_ZN7TileDefD2Ev.exit322.1

_ZN7TileDefD2Ev.exit322.1:                        ; preds = %_ZN7TileDefD2Ev.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.1
  %i.abe = load ptr, ptr %.ptr.3, align 16, !tbaa !89 ; 2 uses
  %i.abf = icmp eq ptr %i.abe, %i.ab
  br i1 %i.abf, label %_ZN7TileDefD2Ev.exit322.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.2: ; preds = %_ZN7TileDefD2Ev.exit322.1
  %i.abg = load i64, ptr %i.ab, align 16, !tbaa !68
  %i.abh = add i64 %i.abg, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abh) #25
  br label %_ZN7TileDefD2Ev.exit322.2

_ZN7TileDefD2Ev.exit322.2:                        ; preds = %_ZN7TileDefD2Ev.exit322.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.2
  %i.abi = load ptr, ptr %.ptr.2, align 16, !tbaa !89 ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.u
  br i1 %i.abj, label %_ZN7TileDefD2Ev.exit322.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.3: ; preds = %_ZN7TileDefD2Ev.exit322.2
  %i.abk = load i64, ptr %i.u, align 16, !tbaa !68
  %i.abl = add i64 %i.abk, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abl) #25
  br label %_ZN7TileDefD2Ev.exit322.3

_ZN7TileDefD2Ev.exit322.3:                        ; preds = %_ZN7TileDefD2Ev.exit322.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.3
  %i.abm = load ptr, ptr %.ptr.1, align 16, !tbaa !89 ; 2 uses
  %i.abn = icmp eq ptr %i.abm, %i.n
  br i1 %i.abn, label %_ZN7TileDefD2Ev.exit322.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.4: ; preds = %_ZN7TileDefD2Ev.exit322.3
  %i.abo = load i64, ptr %i.n, align 16, !tbaa !68
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abm, i64 noundef %i.abp) #25
  br label %_ZN7TileDefD2Ev.exit322.4

_ZN7TileDefD2Ev.exit322.4:                        ; preds = %_ZN7TileDefD2Ev.exit322.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.4
  %i.abq = load ptr, ptr %6, align 16, !tbaa !89  ; 2 uses
  %i.abr = icmp eq ptr %i.abq, %i.g
  br i1 %i.abr, label %_ZN7TileDefD2Ev.exit322.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.5: ; preds = %_ZN7TileDefD2Ev.exit322.4
  %i.abs = load i64, ptr %i.g, align 16, !tbaa !68
  %i.abt = add i64 %i.abs, 1
  call void @_ZdlPvm(ptr noundef %i.abq, i64 noundef %i.abt) #25
  br label %_ZN7TileDefD2Ev.exit322.5

_ZN7TileDefD2Ev.exit322.5:                        ; preds = %_ZN7TileDefD2Ev.exit322.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i320.5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn212
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15fillTileAttribsP9TileLayer17TileAttribContextRK8TileSpecRK7TileDef12MaterialTypeSt8functionIFjbEE(ptr noundef nonnull %0, ptr nofree noundef readonly byval(%struct.TileAttribContext) align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i8 noundef zeroext %4, ptr noundef nonnull align 8 %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !284    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285, !nonnull !70, !align !167 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !88
  store i8 0, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.aq

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %i.n, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.g, align 8, !tbaa !88
  %i.p = add i64 %i.o, -4611686018427387883
  %i.q = icmp ult i64 %i.p, 21
  br i1 %i.q, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #24
          to label %.noexc unwind label %bb.aq

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, i64 noundef 21)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.aq ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.s = load i64, ptr %i.g, align 8, !tbaa !88
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.aq      ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.sroa.0100.0.extract.trunc = trunc i64 %i.x to i32 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.x, 32    ; 2 uses
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %i.y = icmp ne i32 %.sroa.0100.0.extract.trunc, 0
  %i.z = icmp ne i64 %.sroa.8.0.extract.shift, 0
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.g
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  %.sroa.0100.1 = phi i32 [ %.sroa.0100.0.extract.trunc, %bb.g ], [ 1, %.thread ]
  %.sroa.8.1 = phi i32 [ %.sroa.8.0.extract.trunc, %bb.g ], [ 1, %.thread ]
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !140 ; 2 uses
  %.not = icmp eq i8 %i.ab, 0                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !286 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 2
  %i.af = icmp eq i8 %i.ad, 1
  %i.ag = select i1 %i.af, i1 %.not, i1 false
  %or.cond86 = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond86, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !287
  %i.aj = sitofp nsz i32 %i.ai to float           ; 2 uses
  %8 = uitofp nsz i32 %.sroa.0100.1 to double
  %9 = uitofp nsz i32 %.sroa.8.1 to double
  %10 = call nsz noundef double @llvm.minnum.f64(double %8, double %9)
  %11 = fptrunc nsz double %10 to float
  %i.ak = call nsz noundef float @llvm.maxnum.f32(float %i.aj, float %11)
  %i.al = fdiv nsz float %i.ak, %i.aj
  %i.am = fptoui float %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.am, ptr %i.an, align 8, !tbaa !288
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 %i.ab, ptr %i.ao, align 8, !tbaa !288
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.ao, align 8, !tbaa !288
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.critedge
  %i.ap = load i8, ptr %2, align 8, !tbaa !162, !range !69, !noundef !70
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ar, align 8, !tbaa !288
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %4, ptr %i.as, align 2, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load i8, ptr %i.au, align 8, !tbaa !142, !range !69, !noundef !70 ; 3 uses
  store i8 %i.av, ptr %i.at, align 1, !tbaa !289
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !141
  %.not73 = icmp eq i8 %i.ax, 0
  br i1 %.not73, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = or disjoint i8 %i.av, 8                 ; 2 uses
  store i8 %i.ay, ptr %i.at, align 1, !tbaa !289
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.az = phi i8 [ %i.ay, %bb.o ], [ %i.av, %bb.n ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !290, !range !69, !noundef !70
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = or i8 %i.az, 32                         ; 2 uses
  store i8 %i.bd, ptr %i.at, align 1, !tbaa !289
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = phi i8 [ %i.bd, %bb.q ], [ %i.az, %bb.p ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !291, !range !69, !noundef !70
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = or i8 %i.be, 64                         ; 2 uses
  store i8 %i.bi, ptr %i.at, align 1, !tbaa !289
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bj = phi i8 [ %i.bi, %bb.s ], [ %i.be, %bb.r ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 35
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !292, !range !69, !noundef !70 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.bl, ptr %i.bm, align 4, !tbaa !169
  %i.bn = trunc nuw i8 %i.bl to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sink.in = select i1 %i.bn, ptr %i.bo, ptr %i.bp
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !30
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.bq, align 8, !tbaa !30
  %i.br = and i8 %i.bj, 8
  %.not74 = icmp eq i8 %i.br, 0
  br i1 %.not74, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_Z21createAnimationFramesP14ITextureSourceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19TileAnimationParamsRi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !293
  %i.bu = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ugt i64 %i.bx, 16
  br i1 %i.by, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.bz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.x unwind label %bb.aa      ; 6 uses

bb.x:                                             ; preds = %bb.w
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !293 ; 3 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !78    ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i.i.i.i, label %.noexc89, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = icmp ugt i64 %i.ce, 9223372036854775792
  br i1 %i.cf, label %.noexc.i.i, label %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i, !prof !170

.noexc.i.i:                                       ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc88 unwind label %bb.ab

.noexc88:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.y
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #28
          to label %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i..noexc89_crit_edge unwind label %bb.ab

_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i..noexc89_crit_edge: ; preds = %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %7, align 8, !tbaa !294
  %.pre115 = load ptr, ptr %i.bs, align 8, !tbaa !294
  br label %.noexc89

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i..noexc89_crit_edge, %bb.x
  %i.ch = phi ptr [ %i.ca, %bb.x ], [ %.pre115, %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i..noexc89_crit_edge ] ; 2 uses
  %i.ci = phi ptr [ %i.cb, %bb.x ], [ %.pre, %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i..noexc89_crit_edge ] ; 3 uses
  %i.cj = phi ptr [ null, %bb.x ], [ %i.cg, %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i..noexc89_crit_edge ] ; 8 uses
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !78
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !293
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ce
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !79
  %.not7.i.i.i.i.i = icmp eq ptr %i.ci, %i.ch
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc89, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i ], [ %i.cj, %.noexc89 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i ], [ %i.ci, %.noexc89 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !295
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, %i.ch
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !281

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc89
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cj, %.noexc89 ], [ %i.co, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !293
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bz, ptr %i.cp, align 8, !tbaa !75
  %i.cq = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.cr = ptrtoint ptr %i.cj to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 4
  %i.cu = trunc i64 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !171
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !30
  %i.cx = trunc i32 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.cx, ptr %i.cy, align 8, !tbaa !296
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !298
  store ptr %i.da, ptr %0, align 8, !tbaa !299
  %i.db = load i32, ptr %i.cj, align 8, !tbaa !300
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !301
  br label %bb.ad

bb.z:                                             ; preds = %bb.u
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI9FrameSpecSaIS0_EED2Ev.exit91

bb.aa:                                            ; preds = %bb.w
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorI9FrameSpecE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 24) #25
  br label %bb.af

bb.ac:                                            ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm:bb.a
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  store ptr %i.x, ptr %3, align 8, !tbaa !36
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !215
  store ptr %3, ptr %i.y, align 8, !tbaa !36
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !203
  store ptr %i.aa, ptr %3, align 8, !tbaa !36
  store ptr %3, ptr %i.z, align 8, !tbaa !203
  %i.ab = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !195
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !217
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !215
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !215
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !44
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !68
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit, %bb.a
  ret void
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !170

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !406
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !170

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !203
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !36 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !217
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !215  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !203
  store ptr %i.o, ptr %.02530, align 8, !tbaa !36
  store ptr %.02530, ptr %i.g, align 8, !tbaa !203
  store ptr %i.g, ptr %i.m, align 8, !tbaa !215
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !36
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !215
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !36
  store ptr %i.r, ptr %.02530, align 8, !tbaa !36
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !215
  store ptr %.02530, ptr %i.s, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !405

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !194    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !195
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #25
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !195
  store ptr %.0.i, ptr %0, align 8, !tbaa !194
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_Z21createAnimationFramesP14ITextureSourceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19TileAnimationParamsRi(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #19

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #15

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #8

declare noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !184    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !186
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.18, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !186
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !185 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !184   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !46
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !186
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #26
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8, !tbaa !36 ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !88
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !88
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8, !tbaa !36 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !407

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !88
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISA_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8, !tbaa !36 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !407

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !88
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #27
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !206  ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !205
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !215 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36 ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !217 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_16PreLoadedTextureENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISA_Lb1EEE.exit.thread.us.i.i

end_hunk_1
begin_hunk_2_@_ZNK5video14SMaterialLayerneERKS0_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !491
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = load i8, ptr %i.k, align 2, !tbaa !491
  %.not21 = icmp eq i8 %i.j, %i.l
  br i1 %.not21, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !492
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !492
  %.not22 = icmp eq i8 %i.n, %i.p
  br i1 %.not22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i8, ptr %i.q, align 4, !tbaa !493
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !493
  %.not23 = icmp eq i8 %i.r, %i.t
  br i1 %.not23, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !494
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !494
  %.not29 = icmp eq i8 %i.v, %i.x
  br i1 %.not29, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !495  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !495 ; 3 uses
  %.not24 = icmp eq ptr %i.z, %i.ab
  br i1 %.not24, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not25 = icmp eq ptr %i.z, null
  %.not26 = icmp eq ptr %i.ab, null
  %or.cond = or i1 %.not25, %.not26
  br i1 %or.cond, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %i.z, ptr noundef nonnull align 4 dereferenceable(64) %i.ab)
  %i.ad = xor i1 %i.ac, true
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g, %bb.i, %bb.h, %bb.f
  %.0 = phi i1 [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.g ], [ %i.ad, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4core8CMatrix4IfEeqERKS1_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !237
  %i.b = load float, ptr %1, align 4, !tbaa !237
  %i.c = fcmp nsz oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !237
  %i.h = fcmp nsz oeq float %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !237
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !237
  %i.m = fcmp nsz oeq float %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !237
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load float, ptr %i.p, align 4, !tbaa !237
  %i.r = fcmp nsz oeq float %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !237
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !237
  %i.w = fcmp nsz oeq float %i.t, %i.v
  br i1 %i.w, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !237
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !237
  %i.ab = fcmp nsz oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !237
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load float, ptr %i.ae, align 4, !tbaa !237
  %i.ag = fcmp nsz oeq float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !237
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !237
  %i.al = fcmp nsz oeq float %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !237
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !237
  %i.aq = fcmp nsz oeq float %i.an, %i.ap
  br i1 %i.aq, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load float, ptr %i.ar, align 4, !tbaa !237
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.au = load float, ptr %i.at, align 4, !tbaa !237
  %i.av = fcmp nsz oeq float %i.as, %i.au
  br i1 %i.av, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !237
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load float, ptr %i.ay, align 4, !tbaa !237
  %i.ba = fcmp nsz oeq float %i.ax, %i.az
  br i1 %i.ba, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !237
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.be = load float, ptr %i.bd, align 4, !tbaa !237
  %i.bf = fcmp nsz oeq float %i.bc, %i.be
  br i1 %i.bf, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !237
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !237
  %i.bk = fcmp nsz oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !237
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !237
  %i.bp = fcmp nsz oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !237
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !237
  %i.bu = fcmp nsz oeq float %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !237
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !237
  %i.bz = fcmp nsz oeq float %i.bw, %i.by
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ %i.bz, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  ret i1 %.lcssa
}

declare void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #8

declare extern_weak void @_ZTH10infostream() #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTH13verbosestream() #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{null, null, null, null, null}
!2 = distinct !{!2, !164}
!3 = distinct !{!3, !164}
!4 = distinct !{!4, !164}
!5 = distinct !{!5, !164}
!6 = distinct !{ptr @_ZN5scene5SMeshD1Ev, null, null}
!7 = distinct !{!7, !164}
!8 = distinct !{!8, !164}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !14, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !14, i64 16}
!23 = !{!"p1 _ZTSN5video8ITextureE", !18, i64 0}
!24 = !{!"short", !14, i64 0}
!25 = !{!"bool", !14, i64 0}
!26 = !{!"_ZTS16PreLoadedTexture", !23, i64 0, !15, i64 8, !24, i64 12, !25, i64 14}
!27 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16PreLoadedTextureE", !22, i64 0, !26, i64 32}
!28 = !{!27, !25, i64 46}
!29 = !{!23, !23, i64 0}
!30 = !{!15, !15, i64 0}
!31 = !{!24, !24, i64 0}
!32 = !{!25, !25, i64 0}
!33 = !{i64 0, i64 8, !29, i64 8, i64 4, !30, i64 12, i64 2, !31, i64 14, i64 1, !32}
!34 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!35 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"any p2 pointer", !18, i64 0}
!38 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!39 = !{!"float", !14, i64 0}
!40 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !39, i64 0, !21, i64 8}
!41 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16PreLoadedTextureESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !38, i64 0, !21, i64 8, !35, i64 16, !21, i64 24, !40, i64 32, !34, i64 48}
!42 = !{!41, !21, i64 24}
!43 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !38, i64 0, !21, i64 8, !35, i64 16, !21, i64 24, !40, i64 32, !34, i64 48}
!44 = !{!43, !21, i64 24}
!45 = !{!"vtable pointer", !13, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!48 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!49 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!50 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !21, i64 8}
!51 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!52 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!53 = !{!"_ZTSSt6locale", !52, i64 0}
!54 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !47, i64 24, !48, i64 28, !48, i64 32, !49, i64 40, !50, i64 48, !14, i64 64, !15, i64 192, !51, i64 200, !53, i64 208}
!55 = !{!"p1 _ZTSSo", !18, i64 0}
!56 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!57 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!58 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!59 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!60 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !54, i64 0, !55, i64 216, !14, i64 224, !25, i64 225, !56, i64 232, !57, i64 240, !58, i64 248, !59, i64 256}
!61 = !{!60, !57, i64 240}
!62 = !{!"_ZTSNSt6locale5facetE", !15, i64 8}
!63 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!64 = !{!"p1 int", !18, i64 0}
!65 = !{!"p1 short", !18, i64 0}
!66 = !{!"_ZTSSt5ctypeIcE", !62, i64 0, !63, i64 16, !25, i64 24, !64, i64 32, !64, i64 40, !65, i64 48, !14, i64 56, !14, i64 57, !14, i64 313, !14, i64 569}
!67 = !{!66, !14, i64 56}
!68 = !{!14, !14, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!"_ZTS12MaterialType", !14, i64 0}
!72 = !{!"p1 _ZTSSt6vectorI9FrameSpecSaIS0_EE", !18, i64 0}
!73 = !{!"_ZTSN5video6SColorE", !15, i64 0}
!74 = !{!"_ZTS9TileLayer", !23, i64 0, !15, i64 8, !15, i64 12, !24, i64 16, !24, i64 18, !24, i64 20, !71, i64 22, !14, i64 23, !14, i64 24, !25, i64 25, !72, i64 32, !73, i64 40, !25, i64 44}
!75 = !{!74, !72, i64 32}
!76 = !{!"p1 _ZTS9FrameSpec", !18, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseI9FrameSpecSaIS0_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!77, !76, i64 0}
!79 = !{!77, !76, i64 16}
!80 = !{!"p1 _ZTSN5scene5SMeshE", !18, i64 0}
!81 = !{!"p1 _ZTSSt6vectorIN5video6SColorESaIS1_EE", !18, i64 0}
!82 = !{!"p1 _ZTS15ContentFeatures", !18, i64 0}
!83 = !{!"_ZTS11NodeVisuals", !14, i64 0, !14, i64 624, !14, i64 1248, !14, i64 1249, !25, i64 1250, !80, i64 1256, !73, i64 1264, !81, i64 1272, !82, i64 1280}
!84 = !{!83, !80, i64 1256}
!85 = !{!"_ZTS17IReferenceCounted", !15, i64 8}
!86 = !{!85, !15, i64 8}
!87 = !{!20, !19, i64 0}
!88 = !{!22, !21, i64 8}
!89 = !{!22, !19, i64 0}
!90 = !{!21, !21, i64 0}
!91 = !{!83, !82, i64 1280}
!92 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !38, i64 0, !21, i64 8, !35, i64 16, !21, i64 24, !40, i64 32, !34, i64 48}
!93 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !92, i64 0}
!94 = !{!"_ZTS16ContentParamType", !14, i64 0}
!95 = !{!"_ZTS17ContentParamType2", !14, i64 0}
!96 = !{!"_ZTS12NodeDrawType", !14, i64 0}
!97 = !{!"_ZTS9AlphaMode", !14, i64 0}
!98 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !99, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !101, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseItSaItEE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorItSaItEE", !105, i64 0}
!107 = !{!"p1 _ZTS11NodeVisuals", !18, i64 0}
!108 = !{!"_ZTS16PointabilityType", !14, i64 0}
!109 = !{!"_ZTS10LiquidType", !14, i64 0}
!110 = !{!"_ZTS11NodeBoxType", !14, i64 0}
!111 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !18, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!113 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !112, i64 0}
!114 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !113, i64 0}
!115 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !114, i64 0}
!116 = !{!"_ZTSN4core8vector3dIfEE", !39, i64 0, !39, i64 4, !39, i64 8}
!117 = !{!"_ZTSN4core8aabbox3dIfEE", !116, i64 0, !116, i64 12}
!118 = !{!"p1 _ZTS16NodeBoxConnected", !18, i64 0}
!119 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!120 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0}
!121 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !118, i64 0, !120, i64 8}
!122 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !121, i64 0}
!123 = !{!"_ZTS7NodeBox", !110, i64 0, !115, i64 8, !117, i64 32, !117, i64 56, !117, i64 80, !122, i64 104}
!124 = !{!"_ZTS9SoundSpec", !22, i64 0, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !25, i64 48, !25, i64 49}
!125 = !{!"_ZTS15ContentFeatures", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !22, i64 8, !93, i64 40, !94, i64 96, !95, i64 97, !96, i64 98, !22, i64 104, !39, i64 136, !14, i64 144, !14, i64 528, !14, i64 912, !97, i64 1296, !73, i64 1300, !22, i64 1304, !14, i64 1336, !14, i64 1337, !102, i64 1344, !106, i64 1368, !73, i64 1392, !25, i64 1396, !14, i64 1397, !14, i64 1398, !107, i64 1400, !25, i64 1408, !25, i64 1409, !14, i64 1410, !25, i64 1411, !25, i64 1412, !108, i64 1413, !25, i64 1414, !25, i64 1415, !25, i64 1416, !25, i64 1417, !15, i64 1420, !22, i64 1424, !14, i64 1456, !109, i64 1457, !25, i64 1458, !22, i64 1464, !24, i64 1496, !22, i64 1504, !24, i64 1536, !14, i64 1538, !25, i64 1539, !14, i64 1540, !14, i64 1541, !25, i64 1542, !123, i64 1544, !123, i64 1664, !123, i64 1784, !124, i64 1904, !124, i64 1960, !124, i64 2016, !25, i64 2072, !25, i64 2073}
!126 = !{!125, !96, i64 98}
!127 = !{!"_ZTS11LeavesStyle", !14, i64 0}
!128 = !{!"_ZTS14WorldAlignMode", !14, i64 0}
!129 = !{!"_ZTS9AutoScale", !14, i64 0}
!130 = !{!"_ZTS15TextureSettings", !127, i64 0, !128, i64 4, !129, i64 5, !15, i64 8, !25, i64 12, !25, i64 13, !25, i64 14}
!131 = !{!130, !127, i64 0}
!132 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEEE", !18, i64 0}
!133 = !{!"p1 _ZTS13IShaderSource", !18, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!73, !15, i64 0}
!136 = !{!"_ZTS10AlignStyle", !14, i64 0}
!137 = !{!"_ZTS17TileAnimationType", !14, i64 0}
!138 = !{!"_ZTS19TileAnimationParams", !137, i64 0, !14, i64 4}
!139 = !{!"_ZTS7TileDef", !22, i64 0, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !73, i64 36, !136, i64 40, !14, i64 41, !138, i64 44}
!140 = !{!139, !14, i64 41}
!141 = !{!139, !137, i64 44}
!142 = !{!139, !25, i64 32}
!143 = !{!71, !71, i64 0}
!144 = !{!96, !96, i64 0}
!145 = !{!83, !14, i64 1248}
!146 = !{!83, !14, i64 1249}
!147 = !{!"_ZTSSt14_Function_base", !14, i64 0, !18, i64 16}
!148 = !{!147, !18, i64 16}
!149 = !{!"p2 _ZTS13IShaderSource", !37, i64 0}
!150 = !{!149, !149, i64 0}
!151 = !{!18, !18, i64 0}
!152 = !{!"_ZTSSt8functionIFjbEE", !147, i64 0, !18, i64 24}
!153 = !{!152, !18, i64 24}
!154 = !{!"p1 _ZTS14ITextureSource", !18, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!"p1 _ZTS17PreLoadedTextures", !18, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"p1 _ZTS15TextureSettings", !18, i64 0}
!159 = !{!158, !158, i64 0}
!160 = !{!"_ZTS12TileRotation", !14, i64 0}
!161 = !{!"_ZTS8TileSpec", !25, i64 0, !160, i64 1, !14, i64 8}
!162 = !{!161, !25, i64 0}
!163 = !{!74, !15, i64 8}
!164 = !{!"llvm.loop.mustprogress"}
!165 = !{i64 0, i64 8, !150, i64 8, i64 8, !151, i64 16, i64 8, !151}
end_hunk_2

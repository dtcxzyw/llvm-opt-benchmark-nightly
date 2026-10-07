Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarcomp_gpath?download=true
inline.NumInlined: 3692
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6colvar6gspath10calc_valueEv:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %class.colvarvalue, align 8         ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(392) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1776
  call void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  store i32 %i.i, ptr %i.a, align 4, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.j = load i32, ptr %1, align 8, !tbaa !142
  store i32 %i.j, ptr %i.b, align 4, !tbaa !143
  %i.k = invoke noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.l = load i32, ptr %1, align 8, !tbaa !142    ; 2 uses
  store i32 %i.l, ptr %i.h, align 8, !tbaa !142
  switch i32 %i.l, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.e
  ]

bb.b:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !144
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  store double %i.n, ptr %i.o, align 8, !tbaa !144
  br label %_ZN11colvarvalueaSERKS_.exit

bb.c:                                             ; preds = %.noexc, %.noexc, %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !146
  br label %_ZN11colvarvalueaSERKS_.exit

bb.d:                                             ; preds = %.noexc, %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !147
  br label %_ZN11colvarvalueaSERKS_.exit

bb.e:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.v = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIdSaIdEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.noexc2 unwind label %bb.k    ; 0 uses

.noexc2:                                          ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.y = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.noexc3 unwind label %bb.k    ; 0 uses

.noexc3:                                          ; preds = %.noexc2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.noexc4 unwind label %bb.k    ; 0 uses

.noexc4:                                          ; preds = %.noexc3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ae = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.k ; 0 uses

bb.f:                                             ; preds = %.noexc
  invoke void @_ZNK11colvarvalue8undef_opEv(ptr noundef nonnull align 8 dereferenceable(168) %i.h)
          to label %_ZN11colvarvalueaSERKS_.exit unwind label %bb.k

_ZN11colvarvalueaSERKS_.exit:                     ; preds = %bb.d, %bb.c, %bb.b, %.noexc4, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !148 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11colvarvalueaSERKS_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !149
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.g, %_ZN11colvarvalueaSERKS_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !148 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !149
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !150 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !151
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #30
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !152 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !153
  %.not.i.i.i4.i = icmp eq ptr %i.bd, %i.bb
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !153
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !154
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bi) #30
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.k:                                             ; preds = %bb.f, %.noexc4, %.noexc3, %.noexc2, %bb.e, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.bj
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gspath14calc_gradientsEv(ptr noundef nonnull align 8 dereferenceable(2664) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(392) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1144
  %i.h = load i64, ptr %i.g, align 8, !tbaa !139  ; 7 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.j = load i64, ptr %i.i, align 8, !tbaa !155
  %i.k = sitofp i64 %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !156  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 8 uses
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul nnan <2 x double> %i.p, <double -5.000000e-01, double 5.000000e-01> ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !156  ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.v = load i64, ptr %i.u, align 8, !tbaa !157
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !158  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !159  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1272
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152 ; 15 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1144
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !139 ; 4 uses
  %.idx.i = shl i64 %i.ac, 4                      ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !160
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !159 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1272
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !152 ; 15 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1144
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !139 ; 4 uses
  %.idx.i14 = shl i64 %i.ak, 4                    ; 4 uses
  %min.iters.check = icmp ult i64 %i.h, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.al = shl i64 %i.h, 3                         ; 6 uses
  %i.am = getelementptr i8, ptr %i.aa, i64 %i.al  ; 8 uses
  %i.an = shl i64 %i.ac, 3                        ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aa, i64 %i.an  ; 8 uses
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.an
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.al  ; 8 uses
  %i.ar = getelementptr i8, ptr %i.aa, i64 %.idx.i ; 8 uses
  %i.as = getelementptr i8, ptr %i.aa, i64 %.idx.i
  %i.at = getelementptr i8, ptr %i.as, i64 %i.al  ; 8 uses
  %i.au = getelementptr i8, ptr %i.ai, i64 %i.al  ; 8 uses
  %i.av = shl i64 %i.ak, 3                        ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ai, i64 %i.av  ; 8 uses
  %i.ax = getelementptr i8, ptr %i.ai, i64 %i.av
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.al  ; 8 uses
  %i.az = getelementptr i8, ptr %i.ai, i64 %.idx.i14 ; 8 uses
  %i.ba = getelementptr i8, ptr %i.ai, i64 %.idx.i14
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.al  ; 8 uses
  %i.bc = mul i64 %i.h, 24                        ; 2 uses
  %i.bd = getelementptr i8, ptr %i.m, i64 %i.bc   ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2088 ; 6 uses
  %i.bf = getelementptr i8, ptr %i.s, i64 %i.bc   ; 6 uses
  %bound0 = icmp ult ptr %i.aa, %i.aq
  %bound1 = icmp ult ptr %i.ao, %i.am
  %found.conflict = and i1 %bound0, %bound1
  %bound0158 = icmp ult ptr %i.aa, %i.at
  %bound1159 = icmp ult ptr %i.ar, %i.am
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx = or i1 %found.conflict, %found.conflict160
  %bound0161 = icmp ult ptr %i.aa, %i.au
  %bound1162 = icmp ult ptr %i.ai, %i.am
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx, %found.conflict163
  %bound0165 = icmp ult ptr %i.aa, %i.ay
  %bound1166 = icmp ult ptr %i.aw, %i.am
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.aa, %i.bb
  %bound1170 = icmp ult ptr %i.az, %i.am
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.aa, %i.bd
  %bound1174 = icmp ult ptr %i.m, %i.am
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0185.a = icmp ult ptr %i.aa, %i.be
  %bound1186.a = icmp ult ptr %i.n, %i.am
  %found.conflict187.a = and i1 %bound0185.a, %bound1186.a
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict187.a
  %bound0189.a = icmp ult ptr %i.aa, %i.bf
  %bound1190.a = icmp ult ptr %i.s, %i.am
  %found.conflict191.a = and i1 %bound0189.a, %bound1190.a
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict191.a
  %bound0193.a = icmp ult ptr %i.ao, %i.at
  %bound1194.a = icmp ult ptr %i.ar, %i.aq
  %found.conflict195.a = and i1 %bound0193.a, %bound1194.a
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict195.a
  %bound0197.a = icmp ult ptr %i.ao, %i.au
  %bound1198.a = icmp ult ptr %i.ai, %i.aq
  %found.conflict199.a = and i1 %bound0197.a, %bound1198.a
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict199.a
  %bound0201.a = icmp ult ptr %i.ao, %i.ay
  %bound1202.a = icmp ult ptr %i.aw, %i.aq
  %found.conflict203.a = and i1 %bound0201.a, %bound1202.a
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict203.a
  %bound0205.a = icmp ult ptr %i.ao, %i.bb
  %bound1206.a = icmp ult ptr %i.az, %i.aq
  %found.conflict207.a = and i1 %bound0205.a, %bound1206.a
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict207.a
  %bound0209.a = icmp ult ptr %i.ao, %i.bd
  %bound1210.a = icmp ult ptr %i.m, %i.aq
  %found.conflict211.a = and i1 %bound0209.a, %bound1210.a
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict211.a
  %bound0213.a = icmp ult ptr %i.ao, %i.be
  %bound1214.a = icmp ult ptr %i.n, %i.aq
  %found.conflict215.a = and i1 %bound0213.a, %bound1214.a
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict215.a
  %bound0217.a = icmp ult ptr %i.ao, %i.bf
  %bound1218.a = icmp ult ptr %i.s, %i.aq
  %found.conflict219.a = and i1 %bound0217.a, %bound1218.a
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict219.a
  %bound1222.a = icmp ult ptr %i.ar, %i.au
  %bound0225.a = icmp ult ptr %i.ai, %i.at
  %found.conflict215 = and i1 %bound1222.a, %bound0225.a
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0229.a = icmp ult ptr %i.ar, %i.ay
  %bound1230.a = icmp ult ptr %i.aw, %i.at
  %found.conflict231.a = and i1 %bound0229.a, %bound1230.a
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict231.a
  %bound1234.a = icmp ult ptr %i.ar, %i.bb
  %bound1222 = icmp ult ptr %i.az, %i.at
  %found.conflict223 = and i1 %bound1234.a, %bound1222
  %conflict.rdx224 = or i1 %conflict.rdx220, %found.conflict223
  %bound0225 = icmp ult ptr %i.ar, %i.bd
  %bound1226 = icmp ult ptr %i.m, %i.at
  %found.conflict227 = and i1 %bound0225, %bound1226
  %conflict.rdx228 = or i1 %conflict.rdx224, %found.conflict227
  %bound0229 = icmp ult ptr %i.ar, %i.be
  %bound1230 = icmp ult ptr %i.n, %i.at
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx232 = or i1 %conflict.rdx228, %found.conflict231
  %bound0233 = icmp ult ptr %i.ar, %i.bf
  %bound1234 = icmp ult ptr %i.s, %i.at
  %found.conflict235 = and i1 %bound0233, %bound1234
  %conflict.rdx236 = or i1 %conflict.rdx232, %found.conflict235
  %bound0253.a = icmp ult ptr %i.ai, %i.ay
  %bound1254.a = icmp ult ptr %i.aw, %i.au
  %found.conflict255.a = and i1 %bound0253.a, %bound1254.a
  %conflict.rdx240 = or i1 %conflict.rdx236, %found.conflict255.a
  %bound1258.a = icmp ult ptr %i.ai, %i.bb
  %bound0261.a = icmp ult ptr %i.az, %i.au
  %found.conflict243 = and i1 %bound1258.a, %bound0261.a
  %conflict.rdx244 = or i1 %conflict.rdx240, %found.conflict243
  %bound0265.a = icmp ult ptr %i.ai, %i.bd
  %bound1266.a = icmp ult ptr %i.m, %i.au
  %found.conflict267.a = and i1 %bound0265.a, %bound1266.a
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict267.a
  %bound1270.a = icmp ult ptr %i.ai, %i.be
  %bound0273.a = icmp ult ptr %i.n, %i.au
  %found.conflict251 = and i1 %bound1270.a, %bound0273.a
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0277.a = icmp ult ptr %i.ai, %i.bf
  %bound1278.a = icmp ult ptr %i.s, %i.au
  %found.conflict279.a = and i1 %bound0277.a, %bound1278.a
  %conflict.rdx256 = or i1 %conflict.rdx252, %found.conflict279.a
  %bound1282.a = icmp ult ptr %i.aw, %i.bb
  %bound1258 = icmp ult ptr %i.az, %i.ay
  %found.conflict259 = and i1 %bound1282.a, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx256, %found.conflict259
  %bound0261 = icmp ult ptr %i.aw, %i.bd
  %bound1262 = icmp ult ptr %i.m, %i.ay
  %found.conflict263 = and i1 %bound0261, %bound1262
  %op.rdx = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.aw, %i.be
  %bound1266 = icmp ult ptr %i.n, %i.ay
  %found.conflict267 = and i1 %bound0265, %bound1266
  %op.rdx297 = or i1 %op.rdx, %found.conflict267
  %bound0269 = icmp ult ptr %i.aw, %i.bf
  %bound1270 = icmp ult ptr %i.s, %i.ay
  %found.conflict271 = and i1 %bound0269, %bound1270
  %op.rdx301 = or i1 %op.rdx297, %found.conflict271
  %bound0273 = icmp ult ptr %i.az, %i.bd
  %bound1274 = icmp ult ptr %i.m, %i.bb
  %found.conflict275 = and i1 %bound0273, %bound1274
  %op.rdx305 = or i1 %op.rdx301, %found.conflict275
  %bound0277 = icmp ult ptr %i.az, %i.be
  %bound1278 = icmp ult ptr %i.n, %i.bb
  %found.conflict279 = and i1 %bound0277, %bound1278
  %op.rdx309 = or i1 %op.rdx305, %found.conflict279
  %bound0281 = icmp ult ptr %i.az, %i.bf
  %bound1282 = icmp ult ptr %i.s, %i.bb
  %found.conflict283 = and i1 %bound0281, %bound1282
  %op.rdx313 = or i1 %op.rdx309, %found.conflict283
  br i1 %op.rdx313, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -2                       ; 3 uses
  %i.bg = load double, ptr %i.n, align 8, !tbaa !161, !alias.scope !298
  %broadcast.splatinsert287 = insertelement <2 x double> poison, double %i.bg, i64 0
  %broadcast.splat288 = shufflevector <2 x double> %broadcast.splatinsert287, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %broadcast.splat = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splat286 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bh = or disjoint i64 %index, 1               ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %index ; 3 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.bh ; 3 uses
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !145, !alias.scope !299
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !145, !alias.scope !299
  %i.bm = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fmul <2 x double> %broadcast.splat, %i.bn
  %i.bp = fdiv <2 x double> %i.bo, %broadcast.splat288
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bs = load double, ptr %i.bq, align 8, !tbaa !145, !alias.scope !299
  %i.bt = load double, ptr %i.br, align 8, !tbaa !145, !alias.scope !299
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 1
  %i.bw = fmul <2 x double> %broadcast.splat, %i.bv
  %i.bx = fdiv <2 x double> %i.bw, %broadcast.splat288
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.ca = load double, ptr %i.by, align 8, !tbaa !145, !alias.scope !299
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !145, !alias.scope !299
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = fmul <2 x double> %broadcast.splat, %i.cd
  %i.cf = fdiv <2 x double> %i.ce, %broadcast.splat288
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.bh ; 3 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !145, !alias.scope !300
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !145, !alias.scope !300
  %i.ck = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = fmul <2 x double> %broadcast.splat286, %i.cl
  %i.cn = fdiv <2 x double> %i.cm, %broadcast.splat288
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cq = load double, ptr %i.co, align 8, !tbaa !145, !alias.scope !300
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !145, !alias.scope !300
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cr, i64 1
  %i.cu = fmul <2 x double> %broadcast.splat286, %i.ct
  %i.cv = fdiv <2 x double> %i.cu, %broadcast.splat288
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !145, !alias.scope !300
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !145, !alias.scope !300
  %i.da = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cz, i64 1
  %i.dc = fmul <2 x double> %broadcast.splat286, %i.db
  %i.dd = fdiv <2 x double> %i.dc, %broadcast.splat288
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index ; 4 uses
  %wide.load = load <2 x double>, ptr %i.de, align 8, !tbaa !145, !alias.scope !301, !noalias !302
  %i.df = fadd <2 x double> %i.bp, %wide.load
  store <2 x double> %i.df, ptr %i.de, align 8, !tbaa !145, !alias.scope !301, !noalias !302
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %i.ac ; 2 uses
  %wide.load289 = load <2 x double>, ptr %i.dg, align 8, !tbaa !145, !alias.scope !303, !noalias !304
  %i.dh = fadd <2 x double> %i.bx, %wide.load289
  store <2 x double> %i.dh, ptr %i.dg, align 8, !tbaa !145, !alias.scope !303, !noalias !304
  %i.di = getelementptr i8, ptr %i.de, i64 %.idx.i ; 2 uses
  %wide.load290 = load <2 x double>, ptr %i.di, align 8, !tbaa !145, !alias.scope !305, !noalias !306
  %i.dj = fadd <2 x double> %i.cf, %wide.load290
  store <2 x double> %i.dj, ptr %i.di, align 8, !tbaa !145, !alias.scope !305, !noalias !306
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 4 uses
  %wide.load291 = load <2 x double>, ptr %i.dk, align 8, !tbaa !145, !alias.scope !307, !noalias !308
  %i.dl = fadd <2 x double> %i.cn, %wide.load291
  store <2 x double> %i.dl, ptr %i.dk, align 8, !tbaa !145, !alias.scope !307, !noalias !308
  %i.dm = getelementptr [8 x i8], ptr %i.dk, i64 %i.ak ; 2 uses
  %wide.load292 = load <2 x double>, ptr %i.dm, align 8, !tbaa !145, !alias.scope !309, !noalias !310
  %i.dn = fadd <2 x double> %i.cv, %wide.load292
  store <2 x double> %i.dn, ptr %i.dm, align 8, !tbaa !145, !alias.scope !309, !noalias !310
  %i.do = getelementptr i8, ptr %i.dk, i64 %.idx.i14 ; 2 uses
  %wide.load293 = load <2 x double>, ptr %i.do, align 8, !tbaa !145, !alias.scope !311, !noalias !312
  %i.dp = fadd <2 x double> %i.dd, %wide.load293
  store <2 x double> %i.dp, ptr %i.do, align 8, !tbaa !145, !alias.scope !311, !noalias !312
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.018.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.dr = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.018 = phi i64 [ %i.fk, %scalar.ph ], [ %.018.ph, %scalar.ph.preheader ] ; 5 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.018 ; 2 uses
  %i.du = load double, ptr %i.n, align 8, !tbaa !161
  %i.dv = load <2 x double>, ptr %i.dt, align 8, !tbaa !145
  %i.dw = fmul <2 x double> %i.dr, %i.dv
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dz = fdiv <2 x double> %i.dw, %i.dy          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !145
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.018 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !145
  %i.ee = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  %i.eg = fmul <2 x double> %i.q, %i.ef
  %i.eh = fdiv <2 x double> %i.eg, %i.dy          ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ej = load <2 x double>, ptr %i.ei, align 8, !tbaa !145
  %i.ek = fmul <2 x double> %i.ds, %i.ej
  %i.el = fdiv <2 x double> %i.ek, %i.dy          ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018 ; 4 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !145
  %i.eo = extractelement <2 x double> %i.dz, i64 0
  %i.ep = fadd double %i.eo, %i.en
  store double %i.ep, ptr %i.em, align 8, !tbaa !145
  %i.eq = getelementptr [8 x i8], ptr %i.em, i64 %i.ac ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !145
  %i.es = extractelement <2 x double> %i.dz, i64 1
  %i.et = fadd double %i.es, %i.er
  store double %i.et, ptr %i.eq, align 8, !tbaa !145
  %i.eu = getelementptr i8, ptr %i.em, i64 %.idx.i ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !145
  %i.ew = extractelement <2 x double> %i.eh, i64 0
  %i.ex = fadd double %i.ew, %i.ev
  store double %i.ex, ptr %i.eu, align 8, !tbaa !145
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.018 ; 4 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !145
  %i.fa = extractelement <2 x double> %i.eh, i64 1
  %i.fb = fadd double %i.fa, %i.ez
  store double %i.fb, ptr %i.ey, align 8, !tbaa !145
  %i.fc = getelementptr [8 x i8], ptr %i.ey, i64 %i.ak ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !145
  %i.fe = extractelement <2 x double> %i.el, i64 0
  %i.ff = fadd double %i.fe, %i.fd
  store double %i.ff, ptr %i.fc, align 8, !tbaa !145
  %i.fg = getelementptr i8, ptr %i.ey, i64 %.idx.i14 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !145
  %i.fi = extractelement <2 x double> %i.el, i64 1
  %i.fj = fadd double %i.fi, %i.fh
  store double %i.fj, ptr %i.fg, align 8, !tbaa !145
  %i.fk = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fk, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !297
}

declare void @_ZN6colvar3cvc15debug_gradientsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc17collect_gradientsERKSt6vectorIiSaIiEERS1_IN12colvarmodule7rvectorESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

declare void @_ZN6colvar3cvc19calc_force_invgradsEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

declare void @_ZN6colvar3cvc24calc_Jacobian_derivativeEv(ptr noundef nonnull align 8 dereferenceable(1608)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar6gspath11apply_forceERK11colvarvalue(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2664) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.d = load i64, ptr %i.c, align 8, !tbaa !157
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !159
  tail call void @_ZN12colvarmodule10atom_group18apply_colvar_forceERKd(ptr noundef nonnull align 8 dereferenceable(1712) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2056
  %i.i = load i64, ptr %i.h, align 8, !tbaa !160
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !159
  tail call void @_ZN12colvarmodule10atom_group18apply_colvar_forceERKd(ptr noundef nonnull align 8 dereferenceable(1712) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

declare noundef double @_ZNK6colvar3cvc5dist2ERK11colvarvalueS3_(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZNK6colvar3cvc11dist2_lgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8, ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZNK6colvar3cvc11dist2_rgradERK11colvarvalueS3_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8, ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare void @_ZNK6colvar3cvc4wrapER11colvarvalue(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #0

declare noundef ptr @_ZN6colvar3cvc14get_param_gradERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

declare noundef i32 @_ZN6colvar3cvc23init_total_force_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN6colvar6gzpath14prepareVectorsEv:bb.a
  br i1 %.not28.i167, label %bb.j, label %_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit.i168

_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit.i168: ; preds = %bb.i
  %i.iv = sub i64 %.pre-phi470, %i.ij             ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.if, i8 0, i64 %i.iv, i1 false)
  %scevgep.i.i.i.i169 = getelementptr i8, ptr %i.if, i64 %i.iv
  store ptr %scevgep.i.i.i.i169, ptr %i.ig, align 8, !tbaa !165
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119

bb.j:                                             ; preds = %bb.i
  %i.iw = icmp ugt i64 %.pre-phi472, 384307168202282325
  br i1 %i.iw, label %.invoke, label %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i170

.invoke:                                          ; preds = %bb.j, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i170: ; preds = %bb.j
  %.sroa.speculated.i.i171 = tail call i64 @llvm.umax.i64(i64 %i.ik, i64 %i.im)
  %i.ix = add nuw nsw i64 %.sroa.speculated.i.i171, %i.ik
  %i.iy = tail call i64 @llvm.umin.i64(i64 %i.ix, i64 384307168202282325) ; 2 uses
  %i.iz = mul nuw nsw i64 %i.iy, 24
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #32
          to label %.noexc181 unwind label %bb.g  ; 5 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i170
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ij ; 2 uses
  %i.jc = sub i64 %.pre-phi470, %i.ij
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jb, i8 0, i64 %i.jc, i1 false)
  %.not10.i.i.i.i172 = icmp eq ptr %i.ie, %i.if
  br i1 %.not10.i.i.i.i172, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i177, label %.lr.ph.i.i.i.i173

.lr.ph.i.i.i.i173:                                ; preds = %.noexc181, %.lr.ph.i.i.i.i173
  %.012.i.i.i.i174 = phi ptr [ %i.je, %.lr.ph.i.i.i.i173 ], [ %i.ja, %.noexc181 ] ; 2 uses
  %.0911.i.i.i.i175 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i173 ], [ %i.ie, %.noexc181 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i174, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i175, i64 24, i1 false), !tbaa.struct !146, !alias.scope !605
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i175, i64 24 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i174, i64 24
  %.not.i.i.i.i176 = icmp eq ptr %i.jd, %i.if
  br i1 %.not.i.i.i.i176, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i177, label %.lr.ph.i.i.i.i173, !llvm.loop !545

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i177: ; preds = %.lr.ph.i.i.i.i173, %.noexc181
  %.not.i36.i178 = icmp eq ptr %i.ie, null
  br i1 %.not.i36.i178, label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37.i179, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i177
  %i.jf = load ptr, ptr %i.in, align 8, !tbaa !166
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = sub i64 %i.jg, %i.ii
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.jh) #30
  br label %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37.i179

_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37.i179: ; preds = %bb.k, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i177
  store ptr %i.ja, ptr %4, align 8, !tbaa !156
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.jb, i64 %i.im
  store ptr %i.ji, ptr %i.ig, align 8, !tbaa !165
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.iy
  store ptr %i.jj, ptr %i.in, align 8, !tbaa !166
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119

bb.l:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit
  %i.jk = icmp ult i64 %.pre-phi472, %i.ik
  br i1 %i.jk, label %bb.m, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119

bb.m:                                             ; preds = %bb.l
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.pre-phi470 ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.if, %i.jl
  br i1 %.not.i.i116, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119, label %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i117

_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i117: ; preds = %bb.m
  store ptr %i.jl, ptr %i.ig, align 8, !tbaa !165
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119: ; preds = %_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit.i168, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37.i179, %bb.l, %bb.m, %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i117
  %i.jm = phi ptr [ %i.ie, %_ZSt27__uninitialized_default_n_aIPN12colvarmodule7rvectorEmS1_ET_S3_T0_RSaIT1_E.exit.i168 ], [ %i.ja, %_ZNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE13_M_deallocateEPS1_m.exit37.i179 ], [ %i.ie, %bb.l ], [ %i.ie, %bb.m ], [ %i.ie, %_ZSt8_DestroyIPN12colvarmodule7rvectorES1_EvT_S3_RSaIT0_E.exit.i.i117 ]
  %i.jn = load i64, ptr %i.bp, align 8, !tbaa !185
  %i.jo = load ptr, ptr %i.ex, align 8, !tbaa !141 ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jn ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !165 ; 2 uses
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !156 ; 3 uses
  %.not396 = icmp eq ptr %i.jr, %i.js
  br i1 %.not396, label %._crit_edge354, label %.lr.ph353

.lr.ph353:                                        ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = sdiv exact i64 %i.jv, 24
  %i.jx = load ptr, ptr %3, align 8, !tbaa !156
  %i.jy = load i64, ptr %i.bv, align 8, !tbaa !186
  %i.jz = getelementptr inbounds nuw [24 x i8], ptr %i.jo, i64 %i.jy
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !156
  %i.kb = extractelement <2 x double> %i.hy, i64 0
  %i.kc = extractelement <2 x double> %i.hy, i64 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph353, %bb.n
  %.375352 = phi i64 [ 0, %.lr.ph353 ], [ %i.kr, %bb.n ] ; 5 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %.375352 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !167, !noalias !606
  %i.kg = fsub double %i.kf, %i.kb
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.jx, i64 %.375352 ; 2 uses
  %i.ki = load <2 x double>, ptr %i.kd, align 8, !tbaa !145, !noalias !606
  %i.kj = fsub <2 x double> %i.ki, %i.ht
  store <2 x double> %i.kj, ptr %i.kh, align 8, !tbaa !145
  %.sroa.6250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  store double %i.kg, ptr %.sroa.6250.0..sroa_idx, align 8, !tbaa !145
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.ka, i64 %.375352 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.km = load double, ptr %i.kl, align 8, !tbaa !167, !noalias !607
  %i.kn = fsub double %i.km, %i.kc
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.jm, i64 %.375352 ; 2 uses
  %i.kp = load <2 x double>, ptr %i.kk, align 8, !tbaa !145, !noalias !607
  %i.kq = fsub <2 x double> %i.kp, %i.hw
  store <2 x double> %i.kq, ptr %i.ko, align 8, !tbaa !145
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store double %i.kn, ptr %.sroa.6247.0..sroa_idx, align 8, !tbaa !145
  %i.kr = add nuw i64 %.375352, 1                 ; 2 uses
  %exitcond423.not = icmp eq i64 %i.kr, %i.jw
  br i1 %exitcond423.not, label %._crit_edge354, label %bb.n, !llvm.loop !550

._crit_edge354:                                   ; preds = %bb.n, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6resizeEm.exit119
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 2664
  invoke void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.ks, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.g

bb.o:                                             ; preds = %._crit_edge333
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 2664
  invoke void @_ZN12colvarmodule8rotation21calc_optimal_rotationERKSt6vectorINS_7rvectorESaIS2_EES6_(ptr noundef nonnull align 8 dereferenceable(568) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.q:                                             ; preds = %._crit_edge354, %bb.o
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.kx = load <2 x double>, ptr %i.kv, align 8, !tbaa !145, !noalias !608 ; 9 uses
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kz = extractelement <2 x double> %i.kx, i64 1 ; 4 uses
  %i.la = fmul double %i.kz, %i.kz
  %i.lb = extractelement <2 x double> %i.kx, i64 0 ; 4 uses
  %i.lc = call double @llvm.fmuladd.f64(double %i.lb, double %i.lb, double %i.la)
  %i.ld = load <2 x double>, ptr %i.kw, align 8, !tbaa !145, !noalias !608 ; 9 uses
  %i.le = extractelement <2 x double> %i.ld, i64 0 ; 5 uses
  %i.lf = fneg double %i.le                       ; 3 uses
  %i.lg = call double @llvm.fmuladd.f64(double %i.lf, double %i.le, double %i.lc)
  %i.lh = extractelement <2 x double> %i.ld, i64 1 ; 5 uses
  %i.li = fneg double %i.lh                       ; 3 uses
  %i.lj = call double @llvm.fmuladd.f64(double %i.li, double %i.lh, double %i.lg) ; 2 uses
  %i.lk = fneg double %i.kz                       ; 2 uses
  %i.ll = fmul double %i.kz, %i.lk
  %i.lm = call double @llvm.fmuladd.f64(double %i.lb, double %i.lb, double %i.ll) ; 2 uses
  %i.ln = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %i.lm)
  %i.lo = call double @llvm.fmuladd.f64(double %i.li, double %i.lh, double %i.ln) ; 2 uses
  %i.lp = call double @llvm.fmuladd.f64(double %i.lf, double %i.le, double %i.lm)
  %i.lq = call double @llvm.fmuladd.f64(double %i.lh, double %i.lh, double %i.lp) ; 2 uses
  %i.lr = insertelement <2 x double> %i.ld, double %i.lk, i64 0
  %i.ls = fmul <2 x double> %i.kx, %i.lr
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = shufflevector <2 x double> %i.kx, <2 x double> %i.ld, <2 x i32> <i32 0, i32 2>
  %i.lv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.ld, <2 x double> %i.lt)
  %i.lw = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lx = insertelement <2 x double> %i.lw, double %i.li, i64 0
  %i.ly = fmul <2 x double> %i.kx, %i.lx
  %i.lz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> %i.ld, <2 x double> %i.ly) ; 2 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  %i.mb = fmul double %i.ma, 2.000000e+00         ; 2 uses
  %i.mc = extractelement <2 x double> %i.lz, i64 1
  %i.md = fmul double %i.mc, 2.000000e+00         ; 2 uses
  %i.me = fmul <2 x double> %i.lv, splat (double 2.000000e+00) ; 3 uses
  %i.mf = shufflevector <2 x double> %i.ld, <2 x double> %i.kx, <2 x i32> <i32 0, i32 2>
  %i.mg = insertelement <2 x double> %i.lw, double %i.lf, i64 1
  %i.mh = fmul <2 x double> %i.mf, %i.mg
  %i.mi = shufflevector <2 x double> %i.kx, <2 x double> %i.ld, <2 x i32> <i32 1, i32 3>
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.mi, <2 x double> %i.mh) ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 1
  %i.ml = fmul double %i.mk, 2.000000e+00         ; 2 uses
  %i.mm = extractelement <2 x double> %i.mj, i64 0
  %i.mn = fmul double %i.mm, 2.000000e+00         ; 2 uses
  %i.mo = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 1144
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !139 ; 11 uses
  %.not397 = icmp eq i64 %i.mq, 0                 ; 2 uses
  br i1 %.not397, label %._crit_edge358, label %.lr.ph357

.lr.ph357:                                        ; preds = %bb.q
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.ms = load i64, ptr %i.bp, align 8, !tbaa !185 ; 2 uses
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !158 ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ms
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !159 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1176
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !152 ; 10 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 1144
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !139 ; 4 uses
  %.idx.i = shl i64 %i.mz, 4                      ; 4 uses
  %i.na = load i64, ptr %i.bv, align 8, !tbaa !186 ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !159 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1176
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !152 ; 10 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 1144
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !139 ; 4 uses
  %.idx.i120 = shl i64 %i.ng, 4                   ; 4 uses
  %i.nh = load ptr, ptr %i.bo, align 8, !tbaa !141 ; 2 uses
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %i.ms
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !156 ; 7 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !156 ; 15 uses
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %i.nh, i64 %i.na
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !156 ; 7 uses
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !156 ; 15 uses
  %i.nq = load ptr, ptr %1, align 8, !tbaa !156   ; 7 uses
  %i.nr = load ptr, ptr %2, align 8, !tbaa !156   ; 7 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !156 ; 15 uses
  %min.iters.check = icmp ult i64 %i.mq, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph357
  %i.nu = mul i64 %i.mq, 24                       ; 7 uses
  %i.nv = getelementptr i8, ptr %i.nl, i64 %i.nu  ; 12 uses
  %i.nw = getelementptr i8, ptr %i.np, i64 %i.nu  ; 12 uses
  %i.nx = getelementptr i8, ptr %i.nt, i64 %i.nu  ; 12 uses
  %i.ny = getelementptr i8, ptr %i.mx, i64 %.idx.i ; 3 uses
  %i.nz = shl i64 %i.mq, 3                        ; 6 uses
  %i.oa = getelementptr i8, ptr %i.mx, i64 %.idx.i
  %i.ob = getelementptr i8, ptr %i.oa, i64 %i.nz  ; 3 uses
  %i.oc = shl i64 %i.mz, 3                        ; 2 uses
  %i.od = getelementptr i8, ptr %i.mx, i64 %i.oc  ; 3 uses
  %i.oe = getelementptr i8, ptr %i.mx, i64 %i.oc
  %i.of = getelementptr i8, ptr %i.oe, i64 %i.nz  ; 3 uses
  %i.og = getelementptr i8, ptr %i.mx, i64 %i.nz  ; 3 uses
  %i.oh = getelementptr i8, ptr %i.ne, i64 %.idx.i120 ; 3 uses
  %i.oi = getelementptr i8, ptr %i.ne, i64 %.idx.i120
  %i.oj = getelementptr i8, ptr %i.oi, i64 %i.nz  ; 3 uses
  %i.ok = shl i64 %i.ng, 3                        ; 2 uses
  %7 = getelementptr i8, ptr %i.ne, i64 %i.ok     ; 3 uses
  %8 = getelementptr i8, ptr %i.ne, i64 %i.ok
  %9 = getelementptr i8, ptr %8, i64 %i.nz        ; 3 uses
  %10 = getelementptr i8, ptr %i.ne, i64 %i.nz    ; 3 uses
  %11 = getelementptr i8, ptr %i.nj, i64 %i.nu    ; 3 uses
  %12 = getelementptr i8, ptr %i.nn, i64 %i.nu    ; 3 uses
  %13 = getelementptr i8, ptr %i.nq, i64 %i.nu    ; 3 uses
  %i.ol = getelementptr i8, ptr %i.nr, i64 %i.nu  ; 3 uses
  %bound0 = icmp ult ptr %i.nl, %i.nw
  %bound1 = icmp ult ptr %i.np, %i.nv
  %found.conflict = and i1 %bound0, %bound1
  %bound0680 = icmp ult ptr %i.nl, %i.nx
  %bound1681 = icmp ult ptr %i.nt, %i.nv
  %found.conflict682 = and i1 %bound0680, %bound1681
  %conflict.rdx = or i1 %found.conflict, %found.conflict682
  %bound0683 = icmp ult ptr %i.nl, %i.ob
  %bound1684 = icmp ult ptr %i.ny, %i.nv
  %found.conflict685 = and i1 %bound0683, %bound1684
  %conflict.rdx686 = or i1 %conflict.rdx, %found.conflict685
  %bound0687 = icmp ult ptr %i.nl, %i.of
  %bound1688 = icmp ult ptr %i.od, %i.nv
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx690 = or i1 %conflict.rdx686, %found.conflict689
  %bound0691 = icmp ult ptr %i.nl, %i.og
  %bound1692 = icmp ult ptr %i.mx, %i.nv
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx694 = or i1 %conflict.rdx690, %found.conflict693
  %bound0695 = icmp ult ptr %i.nl, %i.oj
  %bound1696 = icmp ult ptr %i.oh, %i.nv
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %conflict.rdx694, %found.conflict697
  %bound0699 = icmp ult ptr %i.nl, %9
  %bound1700 = icmp ult ptr %7, %i.nv
  %found.conflict701 = and i1 %bound0699, %bound1700
  %conflict.rdx702 = or i1 %conflict.rdx698, %found.conflict701
  %bound0703 = icmp ult ptr %i.nl, %10
  %bound1704 = icmp ult ptr %i.ne, %i.nv
  %found.conflict705 = and i1 %bound0703, %bound1704
  %conflict.rdx706 = or i1 %conflict.rdx702, %found.conflict705
  %bound0707 = icmp ult ptr %i.nl, %11
  %bound1708 = icmp ult ptr %i.nj, %i.nv
  %found.conflict709 = and i1 %bound0707, %bound1708
  %conflict.rdx710 = or i1 %conflict.rdx706, %found.conflict709
  %bound0711 = icmp ult ptr %i.nl, %12
  %bound1712 = icmp ult ptr %i.nn, %i.nv
  %found.conflict713 = and i1 %bound0711, %bound1712
  %conflict.rdx714 = or i1 %conflict.rdx710, %found.conflict713
  %bound0715 = icmp ult ptr %i.nl, %13
  %bound1716 = icmp ult ptr %i.nq, %i.nv
  %found.conflict717 = and i1 %bound0715, %bound1716
  %conflict.rdx718 = or i1 %conflict.rdx714, %found.conflict717
  %bound0719 = icmp ult ptr %i.nl, %i.ol
  %bound1720 = icmp ult ptr %i.nr, %i.nv
  %found.conflict721 = and i1 %bound0719, %bound1720
  %conflict.rdx722 = or i1 %conflict.rdx718, %found.conflict721
  %bound0723 = icmp ult ptr %i.np, %i.nx
  %bound1724 = icmp ult ptr %i.nt, %i.nw
  %found.conflict725 = and i1 %bound0723, %bound1724
  %conflict.rdx726 = or i1 %conflict.rdx722, %found.conflict725
  %bound0727 = icmp ult ptr %i.np, %i.ob
  %bound1728 = icmp ult ptr %i.ny, %i.nw
  %found.conflict729 = and i1 %bound0727, %bound1728
  %conflict.rdx730 = or i1 %conflict.rdx726, %found.conflict729
  %bound0731 = icmp ult ptr %i.np, %i.of
  %bound1732 = icmp ult ptr %i.od, %i.nw
  %found.conflict733 = and i1 %bound0731, %bound1732
  %conflict.rdx734 = or i1 %conflict.rdx730, %found.conflict733
  %bound0735 = icmp ult ptr %i.np, %i.og
  %bound1736 = icmp ult ptr %i.mx, %i.nw
  %found.conflict737 = and i1 %bound0735, %bound1736
  %conflict.rdx738 = or i1 %conflict.rdx734, %found.conflict737
  %bound0739 = icmp ult ptr %i.np, %i.oj
  %bound1740 = icmp ult ptr %i.oh, %i.nw
  %found.conflict741 = and i1 %bound0739, %bound1740
  %conflict.rdx742 = or i1 %conflict.rdx738, %found.conflict741
  %bound0755.a = icmp ult ptr %i.np, %9
  %bound1756.a = icmp ult ptr %7, %i.nw
  %found.conflict757.a = and i1 %bound0755.a, %bound1756.a
  %conflict.rdx746 = or i1 %conflict.rdx742, %found.conflict757.a
  %bound0759.a = icmp ult ptr %i.np, %10
  %bound1760.a = icmp ult ptr %i.ne, %i.nw
  %found.conflict761.a = and i1 %bound0759.a, %bound1760.a
  %conflict.rdx750 = or i1 %conflict.rdx746, %found.conflict761.a
  %bound0763.a = icmp ult ptr %i.np, %11
  %bound1764.a = icmp ult ptr %i.nj, %i.nw
  %found.conflict765.a = and i1 %bound0763.a, %bound1764.a
  %conflict.rdx754 = or i1 %conflict.rdx750, %found.conflict765.a
  %bound0755 = icmp ult ptr %i.np, %12
  %bound1756 = icmp ult ptr %i.nn, %i.nw
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx758 = or i1 %conflict.rdx754, %found.conflict757
  %bound0759 = icmp ult ptr %i.np, %13
  %bound1760 = icmp ult ptr %i.nq, %i.nw
  %found.conflict761 = and i1 %bound0759, %bound1760
  %conflict.rdx762 = or i1 %conflict.rdx758, %found.conflict761
  %bound0763 = icmp ult ptr %i.np, %i.ol
  %bound1764 = icmp ult ptr %i.nr, %i.nw
  %found.conflict765 = and i1 %bound0763, %bound1764
  %conflict.rdx766 = or i1 %conflict.rdx762, %found.conflict765
  %bound0767 = icmp ult ptr %i.nt, %i.ob
  %bound1768 = icmp ult ptr %i.ny, %i.nx
  %found.conflict769 = and i1 %bound0767, %bound1768
  %conflict.rdx770 = or i1 %conflict.rdx766, %found.conflict769
  %bound0799.a = icmp ult ptr %i.nt, %i.of
  %bound1800.a = icmp ult ptr %i.od, %i.nx
  %found.conflict801.a = and i1 %bound0799.a, %bound1800.a
  %conflict.rdx774 = or i1 %conflict.rdx770, %found.conflict801.a
  %bound0803.a = icmp ult ptr %i.nt, %i.og
  %bound1804.a = icmp ult ptr %i.mx, %i.nx
  %found.conflict805.a = and i1 %bound0803.a, %bound1804.a
  %conflict.rdx778 = or i1 %conflict.rdx774, %found.conflict805.a
  %bound0779 = icmp ult ptr %i.nt, %i.oj
  %bound1780 = icmp ult ptr %i.oh, %i.nx
  %found.conflict781 = and i1 %bound0779, %bound1780
  %conflict.rdx782 = or i1 %conflict.rdx778, %found.conflict781
  %bound0783 = icmp ult ptr %i.nt, %9
  %bound1784 = icmp ult ptr %7, %i.nx
  %found.conflict785 = and i1 %bound0783, %bound1784
  %op.rdx886 = or i1 %conflict.rdx782, %found.conflict785
  %bound0787 = icmp ult ptr %i.nt, %10
  %bound1788 = icmp ult ptr %i.ne, %i.nx
  %found.conflict789 = and i1 %bound0787, %bound1788
  %op.rdx887 = or i1 %op.rdx886, %found.conflict789
  %bound0791 = icmp ult ptr %i.nt, %11
  %bound1792 = icmp ult ptr %i.nj, %i.nx
  %found.conflict793 = and i1 %bound0791, %bound1792
  %op.rdx888 = or i1 %op.rdx887, %found.conflict793
  %bound0795 = icmp ult ptr %i.nt, %12
  %bound1796 = icmp ult ptr %i.nn, %i.nx
  %found.conflict797 = and i1 %bound0795, %bound1796
  %op.rdx889 = or i1 %op.rdx888, %found.conflict797
  %bound0799 = icmp ult ptr %i.nt, %13
  %bound1800 = icmp ult ptr %i.nq, %i.nx
  %found.conflict801 = and i1 %bound0799, %bound1800
  %op.rdx890 = or i1 %op.rdx889, %found.conflict801
  %bound0803 = icmp ult ptr %i.nt, %i.ol
  %bound1804 = icmp ult ptr %i.nr, %i.nx
  %found.conflict805 = and i1 %bound0803, %bound1804
  %op.rdx891 = or i1 %op.rdx890, %found.conflict805
  br i1 %op.rdx891, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.mq, -2                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert807 = insertelement <2 x double> poison, double %i.lj, i64 0
  %broadcast.splat808 = shufflevector <2 x double> %broadcast.splatinsert807, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat810 = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert811 = insertelement <2 x double> poison, double %i.lo, i64 0
  %broadcast.splat812 = shufflevector <2 x double> %broadcast.splatinsert811, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert813 = insertelement <2 x double> poison, double %i.md, i64 0
  %broadcast.splat814 = shufflevector <2 x double> %broadcast.splatinsert813, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat816 = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert817 = insertelement <2 x double> poison, double %i.mn, i64 0
  %broadcast.splat818 = shufflevector <2 x double> %broadcast.splatinsert817, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert819 = insertelement <2 x double> poison, double %i.ml, i64 0
  %broadcast.splat820 = shufflevector <2 x double> %broadcast.splatinsert819, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert821 = insertelement <2 x double> poison, double %i.lq, i64 0
  %broadcast.splat822 = shufflevector <2 x double> %broadcast.splatinsert821, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 11 uses
  %i.om = or disjoint i64 %index, 1               ; 4 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index ; 3 uses
  %wide.load = load <2 x double>, ptr %i.on, align 8, !tbaa !145, !alias.scope !609
  %i.oo = getelementptr [8 x i8], ptr %i.on, i64 %i.mz
  %wide.load823 = load <2 x double>, ptr %i.oo, align 8, !tbaa !145, !alias.scope !610
  %i.op = getelementptr i8, ptr %i.on, i64 %.idx.i
  %wide.load824 = load <2 x double>, ptr %i.op, align 8, !tbaa !145, !alias.scope !611
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %index ; 3 uses
  %wide.load825 = load <2 x double>, ptr %i.oq, align 8, !tbaa !145, !alias.scope !612
  %i.or = getelementptr [8 x i8], ptr %i.oq, i64 %i.ng
  %wide.load826 = load <2 x double>, ptr %i.or, align 8, !tbaa !145, !alias.scope !613
  %i.os = getelementptr i8, ptr %i.oq, i64 %.idx.i120
  %wide.load827 = load <2 x double>, ptr %i.os, align 8, !tbaa !145, !alias.scope !614
  %i.ot = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %index ; 3 uses
  %i.ou = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %i.om ; 3 uses
  %i.ov = load double, ptr %i.ot, align 8, !tbaa !168, !alias.scope !615, !noalias !616
  %i.ow = load double, ptr %i.ou, align 8, !tbaa !168, !alias.scope !615, !noalias !616
  %i.ox = insertelement <2 x double> poison, double %i.ov, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.ow, i64 1
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !169, !alias.scope !615, !noalias !616
  %i.pc = load double, ptr %i.pa, align 8, !tbaa !169, !alias.scope !615, !noalias !616
  %i.pd = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.pc, i64 1
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ph = load double, ptr %i.pf, align 8, !tbaa !167, !alias.scope !615, !noalias !616
  %i.pi = load double, ptr %i.pg, align 8, !tbaa !167, !alias.scope !615, !noalias !616
  %i.pj = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.pi, i64 1
  %i.pl = fsub <2 x double> %i.pk, %wide.load824
  %i.pm = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %index
  %i.pn = shufflevector <2 x double> %i.oy, <2 x double> %i.pe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.po = shufflevector <2 x double> %wide.load, <2 x double> %wide.load823, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.pp = fsub <4 x double> %i.pn, %i.po
  %i.pq = shufflevector <2 x double> %i.pl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <4 x double> %i.pp, <4 x double> %i.pq, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec, ptr %i.pm, align 8, !tbaa !145, !alias.scope !617, !noalias !618
  %i.pr = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %index ; 3 uses
  %i.ps = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %i.om ; 3 uses
  %i.pt = load double, ptr %i.pr, align 8, !tbaa !168, !alias.scope !619, !noalias !620
  %i.pu = load double, ptr %i.ps, align 8, !tbaa !168, !alias.scope !619, !noalias !620
  %i.pv = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.pw = insertelement <2 x double> %i.pv, double %i.pu, i64 1
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pz = load double, ptr %i.px, align 8, !tbaa !169, !alias.scope !619, !noalias !620
  %i.qa = load double, ptr %i.py, align 8, !tbaa !169, !alias.scope !619, !noalias !620
  %i.qb = insertelement <2 x double> poison, double %i.pz, i64 0
  %i.qc = insertelement <2 x double> %i.qb, double %i.qa, i64 1
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.qf = load double, ptr %i.qd, align 8, !tbaa !167, !alias.scope !619, !noalias !620
  %i.qg = load double, ptr %i.qe, align 8, !tbaa !167, !alias.scope !619, !noalias !620
  %i.qh = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qi = insertelement <2 x double> %i.qh, double %i.qg, i64 1
  %i.qj = fsub <2 x double> %wide.load827, %i.qi
  %i.qk = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %index
  %i.ql = shufflevector <2 x double> %wide.load825, <2 x double> %wide.load826, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qm = shufflevector <2 x double> %i.pw, <2 x double> %i.qc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qn = fsub <4 x double> %i.ql, %i.qm
  %i.qo = shufflevector <2 x double> %i.qj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec828 = shufflevector <4 x double> %i.qn, <4 x double> %i.qo, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec828, ptr %i.qk, align 8, !tbaa !145, !alias.scope !621, !noalias !622
  %i.qp = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %index ; 3 uses
  %i.qq = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %i.om ; 3 uses
  %i.qr = load double, ptr %i.qp, align 8, !tbaa !168, !alias.scope !623, !noalias !624
  %i.qs = load double, ptr %i.qq, align 8, !tbaa !168, !alias.scope !623, !noalias !624
  %i.qt = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qs, i64 1 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qx = load double, ptr %i.qv, align 8, !tbaa !169, !alias.scope !623, !noalias !624
  %i.qy = load double, ptr %i.qw, align 8, !tbaa !169, !alias.scope !623, !noalias !624
  %i.qz = insertelement <2 x double> poison, double %i.qx, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qy, i64 1 ; 3 uses
  %i.rb = fmul <2 x double> %broadcast.splat, %i.ra
  %i.rc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat808, <2 x double> %i.qu, <2 x double> %i.rb)
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.re = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.rf = load double, ptr %i.rd, align 8, !tbaa !167, !alias.scope !623, !noalias !624
  %i.rg = load double, ptr %i.re, align 8, !tbaa !167, !alias.scope !623, !noalias !624
  %i.rh = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.rg, i64 1 ; 3 uses
  %i.rj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat810, <2 x double> %i.ri, <2 x double> %i.rc)
  %i.rk = fmul <2 x double> %broadcast.splat812, %i.ra
  %i.rl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat814, <2 x double> %i.qu, <2 x double> %i.rk)
  %i.rm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat816, <2 x double> %i.ri, <2 x double> %i.rl)
  %i.rn = fmul <2 x double> %broadcast.splat818, %i.ra
  %i.ro = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat820, <2 x double> %i.qu, <2 x double> %i.rn)
  %i.rp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat822, <2 x double> %i.ri, <2 x double> %i.ro)
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %index ; 3 uses
  %i.rr = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %i.om ; 3 uses
  %i.rs = load double, ptr %i.rq, align 8, !tbaa !168, !alias.scope !625, !noalias !626
  %i.rt = load double, ptr %i.rr, align 8, !tbaa !168, !alias.scope !625, !noalias !626
  %i.ru = insertelement <2 x double> poison, double %i.rs, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %i.rt, i64 1
  %i.rw = fsub <2 x double> %i.rj, %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rz = load double, ptr %i.rx, align 8, !tbaa !169, !alias.scope !625, !noalias !626
  %i.sa = load double, ptr %i.ry, align 8, !tbaa !169, !alias.scope !625, !noalias !626
  %i.sb = insertelement <2 x double> poison, double %i.rz, i64 0
  %i.sc = insertelement <2 x double> %i.sb, double %i.sa, i64 1
  %i.sd = fsub <2 x double> %i.rm, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.sg = load double, ptr %i.se, align 8, !tbaa !167, !alias.scope !625, !noalias !626
  %i.sh = load double, ptr %i.sf, align 8, !tbaa !167, !alias.scope !625, !noalias !626
  %i.si = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.sj = insertelement <2 x double> %i.si, double %i.sh, i64 1
  %i.sk = fsub <2 x double> %i.rp, %i.sj
  %i.sl = getelementptr inbounds nuw [24 x i8], ptr %i.nt, i64 %index
  %i.sm = shufflevector <2 x double> %i.rw, <2 x double> %i.sd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sn = shufflevector <2 x double> %i.sk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %interleaved.vec829 = shufflevector <4 x double> %i.sm, <4 x double> %i.sn, <6 x i32> <i32 0, i32 2, i32 4, i32 1, i32 3, i32 5>
  store <6 x double> %interleaved.vec829, ptr %i.sl, align 8, !tbaa !145, !alias.scope !627, !noalias !628
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.so = icmp eq i64 %index.next, %n.vec
  br i1 %i.so, label %middle.block, label %vector.body, !llvm.loop !577

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mq, %n.vec
  br i1 %cmp.n, label %._crit_edge358, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph357, %middle.block
  %.476355.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph357 ], [ %n.vec, %middle.block ]
  %i.sp = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.sq = insertelement <2 x double> %i.sp, double %i.lo, i64 1
  %i.sr = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.ss = insertelement <2 x double> %i.sr, double %i.md, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.476355 = phi i64 [ %i.uw, %scalar.ph ], [ %.476355.ph, %scalar.ph.preheader ] ; 10 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %.476355 ; 3 uses
  %i.su = load double, ptr %i.st, align 8, !tbaa !145
  %i.sv = getelementptr [8 x i8], ptr %i.st, i64 %i.mz
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !145
  %i.sx = getelementptr i8, ptr %i.st, i64 %.idx.i
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !145
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %.476355 ; 3 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !145
  %i.tb = getelementptr [8 x i8], ptr %i.sz, i64 %i.ng
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !145
  %i.td = getelementptr i8, ptr %i.sz, i64 %.idx.i120
  %i.te = load double, ptr %i.td, align 8, !tbaa !145
  %i.tf = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %.476355 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.th = load double, ptr %i.tg, align 8, !tbaa !167, !noalias !616
  %i.ti = fsub double %i.th, %i.sy
  %i.tj = getelementptr inbounds nuw [24 x i8], ptr %i.nl, i64 %.476355 ; 2 uses
  %i.tk = load <2 x double>, ptr %i.tf, align 8, !tbaa !145, !noalias !616
  %i.tl = insertelement <2 x double> poison, double %i.su, i64 0
  %i.tm = insertelement <2 x double> %i.tl, double %i.sw, i64 1
  %i.tn = fsub <2 x double> %i.tk, %i.tm
  store <2 x double> %i.tn, ptr %i.tj, align 8, !tbaa !145
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store double %i.ti, ptr %.sroa.6229.0..sroa_idx, align 8, !tbaa !145
  %i.to = getelementptr inbounds nuw [24 x i8], ptr %i.nn, i64 %.476355 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !167, !noalias !620
  %i.tr = fsub double %i.te, %i.tq
  %i.ts = getelementptr inbounds nuw [24 x i8], ptr %i.np, i64 %.476355 ; 2 uses
  %i.tt = load <2 x double>, ptr %i.to, align 8, !tbaa !145, !noalias !620
  %i.tu = insertelement <2 x double> poison, double %i.ta, i64 0
  %i.tv = insertelement <2 x double> %i.tu, double %i.tc, i64 1
  %i.tw = fsub <2 x double> %i.tv, %i.tt
  store <2 x double> %i.tw, ptr %i.ts, align 8, !tbaa !145
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  store double %i.tr, ptr %.sroa.6226.0..sroa_idx, align 8, !tbaa !145
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %i.nq, i64 %.476355 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.ua = getelementptr inbounds nuw [24 x i8], ptr %i.nr, i64 %.476355 ; 2 uses
end_hunk_1

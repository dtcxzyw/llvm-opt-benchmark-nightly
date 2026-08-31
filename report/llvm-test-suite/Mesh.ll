Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Mesh?download=true
inline.NumInlined: 767
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Mesh10writeStatsEv:bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 67
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i22
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ee)
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !154
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef signext i8 %i.el(ptr noundef nonnull align 8 dereferenceable(570) %i.ee, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25: ; preds = %bb.u, %bb.v
  %.0.i.i.i24 = phi i8 [ %i.ei, %bb.u ], [ %i.em, %bb.v ]
  %i.en = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i8 noundef signext %.0.i.i.i24)
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en) ; 0 uses
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 15) ; 0 uses
  %i.eq = load i32, ptr %i.e, align 4, !tbaa !4
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.eq) ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !154
  %i.et = getelementptr i8, ptr %i.es, i64 -24
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 240
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !156 ; 6 uses
  %.not.i.i.i26 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i26, label %bb.w, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27

bb.w:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !171
  %.not.i1.i.i28 = icmp eq i8 %i.ez, 0
  br i1 %.not.i1.i.i28, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 67
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ex)
  %i.fc = load ptr, ptr %i.ex, align 8, !tbaa !154
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = call noundef signext i8 %i.fe(ptr noundef nonnull align 8 dereferenceable(570) %i.ex, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30: ; preds = %bb.x, %bb.y
  %.0.i.i.i29 = phi i8 [ %i.fb, %bb.x ], [ %i.ff, %bb.y ]
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.er, i8 noundef signext %.0.i.i.i29)
  %i.fh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fg) ; 0 uses
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 14) ; 0 uses
  %i.fj = load i32, ptr %i.f, align 4, !tbaa !4
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.fj) ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !154
  %i.fm = getelementptr i8, ptr %i.fl, i64 -24
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds i8, ptr %i.fk, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 240
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !156 ; 6 uses
  %.not.i.i.i31 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i31, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32

bb.z:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !171
  %.not.i1.i.i33 = icmp eq i8 %i.fs, 0
  br i1 %.not.i1.i.i33, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 67
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fq)
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !154
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef signext i8 %i.fx(ptr noundef nonnull align 8 dereferenceable(570) %i.fq, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i34 = phi i8 [ %i.fu, %bb.aa ], [ %i.fy, %bb.ab ]
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, i8 noundef signext %.0.i.i.i34)
  %i.ga = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fz) ; 0 uses
  %i.gb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.14, i64 noundef 13) ; 0 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !16
  %i.ge = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.gd) ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !154
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 240
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !156 ; 6 uses
  %.not.i.i.i36 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i36, label %bb.ac, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37

bb.ac:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 56
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !171
  %.not.i1.i.i38 = icmp eq i8 %i.gm, 0
  br i1 %.not.i1.i.i38, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 67
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gk)
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !154
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = call noundef signext i8 %i.gr(ptr noundef nonnull align 8 dereferenceable(570) %i.gk, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40: ; preds = %bb.ad, %bb.ae
  %.0.i.i.i39 = phi i8 [ %i.go, %bb.ad ], [ %i.gs, %bb.ae ]
  %i.gt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i8 noundef signext %.0.i.i.i39)
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gt) ; 0 uses
  %i.gv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.15, i64 noundef 24) ; 0 uses
  %i.gw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !154
  %i.gx = getelementptr i8, ptr %i.gw, i64 -24
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 240
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !156 ; 6 uses
  %.not.i.i.i41 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i41, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

bb.af:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
  call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load i8, ptr %i.hc, align 8, !tbaa !171
  %.not.i1.i.i43 = icmp eq i8 %i.hd, 0
  br i1 %.not.i1.i.i43, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 67
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hb)
  %i.hg = load ptr, ptr %i.hb, align 8, !tbaa !154
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef signext i8 %i.hi(ptr noundef nonnull align 8 dereferenceable(570) %i.hb, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45: ; preds = %bb.ag, %bb.ah
  %.0.i.i.i44 = phi i8 [ %i.hf, %bb.ag ], [ %i.hj, %bb.ah ]
  %i.hk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i44)
  %i.hl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hk) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.c, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = sext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp slt i32 %5, %i.g
  %i.i = sext i32 %5 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.in = select i1 %i.h, ptr %i.j, ptr %i.k
  %i.l = load i32, ptr %.in, align 4, !tbaa !4    ; 3 uses
  %i.m = sext i32 %i.e to i64                     ; 6 uses
  %i.n = sext i32 %i.l to i64                     ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.e, %i.l
  br i1 %.not5.i.i.i, label %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.o = getelementptr [16 x i8], ptr %3, i64 %i.m
  %i.p = sub nsw i64 %i.n, %i.m
  %i.q = shl nsw i64 %i.p, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.q, i1 false), !tbaa !85
  br label %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit

_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit:          ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %i.r = icmp slt i32 %4, %5
  br i1 %i.r, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !114
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit
  %i.y = icmp slt i32 %i.e, %i.l
  br i1 %i.y, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  %i.ab = sub nsw i64 %i.n, %i.m                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.ab, 2
  br i1 %min.iters.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph49, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph49 ] ; 2 uses
  %i.ac = add i64 %index, %i.m                    ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.af = sitofp <2 x i32> %broadcast.splat to <2 x double>
  %i.ag = getelementptr inbounds [16 x i8], ptr %3, i64 %i.ac ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ag, align 8
  %i.ah = fdiv <2 x double> %wide.load, %i.af
  store <2 x double> %i.ah, ptr %i.ag, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %i.ab
  br i1 %i.ai, label %._crit_edge, label %vector.body, !llvm.loop !177

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = sext i32 %i.ak to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.at = sext i32 %i.am to i64
  %i.au = getelementptr inbounds [16 x i8], ptr %1, i64 %i.at
  %i.av = sext i32 %i.ao to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %2, i64 %i.av
  %i.ax = load <2 x double>, ptr %i.as, align 8, !tbaa !85, !noalias !178
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !85, !noalias !178
  %i.az = fadd <2 x double> %i.ax, %i.ay
  %i.ba = fmul <2 x double> %i.az, splat (double 5.000000e-01)
  store <2 x double> %i.ba, ptr %i.aw, align 8, !tbaa !85
  %i.bb = sext i32 %i.aq to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %3, i64 %i.bb ; 2 uses
  %i.bd = load <2 x double>, ptr %i.as, align 8, !tbaa !85
  %i.be = load <2 x double>, ptr %i.bc, align 8, !tbaa !85
  %i.bf = fadd <2 x double> %i.bd, %i.be
  store <2 x double> %i.bf, ptr %i.bc, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !181

._crit_edge:                                      ; preds = %vector.body, %scalar.ph, %.preheader
  ret void

scalar.ph:                                        ; preds = %.lr.ph49
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.m
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = getelementptr inbounds [16 x i8], ptr %3, i64 %i.m ; 2 uses
  %i.bk = load <2 x double>, ptr %i.bj, align 8, !tbaa !85
  %i.bl = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fdiv <2 x double> %i.bk, %i.bm
  store <2 x double> %i.bn, ptr %i.bj, align 8, !tbaa !85
  br label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = sext i32 %7 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp slt i32 %8, %i.g
  %i.i = sext i32 %8 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.in = select i1 %i.h, ptr %i.j, ptr %i.k
  %i.l = load i32, ptr %.in, align 4, !tbaa !4    ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.e, %i.l
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit57, label %.lr.ph.i.i.i54.preheader

.lr.ph.i.i.i54.preheader:                         ; preds = %bb.a
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %i.e to i64                     ; 4 uses
  %i.o = getelementptr [8 x i8], ptr %6, i64 %i.n
  %i.p = sub nsw i64 %i.m, %i.n
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.q, i1 false), !tbaa !85
  %i.r = getelementptr [8 x i8], ptr %5, i64 %i.n
  %i.s = sub nsw i64 %i.m, %i.n
  %i.t = shl nsw i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.t, i1 false), !tbaa !85
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit57

_ZSt4fillIPddEvT_S1_RKT0_.exit57:                 ; preds = %bb.a, %.lr.ph.i.i.i54.preheader
  %i.u = icmp slt i32 %7, %8
  br i1 %i.u, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit57
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 6 uses
  %.05161 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %1, i64 %i.af
  %i.ah = sext i32 %i.aa to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ah
  %i.aj = load <2 x double>, ptr %i.ag, align 8, !tbaa !85, !noalias !182 ; 2 uses
  %i.ak = load <2 x double>, ptr %i.ai, align 8, !tbaa !85, !noalias !182 ; 3 uses
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = sext i32 %i.ae to i64                   ; 3 uses
  %i.an = getelementptr inbounds [16 x i8], ptr %2, i64 %i.am
  %i.ao = load <2 x double>, ptr %i.an, align 8, !tbaa !85, !noalias !185 ; 2 uses
  %i.ap = fsub <2 x double> %i.ao, %i.ak          ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %i.ar = fneg double %i.aq
  %i.as = extractelement <2 x double> %i.al, i64 1
  %i.at = fmul double %i.as, %i.ar
  %i.au = extractelement <2 x double> %i.al, i64 0
  %i.av = extractelement <2 x double> %i.ap, i64 1
  %i.aw = tail call noundef double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.at)
  %i.ax = fmul double %i.aw, 5.000000e-01         ; 3 uses
  %i.ay = fmul double %i.ax, f0x3FD5555555555555
  %foldExtExtBinop = fadd <2 x double> %i.aj, %i.ak
  %foldExtExtBinop67 = fadd <2 x double> %foldExtExtBinop, %i.ao
  %i.az = extractelement <2 x double> %foldExtExtBinop67, i64 0
  %i.ba = fmul double %i.az, %i.ay                ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.ax, ptr %i.bb, align 8, !tbaa !85
  %i.bc = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv
  store double %i.ba, ptr %i.bc, align 8, !tbaa !85
  %i.bd = getelementptr inbounds [8 x i8], ptr %5, i64 %i.am ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !85
  %i.bf = fadd double %i.be, %i.ax
  store double %i.bf, ptr %i.bd, align 8, !tbaa !85
  %i.bg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.am ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !85
  %i.bi = fadd double %i.bh, %i.ba
  store double %i.bi, ptr %i.bg, align 8, !tbaa !85
  %i.bj = fcmp ole double %i.ba, 0.000000e+00
  %i.bk = zext i1 %i.bj to i32
  %spec.select = add nuw nsw i32 %.05161, %i.bk   ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !100

bb.c:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !79
  %i.bn = add nsw i32 %i.bm, %spec.select
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !79
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit57, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh13calcSideFracsEPKdS1_Pdii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = icmp slt i32 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %i.d = sext i32 %4 to i64                       ; 7 uses
  %wide.trip.count = sext i32 %5 to i64           ; 3 uses
  %i.e = sub nsw i64 %wide.trip.count, %i.d
  %xtraiter = and i64 %i.e, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.d
  %i.i = load double, ptr %i.h, align 8, !tbaa !85
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %2, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !85
  %i.m = fdiv double %i.i, %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d
  store double %i.m, ptr %i.n, align 8, !tbaa !85
  %indvars.iv.next.prol = add nsw i64 %i.d, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.o = add nsw i64 %wide.trip.count, -1
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.t = load double, ptr %i.s, align 8, !tbaa !85
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %2, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !85
  %i.x = fdiv double %i.t, %i.w
  %i.y = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.x, ptr %i.y, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !85
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !85
  %i.ag = fdiv double %i.ac, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next
  store double %i.ag, ptr %i.ah, align 8, !tbaa !85
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !101
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh13checkBadSidesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18)
  %i.e = load i32, ptr %i.a, align 8, !tbaa !79
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.19)
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !34 ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !34 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !115

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN8Parallel9globalSumERl(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN8Parallel9globalSumERi(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !39, !range !188, !noundef !189
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 19) ; 0 uses
  %i.g = load ptr, ptr @_ZSt4cout, align 8, !tbaa !154
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !171
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.p, %bb.e ], [ %i.t, %bb.f ]
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  tail call void @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40, !range !188, !noundef !189
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ab = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 20) ; 0 uses
  %i.ae = load ptr, ptr @_ZSt4cout, align 8, !tbaa !154
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !156 ; 6 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11: ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !171
  %.not.i1.i.i12 = icmp eq i8 %i.al, 0
  br i1 %.not.i1.i.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 67
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aj)
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !154
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef signext i8 %i.aq(ptr noundef nonnull align 8 dereferenceable(570) %i.aj, i8 noundef signext 10), !inline_history !176
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14: ; preds = %bb.l, %bb.m
  %.0.i.i.i13 = phi i8 [ %i.an, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i13)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !43
  tail call void @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  ret void
}

declare void @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_(ptr noundef nonnull align 8 dereferenceable(188), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9getXPlaneEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa13 = phi ptr [ null, %bb.a ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa13, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load double, ptr %i.k, align 8, !tbaa !190
  %i.m = fsub double %i.l, %2
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = fcmp olt double %i.n, f0x3D719799812DEA11
  br i1 %i.o, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.p, ptr %i.h, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775804
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 2305843009213693951)
  %i.z = select i1 %i.x, i64 2305843009213693951, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 2
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #20
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !4
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.i, i64 %i.t, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.af, ptr %i.e, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.t) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ah = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.ai = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.q, %bb.d ], [ %i.h, %bb.b ]
  %i.aj = phi ptr [ %i.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !49
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !192
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh9getYPlaneEd(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa13 = phi ptr [ null, %bb.a ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa13, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 10 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !193
  %i.n = fsub double %i.m, %2
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.o, f0x3D719799812DEA11
  br i1 %i.p, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.q, ptr %i.h, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %i.r, ptr %i.e, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.g to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 7 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %i.aa = select i1 %i.y, i64 2305843009213693951, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #20
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !4
  %i.af = icmp sgt i64 %i.u, 0
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.i, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ai = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ]
  %i.aj = phi ptr [ %i.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.r, %bb.d ], [ %i.h, %bb.b ]
  %i.ak = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.i, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.a, align 4, !tbaa !49
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !194
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = load ptr, ptr %4, align 8, !tbaa !44     ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i11, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  store ptr %i.f, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13

_ZNSt6vectorIiSaIiEE6resizeEm.exit13:             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = sext i32 %1 to i64
  %i.l = ptrtoint ptr %2 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21, %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21 ] ; 2 uses
  %.02730 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21 ] ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sext i32 %.02730 to i64                  ; 2 uses
  %.idx29 = shl nsw i64 %i.r, 2
  %i.s = getelementptr inbounds i8, ptr %2, i64 %.idx29 ; 2 uses
  %i.t = sub nsw i64 %i.k, %i.r                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.t, %bb.b ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.s, %bb.b ] ; 2 uses
  %i.v = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = icmp slt i32 %i.x, %i.q                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = xor i64 %i.v, -1
  %i.ab = add nsw i64 %.017.i.i, %i.aa
  %.112.i.i = select i1 %i.y, ptr %i.z, ptr %.01116.i.i ; 2 uses
  %.1.i.i = select i1 %i.y, i64 %i.ab, i64 %i.v   ; 2 uses
  %i.ac = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ac, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit, !llvm.loop !195

_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit:        ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.011.lcssa.i.i = phi ptr [ %i.s, %bb.b ], [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  %i.ad = ptrtoint ptr %.011.lcssa.i.i to i64
  %i.ae = sub i64 %i.ad, %i.l
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !50  ; 4 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  store i32 %.02730, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  %i.ak = load ptr, ptr %3, align 8, !tbaa !44    ; 4 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ap = ashr exact i64 %i.an, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #20 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store i32 %.02730, ptr %i.aw, align 4, !tbaa !4
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.av, ptr %3, align 8, !tbaa !44
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.m, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !50  ; 4 uses
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !45
  %.not.i14 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ag, ptr %i.bd, align 4, !tbaa !4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !50
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bg = load ptr, ptr %4, align 8, !tbaa !44    ; 4 uses
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775804
  br i1 %i.bk, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.i
  %i.bl = ashr exact i64 %i.bj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i16, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 2305843009213693951)
  %i.bp = select i1 %i.bn, i64 2305843009213693951, i64 %i.bo ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bq = shl nuw nsw i64 %i.bp, 2
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #20 ; 4 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i32 %i.ag, ptr %i.bs, align 4, !tbaa !4
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.br, ptr align 4 %i.bg, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %.not.i17.i.i19 = icmp eq ptr %i.bg, null
  br i1 %.not.i17.i.i19, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18
  %i.bv = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bx) #18
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i18
  store ptr %i.br, ptr %4, align 8, !tbaa !44
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.by, ptr %i.n, align 8, !tbaa !45
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit21

_ZNSt6vectorIiSaIiEE9push_backERKi.exit21:        ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !78
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %bb.b, label %._crit_edge, !llvm.loop !196
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, %5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %i.f = sext i32 %4 to i64
  %wide.trip.count = sext i32 %5 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.k
  %i.m = sext i32 %i.h to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %1, i64 %i.m
  %i.o = load <2 x double>, ptr %i.l, align 8, !tbaa !85, !noalias !197
  %i.p = load <2 x double>, ptr %i.n, align 8, !tbaa !85, !noalias !197
  %i.q = fsub <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = extractelement <2 x double> %i.q, i64 1
  %i.s = fneg double %i.r
  %i.t = getelementptr inbounds [16 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  store double %i.s, ptr %i.t, align 8, !tbaa !190
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = extractelement <2 x double> %i.q, i64 0
  store double %i.v, ptr %i.u, align 8, !tbaa !193
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11calcEdgeLenEPK7double2Pdii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = sext i32 %3 to i64
  %wide.trip.count = sext i32 %4 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %1, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.p, align 8, !tbaa !190, !noalias !201
  %i.t = load double, ptr %i.r, align 8, !tbaa !190, !noalias !201
  %i.u = fsub double %i.s, %i.t                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !193, !noalias !201
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !193, !noalias !201
  %i.z = fsub double %i.w, %i.y                   ; 2 uses
  %i.aa = fmul double %i.z, %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.u, double %i.u, double %i.aa)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ab)
  %i.ac = sext i32 %i.n to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  store double %sqrt.i, ptr %i.ad, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11calcCharLenEPKdPdii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = icmp slt i32 %4, %i.g
  %i.i = sext i32 %4 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.in = select i1 %i.h, ptr %i.j, ptr %i.k
  %i.l = load i32, ptr %.in, align 4, !tbaa !4    ; 2 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m
  %.not6.i.i.i = icmp eq i32 %i.e, %i.l
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o ; 3 uses
  %i.q = shl nsw i64 %i.m, 3
  %i.r = shl nsw i64 %i.o, 3
  %i.s = add nsw i64 %i.q, -8
  %i.t = sub nsw i64 %i.s, %i.r                   ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double f0x547D42AEA2879F2E), ptr %next.gep, align 8, !tbaa !85
  store <2 x double> splat (double f0x547D42AEA2879F2E), ptr %i.z, align 8, !tbaa !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader27

.lr.ph.i.i.i.preheader27:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.07.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader27, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader27 ] ; 2 uses
  store double f0x547D42AEA2879F2E, ptr %.07.i.i.i, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.n
  br i1 %.not.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i, %middle.block, %bb.a
  %i.ac = icmp slt i32 %3, %4
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZSt4fillIPddEvT_S1_RKT0_.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.ao = load double, ptr %i.an, align 8, !tbaa !85
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !85
  %i.as = sext i32 %i.ak to i64                   ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.au, 3
  %i.aw = select i1 %i.av, double 3.000000e+00, double 4.000000e+00
  %i.ax = fmul double %i.ao, %i.aw
  %i.ay = fdiv double %i.ax, %i.ar                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !85 ; 2 uses
  %i.bb = fcmp olt double %i.ay, %i.ba
  %.sroa.speculated = select i1 %i.bb, double %i.ay, double %i.ba
  store double %.sroa.speculated, ptr %i.az, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !207
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11sumToPointsIdEEvPKT_PS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph29.i, label %_ZN4Mesh9sumOnProcIdEEvPKT_PS1_.exit

.lr.ph29.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.trip.count35.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge26.i, %.lr.ph29.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next33.i, %._crit_edge26.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv32.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv32.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph25.preheader.i, label %._crit_edge26.i

.lr.ph25.preheader.i:                             ; preds = %bb.b
  %i.p = sext i32 %i.l to i64
  %wide.trip.count.i = sext i32 %i.n to i64
  %i.q = load ptr, ptr %i.j, align 8
  br label %.lr.ph25.i

._crit_edge26.i:                                  ; preds = %._crit_edge.i, %bb.b
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_ZN4Mesh9sumOnProcIdEEvPKT_PS1_.exit, label %bb.b, !llvm.loop !208

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph25.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %.020.i = load i32, ptr %i.r, align 4, !tbaa !4 ; 2 uses
  %i.s = icmp sgt i32 %.020.i, -1
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph25.i
  %.017.lcssa.i = phi double [ 0.000000e+00, %.lr.ph25.i ], [ %i.x, %.lr.ph.i ]
  %i.t = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.i
  store double %.017.lcssa.i, ptr %i.t, align 8, !tbaa !85
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge26.i, label %.lr.ph25.i, !llvm.loop !209

.lr.ph.i:                                         ; preds = %.lr.ph25.i, %.lr.ph.i
  %.022.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.020.i, %.lr.ph25.i ]
  %.01721.i = phi double [ %i.x, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph25.i ]
  %i.u = zext nneg i32 %.022.i to i64             ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !85
  %i.x = fadd double %.01721.i, %i.w              ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.u
  %.0.i = load i32, ptr %i.y, align 4, !tbaa !4   ; 2 uses
  %i.z = icmp sgt i32 %.0.i, -1
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !210

_ZN4Mesh9sumOnProcIdEEvPKT_PS1_.exit:             ; preds = %._crit_edge26.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph30.i, label %_ZN4Mesh9sumOnProcI7double2EEvPKT_PS2_.exit

.lr.ph30.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.trip.count37.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge27.i, %.lr.ph30.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph30.i ], [ %indvars.iv.next35.i, %._crit_edge27.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv34.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv34.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4    ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph26.preheader.i, label %._crit_edge27.i

.lr.ph26.preheader.i:                             ; preds = %bb.b
  %i.p = sext i32 %i.l to i64
  %wide.trip.count.i = sext i32 %i.n to i64
  %i.q = load ptr, ptr %i.j, align 8
  br label %.lr.ph26.i

._crit_edge27.i:                                  ; preds = %._crit_edge.i, %bb.b
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count37.i
  br i1 %exitcond38.not.i, label %_ZN4Mesh9sumOnProcI7double2EEvPKT_PS2_.exit, label %bb.b, !llvm.loop !211

.lr.ph26.i:                                       ; preds = %._crit_edge.i, %.lr.ph26.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph26.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %.019.i = load i32, ptr %i.r, align 4, !tbaa !4 ; 2 uses
  %i.s = icmp sgt i32 %.019.i, -1
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph26.i
  %i.t = phi <2 x double> [ zeroinitializer, %.lr.ph26.i ], [ %i.z, %.lr.ph.i ]
  %i.u = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv.i
  store <2 x double> %i.t, ptr %i.u, align 8, !tbaa !85
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge27.i, label %.lr.ph26.i, !llvm.loop !212

.lr.ph.i:                                         ; preds = %.lr.ph26.i, %.lr.ph.i
  %.022.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.019.i, %.lr.ph26.i ]
  %i.v = phi <2 x double> [ %i.z, %.lr.ph.i ], [ zeroinitializer, %.lr.ph26.i ]
  %i.w = zext nneg i32 %.022.i to i64             ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.w
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !85
  %i.z = fadd <2 x double> %i.v, %i.y             ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.w
  %.0.i = load i32, ptr %i.aa, align 4, !tbaa !4  ; 2 uses
  %i.ab = icmp sgt i32 %.0.i, -1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !213

_ZN4Mesh9sumOnProcI7double2EEvPKT_PS2_.exit:      ; preds = %._crit_edge27.i, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph19

.lr.ph:                                           ; preds = %.lr.ph19
  %i.f = icmp eq i64 %i.g, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph19, !llvm.loop !214

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %storemerge12.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %storemerge12.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph19:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge1218 = phi ptr [ %i.h, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.01317 = phi i64 [ %i.g, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.g = add nsw i64 %.01317, -1                  ; 3 uses
  %i.h = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %storemerge1218) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %i.h, ptr %storemerge1218, i64 noundef %i.g)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 128
  br i1 %i.k, label %.lr.ph, label %.loopexit, !llvm.loop !214

.loopexit:                                        ; preds = %.lr.ph19, %bb.a, %.lr.ph._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.07.020.i.idx = phi i64 [ %.sroa.07.020.i.add, %bb.f ], [ 8, %.lr.ph.i ] ; 3 uses
  %.pn19.i = phi ptr [ %.sroa.07.020.i.ptr, %bb.f ], [ %0, %.lr.ph.i ] ; 2 uses
  %.sroa.07.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.020.i.idx ; 7 uses
  %i.f = load i32, ptr %.sroa.07.020.i.ptr, align 4, !tbaa !130 ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !130    ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i32 %i.g, %i.f
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !132
  %i.l = load i32, ptr %i.e, align 4, !tbaa !132
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i
  %i.n = load i64, ptr %.sroa.07.020.i.ptr, align 4
  %i.o = lshr exact i64 %.sroa.07.020.i.idx, 3    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16 ; 2 uses
  %xtraiter70 = and i64 %i.o, 3                   ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.07.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter72 = phi i64 [ %prol.iter72.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !4
  store i32 %i.s, ptr %i.r, align 4, !tbaa !130
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !132
  %i.w = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !215

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.020.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %indvar, 3
  br i1 %i.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !4
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !130
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !132
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !4
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !130
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !132
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !4
  store i32 %i.am, ptr %i.al, align 4, !tbaa !130
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !132
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !4
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !130
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.au, ptr %i.av, align 4, !tbaa !132
  %i.aw = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !216

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %i.n, ptr %0, align 4
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  %i.ay = load i64, ptr %.sroa.07.020.i.ptr, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i64 %i.ay to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i64 %i.ay, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i
  %.sroa.06.0.i.i = phi ptr [ %.sroa.07.020.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i ], [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ] ; 6 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !130 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.ba, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i, label %bb.e

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i: ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.bb = icmp slt i32 %i.az, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.bb, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.bc = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !132 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.be, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i
  %i.bf = phi i32 [ %.pre.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i ], [ %i.bd, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i ]
  store i32 %i.az, ptr %.sroa.06.0.i.i, align 4, !tbaa !130
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 4
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !132
  br label %bb.d, !llvm.loop !217

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store i64 %i.ay, ptr %.sroa.06.0.i.i, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.07.020.i.add = add nuw nsw i64 %.sroa.07.020.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.07.020.i.add, 128
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b, !llvm.loop !218

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not4.i = icmp eq ptr %i.bh, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13
  %.sroa.0.05.i = phi ptr [ %i.br, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13 ], [ %i.bh, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 3 uses
  %i.bi = load i64, ptr %.sroa.0.05.i, align 4    ; 3 uses
  %.sroa.03.0.extract.trunc.i.i7 = trunc i64 %i.bi to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i8 = lshr i64 %i.bi, 32
  %.sroa.5.0.extract.trunc.i.i9 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i8 to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, %.lr.ph.i6
  %.sroa.06.0.i.i10 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i11, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15 ] ; 6 uses
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -8 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !130 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.bk, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16, label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16: ; preds = %bb.g
  %.phi.trans.insert.i.i17 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -4
  %.pre.i.i18 = load i32, ptr %.phi.trans.insert.i.i17, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.bl = icmp slt i32 %i.bj, %.sroa.03.0.extract.trunc.i.i7
  br i1 %i.bl, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12: ; preds = %bb.h
  %i.bm = getelementptr inbounds i8, ptr %.sroa.06.0.i.i10, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !132 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, %.sroa.5.0.extract.trunc.i.i9
  br i1 %i.bo, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i15: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16
  %i.bp = phi i32 [ %.pre.i.i18, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i16 ], [ %i.bn, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12 ]
  store i32 %i.bj, ptr %.sroa.06.0.i.i10, align 4, !tbaa !130
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i10, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !132
  br label %bb.g, !llvm.loop !217

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i12, %bb.h
  store i64 %i.bi, ptr %.sroa.06.0.i.i10, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.br, %1
  br i1 %.not.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i6, !llvm.loop !219

bb.i:                                             ; preds = %bb.a
  %i.bs = icmp eq ptr %0, %1
  br i1 %i.bs, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.i
  %.sroa.07.017.i20 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not18.i21 = icmp eq ptr %.sroa.07.017.i20, %1
  br i1 %.not18.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.preheader.i19
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i22
  %.sroa.07.020.i23 = phi ptr [ %.sroa.07.017.i20, %.lr.ph.i22 ], [ %.sroa.07.0.i34, %bb.n ] ; 9 uses
  %.pn19.i24 = phi ptr [ %0, %.lr.ph.i22 ], [ %.sroa.07.020.i23, %bb.n ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.07.020.i23, align 4, !tbaa !130 ; 2 uses
  %i.bv = load i32, ptr %0, align 4, !tbaa !130   ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp slt i32 %i.bv, %i.bu
  br i1 %i.bx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25: ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !132
  %i.ca = load i32, ptr %i.bt, align 4, !tbaa !132
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25, %bb.j
  %i.cc = load i64, ptr %.sroa.07.020.i23, align 4
  %i.cd = ptrtoint ptr %.sroa.07.020.i23 to i64
  %i.ce = sub i64 %i.cd, %i.b
  %i.cf = ashr exact i64 %i.ce, 3                 ; 5 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.preheader.i42, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41

.lr.ph.i.i.i.i.i.preheader.i42:                   ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn19.i24, i64 16 ; 2 uses
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i.i43.prol

.lr.ph.i.i.i.i.i.i43.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i42, %.lr.ph.i.i.i.i.i.i43.prol
  %.010.i.i.i.i.i.i44.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i43.prol ], [ %i.cf, %.lr.ph.i.i.i.i.i.preheader.i42 ]
  %.069.i.i.i.i.i.i45.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i43.prol ], [ %i.ch, %.lr.ph.i.i.i.i.i.preheader.i42 ] ; 2 uses
  %.078.i.i.i.i.i.i46.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i43.prol ], [ %.sroa.07.020.i23, %.lr.ph.i.i.i.i.i.preheader.i42 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i43.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i42 ]
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.prol, i64 -8 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.prol, i64 -8 ; 3 uses
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !4
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !130
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46.prol, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45.prol, i64 -4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !132
  %i.co = add nsw i64 %.010.i.i.i.i.i.i44.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i43.prol.loopexit, label %.lr.ph.i.i.i.i.i.i43.prol, !llvm.loop !220

.lr.ph.i.i.i.i.i.i43.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i43.prol, %.lr.ph.i.i.i.i.i.preheader.i42
  %.010.i.i.i.i.i.i44.unr = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.preheader.i42 ], [ %i.co, %.lr.ph.i.i.i.i.i.i43.prol ]
  %.069.i.i.i.i.i.i45.unr = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.preheader.i42 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i43.prol ]
  %.078.i.i.i.i.i.i46.unr = phi ptr [ %.sroa.07.020.i23, %.lr.ph.i.i.i.i.i.preheader.i42 ], [ %i.ci, %.lr.ph.i.i.i.i.i.i43.prol ]
  %i.cp = icmp ult i64 %i.cf, 4
  br i1 %i.cp, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41, label %.lr.ph.i.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i43:                             ; preds = %.lr.ph.i.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i.i43
  %.010.i.i.i.i.i.i44 = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i43 ], [ %.010.i.i.i.i.i.i44.unr, %.lr.ph.i.i.i.i.i.i43.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i45 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i43 ], [ %.069.i.i.i.i.i.i45.unr, %.lr.ph.i.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i46 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i43 ], [ %.078.i.i.i.i.i.i46.unr, %.lr.ph.i.i.i.i.i.i43.prol.loopexit ] ; 8 uses
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -8
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -8
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !4
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !130
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !132
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -16
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !4
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !130
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !132
  %i.dc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -24
  %i.dd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -24
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !4
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !130
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -20
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !132
  %i.di = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -32 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -32 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !4
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !130
  %i.dl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i46, i64 -28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i45, i64 -28
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !132
  %i.do = add nsw i64 %.010.i.i.i.i.i.i44, -4
  %i.dp = icmp sgt i64 %.010.i.i.i.i.i.i44, 4
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i43, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41, !llvm.loop !216

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41: ; preds = %.lr.ph.i.i.i.i.i.i43.prol.loopexit, %.lr.ph.i.i.i.i.i.i43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i40
  store i64 %i.cc, ptr %0, align 4
  br label %bb.n

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i25, %bb.k
  %i.dq = load i64, ptr %.sroa.07.020.i23, align 4 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i27 = trunc i64 %i.dq to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i28 = lshr i64 %i.dq, 32
  %.sroa.5.0.extract.trunc.i.i29 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i28 to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26
  %.sroa.06.0.i.i30 = phi ptr [ %.sroa.07.020.i23, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread16.i26 ], [ %.sroa.0.0.i.i31, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36 ] ; 6 uses
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -8 ; 2 uses
  %i.dr = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !130 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, %.sroa.03.0.extract.trunc.i.i27
  br i1 %i.ds, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37, label %bb.m

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37: ; preds = %bb.l
  %.phi.trans.insert.i.i38 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -4
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36

bb.m:                                             ; preds = %bb.l
  %i.dt = icmp slt i32 %i.dr, %.sroa.03.0.extract.trunc.i.i27
  br i1 %i.dt, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32: ; preds = %bb.m
  %i.du = getelementptr inbounds i8, ptr %.sroa.06.0.i.i30, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !132 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, %.sroa.5.0.extract.trunc.i.i29
  br i1 %i.dw, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i36: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37
  %i.dx = phi i32 [ %.pre.i.i39, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i37 ], [ %i.dv, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32 ]
  store i32 %i.dr, ptr %.sroa.06.0.i.i30, align 4, !tbaa !130
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i30, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !132
  br label %bb.l, !llvm.loop !217

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i32, %bb.m
  store i64 %i.dq, ptr %.sroa.06.0.i.i30, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41
  %.sroa.07.0.i34 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i23, i64 8 ; 2 uses
  %.not.i35 = icmp eq ptr %.sroa.07.0.i34, %1
  br i1 %.not.i35, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.j, !llvm.loop !218

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13, %.preheader.i19, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !130  ; 9 uses
  %i.j = load i32, ptr %i.f, align 4, !tbaa !130  ; 9 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !132
  %i.q = icmp slt i32 %i.n, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.a
  %i.r = load i32, ptr %i.h, align 4, !tbaa !130  ; 6 uses
  %i.s = icmp slt i32 %i.j, %i.r
  br i1 %i.s, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.t = icmp slt i32 %i.r, %i.j
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !132
  %i.w = getelementptr inbounds i8, ptr %1, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !132
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %bb.c
  %i.z = icmp slt i32 %i.i, %i.r
  br i1 %i.z, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
  %i.aa = icmp slt i32 %i.r, %i.i
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !132
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !132
  %i.af = icmp slt i32 %i.ac, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.b
  %i.ag = load i32, ptr %i.h, align 4, !tbaa !130 ; 6 uses
  %i.ah = icmp slt i32 %i.i, %i.ag
  br i1 %i.ah, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
  %i.ai = icmp slt i32 %i.ag, %i.i
  br i1 %i.ai, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !132
  %i.al = getelementptr inbounds i8, ptr %1, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !132
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %bb.e
  %i.ao = icmp slt i32 %i.j, %i.ag
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
  %i.ap = icmp slt i32 %i.ag, %i.j
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !132
  %i.as = getelementptr inbounds i8, ptr %1, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !132
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
  %.sink46.i = phi i32 [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ]
  %.sink45.i = phi ptr [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i ], [ %i.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i ], [ %i.g, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i ], [ %i.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i ] ; 2 uses
  %i.av = load i32, ptr %0, align 4, !tbaa !4
  store i32 %.sink46.i, ptr %0, align 4, !tbaa !4
  store i32 %i.av, ptr %.sink45.i, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink45.i, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !4
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !4
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
  %.sroa.011.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %i.bv, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.ba = load i32, ptr %0, align 4, !tbaa !130   ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, %bb.g
  %.sroa.011.1.i = phi ptr [ %.sroa.011.0.i, %bb.g ], [ %i.bi, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10 ] ; 8 uses
  %i.bb = load i32, ptr %.sroa.011.1.i, align 4, !tbaa !130 ; 3 uses
  %i.bc = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9: ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !132
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !132
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i10: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i9, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.h, !llvm.loop !221

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.preheader ], [ %.sroa.0.1.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge ] ; 3 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 5 uses
  %i.bj = load i32, ptr %.sroa.0.1.i, align 4, !tbaa !130 ; 3 uses
  %i.bk = icmp slt i32 %i.ba, %i.bj
  br i1 %i.bk, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  %i.bl = icmp slt i32 %i.bj, %i.ba
  br i1 %i.bl, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i: ; preds = %bb.j
  %i.bm = load i32, ptr %i.aw, align 4, !tbaa !132
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !132
  %i.bp = icmp slt i32 %i.bm, %i.bo
  br i1 %i.bp, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i.backedge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread14.i, !llvm.loop !222

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i, %bb.j
  %i.bq = icmp ult ptr %.sroa.011.1.i, %.sroa.0.1.i
  br i1 %i.bq, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  store i32 %i.bj, ptr %.sroa.011.1.i, align 4, !tbaa !4
  store i32 %i.bb, ptr %.sroa.0.1.i, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !4
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !4
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  br label %bb.g, !llvm.loop !223

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread15.i
  ret ptr %.sroa.011.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.f, align 4 ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.g, ptr %i.f, align 4, !tbaa !130
  %i.h = load i32, ptr %i.e, align 4, !tbaa !4
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !132
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.a                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = sdiv i64 %i.m, 2
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i
  %.039.i.i = phi i64 [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = shl i64 %.039.i.i, 1                     ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 3 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !130  ; 4 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !130  ; 3 uses
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.x = icmp slt i32 %i.v, %i.u
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ac = icmp slt i32 %i.z, %i.ab
  %cond.fr.i.i = freeze i1 %i.ac
  br i1 %cond.fr.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %.lr.ph.i.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %bb.c
  %i.ad = phi i32 [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.u, %bb.c ]
  %i.ae = phi i64 [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i.i ], [ %i.q, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ], [ %i.q, %bb.c ] ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i.i ; 2 uses
  store i32 %i.ad, ptr %i.ag, align 4, !tbaa !130
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !132
  %i.ak = icmp slt i64 %i.ae, %i.n
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !224

._crit_edge.i.i:                                  ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i.i ] ; 5 uses
  %i.al = and i64 %i.k, 8
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.an = add nsw i64 %i.l, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i, %i.ao
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = shl nsw i64 %.0.lcssa.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  %i.au = load <2 x i32>, ptr %i.as, align 4, !tbaa !4
  store <2 x i32> %i.au, ptr %i.at, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %.1.i.i = phi i64 [ %i.ar, %bb.e ], [ %.0.lcssa.i.i, %bb.d ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i = trunc i64 %.sroa.02.0.copyload.i to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %.sroa.02.0.copyload.i, 32
  %.sroa.3.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i.i to i32
  %i.av = icmp sgt i64 %.1.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i
  %.022.i.i.i = phi i64 [ %.0923.i.i78.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %.0923.in.i.i.i = add nsw i64 %.022.i.i.i, -1
  %.0923.i.i78.i = lshr i64 %.0923.in.i.i.i, 1    ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0923.i.i78.i ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !130 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.ay, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.az = icmp sgt i32 %i.ax, %.sroa.012.0.extract.trunc.i.i.i
  br i1 %i.az, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !132 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %.sroa.3.0.extract.trunc.i.i.i
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i
  %i.bd = phi i32 [ %.pre.i.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i.i ], [ %i.bb, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.022.i.i.i ; 2 uses
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !130
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !132
  %.not.i = icmp eq i64 %.0923.i.i78.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !225

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi i64 [ %.1.i.i, %bb.f ], [ %.022.i.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i.i ], [ 0, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i.i ], [ %.022.i.i.i, %bb.g ]
  %i.bg = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i64 %.sroa.02.0.copyload.i, ptr %i.bg, align 4
  %i.bh = icmp sgt i64 %i.k, 8
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.bc, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09
  %.sroa.02.0.copyload = load i64, ptr %i.p, align 4 ; 3 uses
  %i.q = icmp slt i64 %.09, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i
  %.039.i = phi i64 [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ], [ %.09, %bb.c ] ; 2 uses
  %i.r = shl i64 %.039.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !130  ; 4 uses
  %i.x = load i32, ptr %i.v, align 4, !tbaa !130  ; 3 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !132
  %i.ae = icmp slt i32 %i.ab, %i.ad
  %cond.fr.i = freeze i1 %i.ae
  br i1 %cond.fr.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %.lr.ph.i
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.d
  %i.af = phi i32 [ %i.x, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.w, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.w, %bb.d ]
  %i.ag = phi i64 [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %i.s, %bb.d ] ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %0, i64 %.039.i ; 2 uses
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !130
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !132
  %i.am = icmp slt i64 %i.ag, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !224

._crit_edge.i:                                    ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %i.ag, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread37.i ] ; 2 uses
  %i.an = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.ao = load <2 x i32>, ptr %i.n, align 4, !tbaa !4
  store <2 x i32> %i.ao, ptr %i.o, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i = trunc i64 %.sroa.02.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.3.0.extract.trunc.i.i = trunc nuw i64 %.sroa.3.0.extract.shift.i.i to i32
  %i.ap = icmp sgt i64 %.1.i, %.09
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i
  %.022.i.i = phi i64 [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.1.i, %bb.f ] ; 4 uses
  %.0923.in.i.i = add nsw i64 %.022.i.i, -1
  %.0923.i.i = sdiv i64 %.0923.in.i.i, 2          ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0923.i.i ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !130 ; 3 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.as, label %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i, label %bb.g

.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !4
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.at = icmp sgt i32 %i.ar, %.sroa.012.0.extract.trunc.i.i
  br i1 %i.at, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !132 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.sroa.3.0.extract.trunc.i.i
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i
  %i.ax = phi i32 [ %.pre.i.i, %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i.i ], [ %i.av, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %.022.i.i ; 2 uses
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !130
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !132
  %i.ba = icmp sgt i64 %.0923.i.i, %.09
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, !llvm.loop !225

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i, %bb.f
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.f ], [ %.022.i.i, %bb.g ], [ %.0923.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i.i ], [ %.022.i.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i.i ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i64 %.sroa.02.0.copyload, ptr %i.bb, align 4
  %.not = icmp eq i64 %.09, 0
  %i.bc = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !227

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !14, i64 8, !6, i64 16}
!14 = !{!"long", !6, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!17, !5, i64 24}
!17 = !{!"_ZTS4Mesh", !18, i64 0, !19, i64 8, !20, i64 16, !5, i64 24, !21, i64 32, !26, i64 56, !26, i64 57, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136, !27, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !27, i64 168, !27, i64 176, !27, i64 184, !27, i64 192, !27, i64 200, !27, i64 208, !27, i64 216, !27, i64 224, !27, i64 232, !28, i64 240, !28, i64 248, !28, i64 256, !28, i64 264, !28, i64 272, !28, i64 280, !28, i64 288, !25, i64 296, !25, i64 304, !25, i64 312, !25, i64 320, !25, i64 328, !25, i64 336, !25, i64 344, !25, i64 352, !25, i64 360, !28, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !5, i64 400, !29, i64 408, !29, i64 432, !29, i64 456, !29, i64 480, !5, i64 504, !29, i64 512, !29, i64 536, !5, i64 560, !29, i64 568, !29, i64 592}
!18 = !{!"p1 _ZTS7GenMesh", !11, i64 0}
!19 = !{!"p1 _ZTS7WriteXY", !11, i64 0}
!20 = !{!"p1 _ZTS10ExportGold", !11, i64 0}
!21 = !{!"_ZTSSt6vectorIdSaIdEE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 double", !11, i64 0}
!26 = !{!"bool", !6, i64 0}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!"p1 _ZTS7double2", !11, i64 0}
!29 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!33 = !{!13, !10, i64 0}
!34 = distinct !{null}
!35 = !{!24, !25, i64 0}
!36 = !{!24, !25, i64 16}
!37 = !{!25, !25, i64 0}
!38 = !{!24, !25, i64 8}
!39 = !{!17, !26, i64 56}
!40 = !{!17, !26, i64 57}
!41 = !{!17, !18, i64 0}
!42 = !{!17, !19, i64 8}
!43 = !{!17, !20, i64 16}
!44 = !{!32, !27, i64 0}
!45 = !{!32, !27, i64 16}
!46 = !{!47, !28, i64 8}
!47 = !{!"_ZTSNSt12_Vector_baseI7double2SaIS0_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!48 = !{!47, !28, i64 0}
!49 = !{!17, !5, i64 60}
!50 = !{!32, !27, i64 8}
!51 = !{!17, !5, i64 68}
!52 = !{!17, !5, i64 72}
!53 = !{!17, !5, i64 76}
!54 = !{!17, !27, i64 232}
!55 = !{!27, !27, i64 0}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!17, !28, i64 240}
!58 = !{!17, !5, i64 64}
!59 = !{!17, !28, i64 248}
!60 = !{!17, !28, i64 256}
!61 = !{!17, !28, i64 288}
!62 = !{!17, !28, i64 264}
!63 = !{!17, !28, i64 272}
!64 = !{!17, !28, i64 280}
!65 = !{!17, !25, i64 296}
!66 = !{!17, !25, i64 304}
!67 = !{!17, !25, i64 312}
!68 = !{!17, !25, i64 320}
!69 = !{!17, !25, i64 328}
!70 = !{!17, !25, i64 336}
!71 = !{!17, !25, i64 344}
!72 = !{!17, !25, i64 352}
!73 = !{!17, !25, i64 360}
!74 = !{!17, !28, i64 368}
!75 = !{!17, !25, i64 376}
!76 = !{!17, !25, i64 392}
!77 = !{!17, !25, i64 384}
!78 = !{!17, !5, i64 504}
!79 = !{!17, !5, i64 80}
!80 = !{!17, !5, i64 400}
!81 = distinct !{!81, !82, !83, !84}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = !{!86, !86, i64 0}
!86 = !{!"double", !6, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !82}
!90 = distinct !{!90, !82, !83}
!91 = !{!17, !27, i64 104}
!92 = !{!17, !27, i64 88}
!93 = !{!17, !27, i64 96}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZmiRK7double2S1_: argument 0"}
!96 = distinct !{!96, !"_ZmiRK7double2S1_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZmiRK7double2S1_: argument 0"}
!99 = distinct !{!99, !"_ZmiRK7double2S1_"}
!100 = distinct !{!100, !82}
!101 = distinct !{!101, !82}
!102 = distinct !{!102, !82}
!103 = !{!47, !28, i64 16}
!104 = !{!17, !27, i64 120}
!105 = !{!17, !27, i64 128}
!106 = distinct !{!106, !82}
!107 = distinct !{!107, !82, !108}
!108 = !{!"llvm.loop.peeled.count", i32 2}
!109 = !{!110, !111, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !11, i64 0}
!112 = !{!110, !111, i64 16}
!113 = !{!110, !111, i64 8}
!114 = !{!17, !27, i64 112}
!115 = distinct !{!115, !82}
!116 = distinct !{!116, !82}
!117 = distinct !{!117, !82}
!118 = distinct !{!118, !82}
!119 = distinct !{!119, !82}
!120 = distinct !{!120, !82}
!121 = !{!17, !5, i64 560}
!122 = !{!17, !27, i64 136}
!123 = !{!17, !27, i64 144}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !82, !83, !84}
!130 = !{!131, !5, i64 0}
!131 = !{!"_ZTSSt4pairIiiE", !5, i64 0, !5, i64 4}
!132 = !{!131, !5, i64 4}
!133 = distinct !{!133, !88}
!134 = distinct !{!134, !82, !83}
!135 = distinct !{!135, !82, !136}
!136 = !{!"llvm.loop.peeled.count", i32 1}
!137 = !{!17, !5, i64 152}
!138 = !{!17, !27, i64 200}
!139 = !{!17, !27, i64 208}
!140 = !{!17, !27, i64 216}
!141 = distinct !{!141, !88}
!142 = !{!17, !5, i64 164}
!143 = !{!17, !27, i64 224}
!144 = !{!17, !5, i64 156}
!145 = !{!17, !27, i64 168}
!146 = !{!17, !27, i64 192}
!147 = !{!17, !27, i64 176}
!148 = distinct !{!148, !82}
!149 = distinct !{!149, !88}
!150 = !{!17, !5, i64 160}
!151 = !{!17, !27, i64 184}
!152 = distinct !{!152, !82}
!153 = !{!14, !14, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"vtable pointer", !7, i64 0}
!156 = !{!157, !168, i64 240}
!157 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !158, i64 0, !166, i64 216, !6, i64 224, !26, i64 225, !167, i64 232, !168, i64 240, !169, i64 248, !170, i64 256}
!158 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !159, i64 24, !160, i64 28, !160, i64 32, !161, i64 40, !162, i64 48, !6, i64 64, !5, i64 192, !163, i64 200, !164, i64 208}
!159 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!160 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!161 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!162 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !14, i64 8}
!163 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!164 = !{!"_ZTSSt6locale", !165, i64 0}
!165 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!166 = !{!"p1 _ZTSSo", !11, i64 0}
!167 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!168 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!169 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!170 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!171 = !{!172, !6, i64 56}
!172 = !{!"_ZTSSt5ctypeIcE", !173, i64 0, !174, i64 16, !26, i64 24, !27, i64 32, !27, i64 40, !175, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!173 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!174 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!175 = !{!"p1 short", !11, i64 0}
!176 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!177 = distinct !{!177, !82, !83, !84}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZplRK7double2S1_: argument 0"}
!180 = distinct !{!180, !"_ZplRK7double2S1_"}
!181 = distinct !{!181, !82}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZmiRK7double2S1_: argument 0"}
!184 = distinct !{!184, !"_ZmiRK7double2S1_"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZmiRK7double2S1_: argument 0"}
!187 = distinct !{!187, !"_ZmiRK7double2S1_"}
!188 = !{i8 0, i8 2}
!189 = !{}
!190 = !{!191, !86, i64 0}
!191 = !{!"_ZTS7double2", !86, i64 0, !86, i64 8}
!192 = distinct !{!192, !82}
!193 = !{!191, !86, i64 8}
!194 = distinct !{!194, !82}
!195 = distinct !{!195, !82}
!196 = distinct !{!196, !82}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZmiRK7double2S1_: argument 0"}
!199 = distinct !{!199, !"_ZmiRK7double2S1_"}
!200 = distinct !{!200, !82}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZmiRK7double2S1_: argument 0"}
!203 = distinct !{!203, !"_ZmiRK7double2S1_"}
!204 = distinct !{!204, !82}
!205 = distinct !{!205, !82, !83, !84}
!206 = distinct !{!206, !82, !84, !83}
!207 = distinct !{!207, !82}
!208 = distinct !{!208, !82}
!209 = distinct !{!209, !82}
!210 = distinct !{!210, !82}
!211 = distinct !{!211, !82}
!212 = distinct !{!212, !82}
!213 = distinct !{!213, !82}
!214 = distinct !{!214, !82}
!215 = distinct !{!215, !88}
!216 = distinct !{!216, !82}
!217 = distinct !{!217, !82}
!218 = distinct !{!218, !82}
!219 = distinct !{!219, !82}
!220 = distinct !{!220, !88}
!221 = distinct !{!221, !82}
!222 = distinct !{!222, !82}
!223 = distinct !{!223, !82}
!224 = distinct !{!224, !82}
!225 = distinct !{!225, !82}
!226 = distinct !{!226, !82}
!227 = distinct !{!227, !82}
end_hunk_0

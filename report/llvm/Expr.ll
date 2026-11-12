Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Expr?download=true
inline.NumInlined: 7608
inline.NumDeleted: 4168
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5clang14PredefinedExpr11ComputeNameB5cxx11ENS_19PredefinedIdentKindEPKNS_4DeclEb:bb.a
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ep = load ptr, ptr %i.dh, align 8, !tbaa !798, !nonnull !139, !align !189 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !176 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !177 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.et, ptr %0, align 8, !tbaa !162
  %i.eu = icmp eq ptr %i.eq, null
  %i.ev = icmp ne i64 %i.es, 0
  %or.cond.i.i.i251 = and i1 %i.eu, %i.ev
  br i1 %or.cond.i.i.i251, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.169) #33
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 %i.es, ptr %i.d, align 8, !tbaa !91
  %i.ew = icmp ugt i64 %i.es, 15
  br i1 %i.ew, label %bb.an, label %._crit_edge.i.i.i.i252

bb.an:                                            ; preds = %bb.am
  %i.ex = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #30 ; 2 uses
  store ptr %i.ex, ptr %0, align 8, !tbaa !179
  %i.ey = load i64, ptr %i.d, align 8, !tbaa !91
  store i64 %i.ey, ptr %i.et, align 8, !tbaa !39
  br label %._crit_edge.i.i.i.i252

._crit_edge.i.i.i.i252:                           ; preds = %bb.an, %bb.am
  %i.ez = phi ptr [ %i.ex, %bb.an ], [ %i.et, %bb.am ] ; 2 uses
  switch i64 %i.es, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit253
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i252
  %i.fa = load i8, ptr %i.eq, align 1, !tbaa !39
  store i8 %i.fa, ptr %i.ez, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit253

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i252
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ez, ptr align 1 %i.eq, i64 %i.es, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit253: ; preds = %._crit_edge.i.i.i.i252, %bb.ao, %bb.ap
  %i.fb = load i64, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !164
  %i.fd = load ptr, ptr %0, align 8, !tbaa !179
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fb
  store i8 0, ptr %i.fe, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ff = load ptr, ptr %7, align 8, !tbaa !176   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.da
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit254, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit253
  call void @free(ptr noundef %i.ff) #30
  br label %_ZN4llvm11SmallVectorIcLj256EED2Ev.exit254

_ZN4llvm11SmallVectorIcLj256EED2Ev.exit254:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit253, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %.loopexit

bb.ar:                                            ; preds = %bb.aa
  %i.fh = add nsw i32 %i.cm, -41
  %i.fi = icmp ult i32 %i.fh, -6
  br i1 %i.fi, label %.critedge228, label %switch.edge

switch.edge:                                      ; preds = %bb.ar
  %i.fj = getelementptr inbounds nuw i8, ptr %i.h, i64 2600 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !570, !nonnull !139, !align !189 ; 2 uses
  %i.fl = icmp eq i32 %1, 1                       ; 2 uses
  %or.cond = icmp ult i32 %1, 2
  %i.fm = load i64, ptr %i.fk, align 8
  %.fr543 = freeze i64 %i.fm
  %i.fn = and i64 %.fr543, 32
  %.not193 = icmp eq i64 %i.fn, 0
  %i.fo = icmp eq i32 %1, 2
  %i.fp = icmp ne i32 %1, 7                       ; 2 uses
  %i.fq = and i32 %1, -4
  %switch = icmp ne i32 %i.fq, 4
  %or.cond11 = select i1 %.not193, i1 %or.cond, i1 %i.fo
  %or.cond225 = select i1 %.tr560, i1 %or.cond11, i1 %switch
  br i1 %or.cond225, label %bb.as, label %bb.at

bb.as:                                            ; preds = %switch.edge
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr559.a, i64 40
  tail call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.fr) #30
  br label %.loopexit

bb.at:                                            ; preds = %switch.edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %i.fs, ptr %11, align 8, !tbaa !176
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 0, ptr %i.ft, align 8, !tbaa !177
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 256, ptr %i.fu, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 2, ptr %i.fv, align 8, !tbaa !168
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i8 0, ptr %i.fw, align 8, !tbaa !169
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 1, ptr %i.fx, align 4, !tbaa !170
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %12, align 8, !tbaa !172
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %11, ptr %i.fz, align 8, !tbaa !793
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef null, i64 noundef 0, i32 noundef 0) #30
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr559.a, i64 28 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4
  %i.gc = and i32 %i.gb, 124
  %.not483 = icmp eq i32 %i.gc, 36
  br i1 %.not483, label %bb.au, label %_ZN4llvm11raw_ostreamlsEPKc.exit262

bb.au:                                            ; preds = %bb.at
  %i.gd = load ptr, ptr %.tr559.a, align 8, !tbaa !172
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = call noundef ptr %i.gf(ptr noundef nonnull align 8 dereferenceable(168) %.tr559.a) #30, !inline_history !772 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 80
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = and i32 %i.gi, 786432
  %or.cond.not.i = icmp eq i32 %i.gj, 0
  br i1 %or.cond.not.i, label %.split, label %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit

.split:                                           ; preds = %bb.au
  %i.gk = call noundef i32 @_ZNK5clang13CXXMethodDecl23size_overridden_methodsEv(ptr noundef nonnull align 8 dereferenceable(168) %i.gg) #30
  %i.gl = icmp ne i32 %i.gk, 0
  %i.gm = and i1 %i.fp, %i.gl
  br i1 %i.gm, label %bb.av, label %_ZN4llvm11raw_ostreamlsEPKc.exit259

_ZNK5clang13CXXMethodDecl9isVirtualEv.exit:       ; preds = %bb.au
  br i1 %i.fp, label %bb.av, label %_ZN4llvm11raw_ostreamlsEPKc.exit259

bb.av:                                            ; preds = %.split, %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !187
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !188 ; 2 uses
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = icmp ult i64 %i.gt, 8
  br i1 %i.gu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.9, i64 noundef 8) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit259

bb.ax:                                            ; preds = %bb.av
  store i64 2336349463791167862, ptr %i.gq, align 1
  %i.gw = load ptr, ptr %i.gp, align 8, !tbaa !188
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.gx, ptr %i.gp, align 8, !tbaa !188
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit259

_ZN4llvm11raw_ostreamlsEPKc.exit259:              ; preds = %.split, %bb.ax, %bb.aw, %_ZNK5clang13CXXMethodDecl9isVirtualEv.exit
  %i.gy = call noundef zeroext i1 @_ZNK5clang13CXXMethodDecl8isStaticEv(ptr noundef nonnull align 8 dereferenceable(168) %.tr559.a) #30
  %.not16 = xor i1 %i.gy, true
  %or.cond18 = or i1 %.tr560, %.not16
  br i1 %or.cond18, label %_ZN4llvm11raw_ostreamlsEPKc.exit262, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit259
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !187
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !188 ; 2 uses
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = sub i64 %i.hd, %i.he
  %i.hg = icmp ult i64 %i.hf, 7
  br i1 %i.hg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.hh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.10, i64 noundef 7) #30 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit262

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.hc, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, i64 7, i1 false)
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !188
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 7
  store ptr %i.hj, ptr %i.hb, align 8, !tbaa !188
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit262

_ZN4llvm11raw_ostreamlsEPKc.exit262:              ; preds = %bb.ba, %bb.az, %_ZN4llvm11raw_ostreamlsEPKc.exit259, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.hk = load ptr, ptr %i.fj, align 8, !tbaa !570, !nonnull !139, !align !189 ; 7 uses
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = lshr i64 %i.hl, 3
  %i.hn = and i64 %i.hm, 512
  %i.ho = lshr i64 %i.hl, 5
  %i.hp = and i64 %i.ho, 8388608
  %28 = or disjoint i64 %i.hn, %i.hp
  %i.hq = or disjoint i64 %28, 4472834
  %29 = load i64, ptr %i.hk, align 8              ; 2 uses
  %i.hr = and i64 %29, 8192
  %.not.i263 = icmp eq i64 %i.hr, 0
  %i.hs = shl i64 %29, 21
  %i.ht = and i64 %i.hs, 16777216
  %i.hu = select i1 %.not.i263, i64 %i.ht, i64 16777216
  %i.hv = or disjoint i64 %i.hu, %i.hq
  %i.hw = load i64, ptr %i.hk, align 8            ; 4 uses
  %i.hx = shl i64 %i.hw, 13
  %i.hy = and i64 %i.hx, 33554432
  %i.hz = or disjoint i64 %i.hv, %i.hy
  %i.ia = shl i64 %i.hw, 26
  %i.ib = and i64 %i.ia, 67108864
  %30 = shl i64 %i.hw, 14
  %31 = and i64 %30, 134217728
  %32 = or disjoint i64 %i.hz, %i.ib
  %i.ic = shl i64 %i.hw, 27
  %i.id = and i64 %i.ic, 268435456
  %33 = load i64, ptr %i.hk, align 8              ; 3 uses
  %i.ie = shl i64 %33, 17
  %i.if = and i64 %i.ie, 536870912
  %i.ig = shl i64 %33, 17
  %i.ih = and i64 %i.ig, 1073741824
  %34 = shl i64 %33, 4
  %35 = and i64 %34, 8589934592
  %36 = load i64, ptr %i.hk, align 8              ; 2 uses
  %i.ii = and i64 %36, 128
  %.not17.i = icmp eq i64 %i.ii, 0
  %i.ij = shl i64 %36, 4
  %i.ik = and i64 %i.ij, 17179869184
  %i.il = xor i64 %i.ik, 112201725640704
  %i.im = select i1 %.not17.i, i64 112184545771520, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.io = load i64, ptr %i.in, align 8
  %i.ip = shl i64 %i.io, 7
  %i.iq = and i64 %i.ip, 140737488355328
  %.masked.masked.masked.masked.masked = or i64 %32, %31
  %.masked549.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked, %i.id
  %.masked.masked.masked = or i64 %.masked549.masked.masked.masked, %i.if
  %.masked552.masked = or i64 %.masked.masked.masked, %i.ih
  %.masked = or i64 %.masked552.masked, %35
  %i.ir = or i64 %.masked, %i.im
  %i.is = or i64 %i.ir, %i.iq
  %i.it = xor i64 %i.is, 1610612736               ; 2 uses
  store i64 %i.it, ptr %13, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVZN5clang14PredefinedExpr11ComputeNameB5cxx11ENS_19PredefinedIdentKindEPKNS_4DeclEbE15PrettyCallbacks, i64 16), ptr %14, align 8, !tbaa !172
  %i.iv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hk, ptr %i.iv, align 8, !tbaa !571
  store ptr %14, ptr %i.iu, align 8, !tbaa !799
  %or.cond20 = and i1 %i.fl, %.tr560
  br i1 %or.cond20, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit262
  %i.iw = load i64, ptr %i.fk, align 8
  %i.ix = shl i64 %i.iw, 4
  %i.iy = and i64 %i.ix, 512
  %i.iz = and i64 %i.it, -872949959344126
  %i.ja = or disjoint i64 %i.iy, %i.iz
  %i.jb = xor i64 %i.ja, 512
  store i64 %i.jb, ptr %13, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4llvm11raw_ostreamlsEPKc.exit262
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.jc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.jc, ptr %15, align 8, !tbaa !162
  %i.jd = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store i64 0, ptr %i.jd, align 8, !tbaa !164
  store i8 0, ptr %i.jc, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 0, ptr %i.je, align 8, !tbaa !168
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i8 0, ptr %i.jf, align 8, !tbaa !169
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 44
  store i32 1, ptr %i.jg, align 4, !tbaa !170
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %16, align 8, !tbaa !172
  %i.ji = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %15, ptr %i.ji, align 8, !tbaa !174
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef null, i64 noundef 0, i32 noundef 0) #30
  %i.jj = call noundef ptr @_ZNK5clang12FunctionDecl31getTemplateInstantiationPatternEb(ptr noundef nonnull align 8 dereferenceable(168) %.tr559.a, i1 noundef zeroext true) #30 ; 2 uses
  %.not196 = icmp eq ptr %i.jj, null
  %spec.select226 = select i1 %.not196, ptr %.tr559.a, ptr %i.jj ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %spec.select226, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.jk, align 8, !tbaa !39 ; 2 uses
  %i.jl = icmp ult i64 %.sroa.0.0.copyload.i, 16
  br i1 %i.jl, label %_ZNK5clang8QualType16getTypePtrOrNullEv.exit.thread, label %_ZNK5clang8QualType16getTypePtrOrNullEv.exit

_ZNK5clang8QualType16getTypePtrOrNullEv.exit:     ; preds = %bb.bc
  %i.jm = and i64 %.sroa.0.0.copyload.i, -16
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load ptr, ptr %i.jn, align 16, !tbaa !45 ; 5 uses
  %.not197 = icmp eq ptr %i.jo, null
  br i1 %.not197, label %_ZNK5clang8QualType16getTypePtrOrNullEv.exit.thread, label %bb.bd

_ZNK5clang8QualType16getTypePtrOrNullEv.exit.thread: ; preds = %bb.bc, %_ZNK5clang8QualType16getTypePtrOrNullEv.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.jp, ptr %0, align 8, !tbaa !162
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.jq, align 8, !tbaa !164
  store i8 0, ptr %i.jp, align 8, !tbaa !39
  br label %bb.ee

bb.bd:                                            ; preds = %_ZNK5clang8QualType16getTypePtrOrNullEv.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.js = load i8, ptr %i.jr, align 16
  %i.jt = add i8 %i.js, -25
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.jt, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %bb.be, label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit

bb.be:                                            ; preds = %bb.bd
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ju, align 8, !tbaa !39
  %i.jv = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.jw = inttoptr i64 %i.jv to ptr
  %i.jx = load ptr, ptr %i.jw, align 16, !tbaa !45
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load i8, ptr %i.jy, align 16
  %i.ka = add i8 %i.jz, -23
  %spec.select.i.i.i.i.i.i.i.i5.i = icmp ult i8 %i.ka, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i, label %bb.bf, label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit

bb.bf:                                            ; preds = %bb.be
  %i.kb = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jo) #30
  br label %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit

_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit: ; preds = %bb.bd, %bb.be, %bb.bf
  %.1.i = phi ptr [ %i.kb, %bb.bf ], [ %i.jo, %bb.bd ], [ null, %bb.be ] ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.tr559.a, i64 80 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 8
  %i.ke = and i32 %i.kd, 2097152
  %.not = icmp eq i32 %i.ke, 0
  br i1 %.not, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.kg = load i8, ptr %i.kf, align 16
  %i.kh = icmp eq i8 %i.kg, 24
  %spec.select.i.i266 = select i1 %i.kh, ptr %.1.i, ptr null
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit
  %.0169 = phi ptr [ %spec.select.i.i266, %bb.bg ], [ null, %_ZNK5clang4Type5getAsINS_12FunctionTypeEEEPKT_v.exit ] ; 5 uses
  %i.ki = and i32 %1, -2
  %or.cond22 = icmp eq i32 %i.ki, 4               ; 2 uses
  br i1 %or.cond22, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.kk = load i64, ptr %i.kj, align 16
  %i.kl = lshr i64 %i.kk, 34                      ; 2 uses
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = and i32 %i.km, 63                       ; 2 uses
  %i.ko = icmp samesign ult i32 %i.kn, 9
  %switch.maskindex = trunc nuw nsw i32 %i.kn to i16
  %switch.shifted = lshr i16 287, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond555 = select i1 %i.ko, i1 %switch.lobit, i1 false
  br i1 %or.cond555, label %switch.lookup, label %.thread440

switch.lookup:                                    ; preds = %bb.bi
  %i.kp = and i64 %i.kl, 63
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang14PredefinedExpr11ComputeNameB5cxx11ENS_19PredefinedIdentKindEPKNS_4DeclEb, i64 %i.kp
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.kq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull %switch.load) ; 0 uses
  br label %.thread440

.thread440:                                       ; preds = %bb.bi, %switch.lookup
  call void @_ZNK5clang9NamedDecl18printQualifiedNameERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(48) %.tr559.a, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(16) %13) #30
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bh
  call void @_ZNK5clang9NamedDecl18printQualifiedNameERN4llvm11raw_ostreamERKNS_14PrintingPolicyE(ptr noundef nonnull align 8 dereferenceable(48) %.tr559.a, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(16) %13) #30
  br i1 %i.fl, label %bb.bk, label %bb.bq

bb.bk:                                            ; preds = %bb.bj
  %i.kr = load ptr, ptr %15, align 8, !tbaa !179
  %i.ks = load i64, ptr %i.jd, align 8, !tbaa !164
  %i.kt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.kr, i64 noundef %i.ks) #30 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.ku = load ptr, ptr %11, align 8, !tbaa !176, !noalias !800 ; 3 uses
  %i.kv = load i64, ptr %i.ft, align 8, !tbaa !177, !noalias !800 ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.kw, ptr %0, align 8, !tbaa !162, !alias.scope !800
  %i.kx = icmp eq ptr %i.ku, null
  %i.ky = icmp ne i64 %i.kv, 0
  %or.cond.i.i267 = and i1 %i.kx, %i.ky
  br i1 %or.cond.i.i267, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.169) #33
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30, !noalias !800
  store i64 %i.kv, ptr %i.c, align 8, !tbaa !91, !noalias !800
  %i.kz = icmp ugt i64 %i.kv, 15
  br i1 %i.kz, label %bb.bn, label %._crit_edge.i.i.i268

bb.bn:                                            ; preds = %bb.bm
  %i.la = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #30 ; 2 uses
  store ptr %i.la, ptr %0, align 8, !tbaa !179, !alias.scope !800
  %i.lb = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !800
  store i64 %i.lb, ptr %i.kw, align 8, !tbaa !39, !alias.scope !800
  br label %._crit_edge.i.i.i268

._crit_edge.i.i.i268:                             ; preds = %bb.bn, %bb.bm
  %i.lc = phi ptr [ %i.la, %bb.bn ], [ %i.kw, %bb.bm ] ; 2 uses
  switch i64 %i.kv, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %_ZNK4llvm11SmallStringILj256EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit269
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i268
  %i.ld = load i8, ptr %i.ku, align 1, !tbaa !39
  store i8 %i.ld, ptr %i.lc, align 1, !tbaa !39
  br label %_ZNK4llvm11SmallStringILj256EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit269

bb.bp:                                            ; preds = %._crit_edge.i.i.i268
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lc, ptr align 1 %i.ku, i64 %i.kv, i1 false)
  br label %_ZNK4llvm11SmallStringILj256EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit269

_ZNK4llvm11SmallStringILj256EEcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit269: ; preds = %._crit_edge.i.i.i268, %bb.bo, %bb.bp
  %i.le = load i64, ptr %i.c, align 8, !tbaa !91, !noalias !800 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.le, ptr %i.lf, align 8, !tbaa !164, !alias.scope !800
  %i.lg = load ptr, ptr %0, align 8, !tbaa !179, !alias.scope !800
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.le
  store i8 0, ptr %i.lh, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30, !noalias !800
  br label %bb.ee

bb.bq:                                            ; preds = %.thread440, %bb.bj
  %i.li = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !187
  %i.lk = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 9 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !188 ; 2 uses
  %i.lm = icmp eq ptr %i.lj, %i.ll
  br i1 %i.lm, label %bb.br, label %bb.bs

end_hunk_0
begin_hunk_1_@_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEvJEE5VisitEPKNS_4StmtE:bb.a

bb.we:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wf:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wg:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wh:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wi:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wj:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wk:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wl:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wm:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wn:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wo:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wp:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wq:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wr:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.ws:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.tr488), !inline_history !1142
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wt:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wu:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wv:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.ww:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wx:                                            ; preds = %.critedge
  tail call fastcc void @_ZN12_GLOBAL__N_116SideEffectFinder13VisitDeclStmtEPKN5clang8DeclStmtE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wy:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.wz:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xa:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xb:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xc:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xd:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xe:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xf:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xg:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xh:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

bb.xi:                                            ; preds = %.critedge
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_116SideEffectFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr488)
  br label %_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372

_ZN12_GLOBAL__N_116SideEffectFinder9VisitExprEPKN5clang4ExprE.exit372: ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %bb.eo, %bb.en, %bb.em, %bb.ek, %bb.ej, %bb.eh, %bb.eg, %bb.ee, %bb.ed, %bb.eb, %bb.ea, %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.ds, %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.dg, %bb.df, %bb.dd, %bb.dc, %bb.da, %bb.cz, %bb.cv, %bb.cu, %bb.cs, %bb.cr, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.cw, %bb.db, %bb.de, %bb.dh, %bb.dk, %bb.dn, %bb.dq, %bb.dt, %bb.dw, %bb.dz, %bb.ec, %bb.ef, %bb.ei, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bp, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ba, %bb.ax, %bb.au, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e, %bb.el, %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rx, %bb.rw, %bb.rv, %bb.ru, %bb.rt, %bb.rs, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re, %bb.rd, %bb.rc, %bb.rb, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.or, %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om, %bb.ol, %bb.oj, %bb.oi, %bb.oh, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %bb.iq, %bb.ip, %bb.io, %bb.in, %bb.im, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.xi, %bb.xh, %bb.xg, %bb.xf, %bb.xe, %bb.xd, %bb.xc, %bb.xb, %bb.xa, %bb.wz, %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wm, %bb.wl, %bb.wk, %bb.wj, %bb.wi, %bb.wh, %bb.wg, %bb.wf, %bb.we, %bb.wd, %bb.wc, %bb.wb, %bb.wa, %bb.vz, %bb.vy, %bb.vx, %bb.vw, %bb.vv, %bb.vu, %bb.vt, %bb.vs, %bb.vr, %bb.vq, %bb.vp, %bb.vo, %bb.vn, %bb.vm, %bb.vl, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %bb.vf, %bb.ve, %bb.vd, %bb.vc, %bb.vb, %bb.va, %bb.uz, %bb.uy, %bb.ux, %bb.uw, %bb.uv, %bb.uu, %bb.ut, %bb.us, %bb.ur, %bb.uq, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.uk, %bb.uj, %bb.ui, %bb.uh, %bb.ug, %bb.uf, %bb.ue, %bb.ud, %bb.uc, %bb.ub, %bb.ua, %bb.tz, %bb.ty, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %bb.ts, %bb.tr, %bb.tq, %bb.tp, %bb.to, %bb.tn, %bb.tm, %bb.tl, %bb.tk, %bb.tj, %bb.ti, %bb.th, %bb.tg, %bb.tf, %bb.te, %bb.td, %bb.tc, %bb.tb, %bb.ta, %bb.sz, %bb.sy, %bb.sx, %bb.sw, %bb.sv, %bb.su, %bb.st, %bb.ss, %bb.sr, %bb.sq, %bb.sp, %bb.so, %bb.sn, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sg, %bb.ok, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.mu, %bb.ku, %bb.ke, %bb.er, %bb.eq
  ret void
}

declare noundef ptr @_ZNK5clang9FieldDecl21getInClassInitializerEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang13CXXTypeidExpr22isPotentiallyEvaluatedEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang13CXXTypeidExpr12hasNullCheckEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZNK5clang4Expr21getFPFeaturesInEffectERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8                ; 2 uses
  %i.b = and i16 %i.a, 511                        ; 4 uses
  %i.c = add nsw i16 %i.b, -91
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.c, 5
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.b, label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8                ; 2 uses
  %i.e = and i32 %i.d, 2097152
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = lshr i32 %i.d, 19
  %i.h = and i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !134
  %i.k = add nuw nsw i32 %i.h, 1
  %i.l = add i32 %i.k, %i.j
  %i.m = shl i32 %i.l, 3
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.n
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !tbaa !90 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = lshr i32 %i.r, 23
  %i.t = and i32 %i.s, 3                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 3
  %spec.store.select.i.i.i = select i1 %i.u, i32 2, i32 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load i64, ptr %i.v, align 8
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = and i32 %i.y, 4                          ; 2 uses
  %i.aa = lshr i32 %i.r, 19
  %i.ab = and i32 %i.aa, 192
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = lshr i64 %i.ad, 36
  %i.af = trunc nuw nsw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 32256
  %i.ah = icmp eq i32 %spec.store.select.i.i.i, 1
  %.not3.i.i.i.i = icmp ne i32 %i.z, 0
  %or.cond.not16.i.i.i = select i1 %i.ah, i1 %.not3.i.i.i.i, i1 false
  %i.ai = and i32 %i.r, 100663296
  %i.aj = icmp eq i32 %i.ai, 67108864
  %or.cond15.i.i.i = select i1 %or.cond.not16.i.i.i, i1 %i.aj, i1 false
  %masksel.i.i.i = select i1 %or.cond15.i.i.i, i32 256, i32 0
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.al = load i64, ptr %i.ak, align 8
  %sh.diff.i.i.i = lshr i64 %i.al, 23
  %tr.sh.diff.i.i.i = trunc i64 %sh.diff.i.i.i to i32
  %i.am = and i32 %tr.sh.diff.i.i.i, 29360128
  %i.an = or disjoint i32 %i.ab, %i.ag
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = or disjoint i32 %i.ao, %masksel.i.i.i
  %i.aq = or disjoint i32 %i.ap, %i.z
  %i.ar = or disjoint i32 %i.aq, %spec.store.select.i.i.i
  %i.as = or i32 %i.ar, 56
  %i.at = xor i32 %.sroa.4.0.extract.trunc.i, -1
  %i.au = and i32 %i.as, %i.at
  %i.av = and i64 %.sroa.4.0.extract.shift.i, %.sroa.0.0.copyload.i.i
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = or i32 %i.au, %i.aw
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ay = tail call i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136) %1) #30
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit: ; preds = %bb.a
  %i.az = icmp eq i16 %i.b, 4
  br i1 %i.az, label %bb.e, label %_ZNK5clang13UnaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit

bb.e:                                             ; preds = %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit
  %i.ba = load i32, ptr %0, align 8
  %i.bb = and i32 %i.ba, 33554432
  %.not.i31 = icmp eq i32 %i.bb, 0
  br i1 %.not.i31, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !90 ; 2 uses
  %.sroa.4.0.extract.shift.i33 = lshr i64 %.sroa.0.0.copyload.i.i32, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i34 = trunc nuw i64 %.sroa.4.0.extract.shift.i33 to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = trunc i64 %i.be to i32                  ; 3 uses
  %i.bg = lshr i32 %i.bf, 23
  %i.bh = and i32 %i.bg, 3                        ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 3
  %spec.store.select.i.i.i35 = select i1 %i.bi, i32 2, i32 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = lshr i64 %i.bk, 57
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 4                        ; 2 uses
  %i.bo = lshr i32 %i.bf, 19
  %i.bp = and i32 %i.bo, 192
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i64 %i.br, 36
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 32256
  %i.bv = icmp eq i32 %spec.store.select.i.i.i35, 1
  %.not3.i.i.i.i36 = icmp ne i32 %i.bn, 0
  %or.cond.not16.i.i.i37 = select i1 %i.bv, i1 %.not3.i.i.i.i36, i1 false
  %i.bw = and i32 %i.bf, 100663296
  %i.bx = icmp eq i32 %i.bw, 67108864
  %or.cond15.i.i.i38 = select i1 %or.cond.not16.i.i.i37, i1 %i.bx, i1 false
  %masksel.i.i.i39 = select i1 %or.cond15.i.i.i38, i32 256, i32 0
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bz = load i64, ptr %i.by, align 8
  %sh.diff.i.i.i40 = lshr i64 %i.bz, 23
  %tr.sh.diff.i.i.i41 = trunc i64 %sh.diff.i.i.i40 to i32
  %i.ca = and i32 %tr.sh.diff.i.i.i41, 29360128
  %i.cb = or disjoint i32 %i.bp, %i.bu
  %i.cc = or disjoint i32 %i.cb, %i.ca
  %i.cd = or disjoint i32 %i.cc, %masksel.i.i.i39
  %i.ce = or disjoint i32 %i.cd, %i.bn
  %i.cf = or disjoint i32 %i.ce, %spec.store.select.i.i.i35
  %i.cg = or i32 %i.cf, 56
  %i.ch = xor i32 %.sroa.4.0.extract.trunc.i34, -1
  %i.ci = and i32 %i.cg, %i.ch
  %i.cj = and i64 %.sroa.4.0.extract.shift.i33, %.sroa.0.0.copyload.i.i32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = or i32 %i.ci, %i.ck
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.cm = tail call i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136) %1) #30
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

_ZNK5clang13UnaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit: ; preds = %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit
  %i.cn = and i16 %i.a, 510
  %spec.select.i.i.i.i.i.i.i.i43 = icmp eq i16 %i.cn, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i43, label %bb.h, label %_ZNK5clang14BinaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit

bb.h:                                             ; preds = %_ZNK5clang13UnaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit
  %i.co = load i32, ptr %0, align 8               ; 2 uses
  %i.cp = and i32 %i.co, 33554432
  %.not.i45 = icmp eq i32 %i.cp, 0
  br i1 %.not.i45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = and i32 %i.co, 511
  %i.cr = icmp eq i32 %i.cq, 123
  %i.cs = select i1 %i.cr, i64 48, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cs
  %.sroa.0.0.copyload.i.i46 = load i64, ptr %i.ct, align 8, !tbaa !90 ; 2 uses
  %.sroa.4.0.extract.shift.i47 = lshr i64 %.sroa.0.0.copyload.i.i46, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i48 = trunc nuw i64 %.sroa.4.0.extract.shift.i47 to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = trunc i64 %i.cv to i32                  ; 3 uses
  %i.cx = lshr i32 %i.cw, 23
  %i.cy = and i32 %i.cx, 3                        ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 3
  %spec.store.select.i.i.i49 = select i1 %i.cz, i32 2, i32 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = lshr i64 %i.db, 57
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = and i32 %i.dd, 4                        ; 2 uses
  %i.df = lshr i32 %i.cw, 19
  %i.dg = and i32 %i.df, 192
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = lshr i64 %i.di, 36
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = and i32 %i.dk, 32256
  %i.dm = icmp eq i32 %spec.store.select.i.i.i49, 1
  %.not3.i.i.i.i50 = icmp ne i32 %i.de, 0
  %or.cond.not16.i.i.i51 = select i1 %i.dm, i1 %.not3.i.i.i.i50, i1 false
  %i.dn = and i32 %i.cw, 100663296
  %i.do = icmp eq i32 %i.dn, 67108864
  %or.cond15.i.i.i52 = select i1 %or.cond.not16.i.i.i51, i1 %i.do, i1 false
  %masksel.i.i.i53 = select i1 %or.cond15.i.i.i52, i32 256, i32 0
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dq = load i64, ptr %i.dp, align 8
  %sh.diff.i.i.i54 = lshr i64 %i.dq, 23
  %tr.sh.diff.i.i.i55 = trunc i64 %sh.diff.i.i.i54 to i32
  %i.dr = and i32 %tr.sh.diff.i.i.i55, 29360128
  %i.ds = or disjoint i32 %i.dg, %i.dl
  %i.dt = or disjoint i32 %i.ds, %i.dr
  %i.du = or disjoint i32 %i.dt, %masksel.i.i.i53
  %i.dv = or disjoint i32 %i.du, %i.de
  %i.dw = or disjoint i32 %i.dv, %spec.store.select.i.i.i49
  %i.dx = or i32 %i.dw, 56
  %i.dy = xor i32 %.sroa.4.0.extract.trunc.i48, -1
  %i.dz = and i32 %i.dx, %i.dy
  %i.ea = and i64 %.sroa.4.0.extract.shift.i47, %.sroa.0.0.copyload.i.i46
  %i.eb = trunc nuw i64 %i.ea to i32
  %i.ec = or i32 %i.dz, %i.eb
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ed = tail call i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136) %1) #30
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

_ZNK5clang14BinaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit: ; preds = %_ZNK5clang13UnaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit
  %i.ee = add nsw i16 %i.b, -81
  %spec.select.i.i.i.i.i.i.i.i57 = icmp ult i16 %i.ee, 10
  br i1 %spec.select.i.i.i.i.i.i.i.i57, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK5clang14BinaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit
  %i.ef = tail call i32 @_ZNK5clang8CastExpr21getFPFeaturesInEffectERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1)
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

bb.l:                                             ; preds = %_ZNK5clang14BinaryOperator21getFPFeaturesInEffectERKNS_11LangOptionsE.exit
  %i.eg = icmp eq i16 %i.b, 76
  br i1 %i.eg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eh = tail call i32 @_ZNK5clang17ConvertVectorExpr21getFPFeaturesInEffectERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1)
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ei = tail call i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136) %1) #30
  br label %_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread

_ZNK5clang8CallExpr21getFPFeaturesInEffectERKNS_11LangOptionsE.exit.thread: ; preds = %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d, %bb.m, %bb.k, %bb.n
  %.sroa.0.5 = phi i32 [ %i.ei, %bb.n ], [ %i.eh, %bb.m ], [ %i.ef, %bb.k ], [ %i.cl, %bb.f ], [ %i.ax, %bb.c ], [ %i.ay, %bb.d ], [ %i.cm, %bb.g ], [ %i.ed, %bb.j ], [ %i.ec, %bb.i ]
  ret i32 %.sroa.0.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK5clang8CastExpr21getFPFeaturesInEffectERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 134217728
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.c = and i32 %i.a, 511
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = getelementptr i8, ptr @switch.table._ZNK5clang8CastExpr21getFPFeaturesInEffectERKNS_11LangOptionsE, i64 %i.d
  %switch.gep = getelementptr i8, ptr %i.g, i64 -81
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !90 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32                    ; 3 uses
  %i.n = lshr i32 %i.m, 23
  %i.o = and i32 %i.n, 3                          ; 2 uses
  %i.p = icmp eq i32 %i.o, 3
  %spec.store.select.i.i = select i1 %i.p, i32 2, i32 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 4                          ; 2 uses
  %i.v = lshr i32 %i.m, 19
  %i.w = and i32 %i.v, 192
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, 36
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 32256
  %i.ac = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.u, 0
  %or.cond.not16.i.i = select i1 %i.ac, i1 %.not3.i.i.i, i1 false
  %i.ad = and i32 %i.m, 100663296
  %i.ae = icmp eq i32 %i.ad, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.ae, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ag = load i64, ptr %i.af, align 8
  %sh.diff.i.i = lshr i64 %i.ag, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.ah = and i32 %tr.sh.diff.i.i, 29360128
  %i.ai = or disjoint i32 %i.w, %i.ab
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = or disjoint i32 %i.aj, %masksel.i.i
  %i.al = or disjoint i32 %i.ak, %i.u
  %i.am = or disjoint i32 %i.al, %spec.store.select.i.i
  %i.an = or i32 %i.am, 56
  %i.ao = xor i32 %.sroa.4.0.extract.trunc, -1
  %i.ap = and i32 %i.an, %i.ao
  %i.aq = and i64 %.sroa.4.0.extract.shift, %.sroa.0.0.copyload.i
  %i.ar = trunc nuw i64 %i.aq to i32
  %i.as = or i32 %i.ap, %i.ar
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = tail call i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136) %1) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %.sroa.0.0 = phi i32 [ %i.as, %switch.lookup ], [ %i.at, %bb.b ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK5clang17ConvertVectorExpr21getFPFeaturesInEffectERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(1136) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i24, ptr %0, align 8
  %i.b = and i24 %i.a, 524288
  %.not = icmp eq i24 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !90 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32 ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = lshr i32 %i.f, 23
  %i.h = and i32 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i32 %i.h, 3
  %spec.store.select.i.i = select i1 %i.i, i32 2, i32 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i64, ptr %i.j, align 8
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 4                          ; 2 uses
  %i.o = lshr i32 %i.f, 19
  %i.p = and i32 %i.o, 192
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, 36
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 32256
  %i.v = icmp eq i32 %spec.store.select.i.i, 1
  %.not3.i.i.i = icmp ne i32 %i.n, 0
  %or.cond.not16.i.i = select i1 %i.v, i1 %.not3.i.i.i, i1 false
  %i.w = and i32 %i.f, 100663296
  %i.x = icmp eq i32 %i.w, 67108864
  %or.cond15.i.i = select i1 %or.cond.not16.i.i, i1 %i.x, i1 false
  %masksel.i.i = select i1 %or.cond15.i.i, i32 256, i32 0
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.z = load i64, ptr %i.y, align 8
  %sh.diff.i.i = lshr i64 %i.z, 23
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %i.aa = and i32 %tr.sh.diff.i.i, 29360128
  %i.ab = or disjoint i32 %i.p, %i.u
  %i.ac = or disjoint i32 %i.ab, %i.aa
  %i.ad = or disjoint i32 %i.ac, %masksel.i.i
  %i.ae = or disjoint i32 %i.ad, %i.n
  %i.af = or disjoint i32 %i.ae, %spec.store.select.i.i
  %i.ag = or i32 %i.af, 56
  %i.ah = xor i32 %.sroa.4.0.extract.trunc, -1
  %i.ai = and i32 %i.ag, %i.ah
  %i.aj = and i64 %.sroa.4.0.extract.shift, %.sroa.0.0.copyload.i
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = or i32 %i.ai, %i.ak
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.am = tail call i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136) %1) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.al, %bb.b ], [ %i.am, %bb.c ]
  ret i32 %.sroa.0.0
}

declare i32 @_ZN5clang9FPOptions29defaultWithoutTrailingStorageERKNS_11LangOptionsE(ptr noundef nonnull align 8 dereferenceable(1136)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK5clang4Expr17hasNonTrivialCallERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::NonTrivialCallFinder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store ptr %1, ptr %2, align 8, !tbaa !679
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !691
  call fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %0)
  %.val = load i8, ptr %i.a, align 8, !tbaa !691, !range !138, !noundef !139
  %i.b = trunc nuw i8 %.val to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang15StmtVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEvJEE5VisitEPKNS_4StmtE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.905", align 8 ; 4 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr329 = phi ptr [ %1, %bb.a ], [ %.tr329.be, %tailrecurse.backedge ] ; 311 uses
  %i.b = load i16, ptr %.tr329, align 8           ; 3 uses
  %i.c = and i16 %i.b, 510
  %spec.select.i.i.i.i.i.i.i.i.not = icmp eq i16 %i.c, 122
  br i1 %spec.select.i.i.i.i.i.i.i.i.not, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %tailrecurse
  %i.d = load i32, ptr %.tr329, align 8           ; 2 uses
  %i.e = lshr i32 %i.d, 19
  %i.f = and i32 %i.e, 63
  %i.g = trunc i32 %i.d to i16
  switch i32 %i.f, label %.critedge [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 9, label %bb.r
    i32 16, label %bb.s
    i32 17, label %bb.t
    i32 18, label %bb.u
    i32 19, label %bb.v
    i32 20, label %bb.w
    i32 21, label %bb.x
    i32 22, label %bb.y
    i32 23, label %bb.z
    i32 24, label %bb.aa
    i32 25, label %bb.ab
    i32 26, label %bb.ac
    i32 27, label %bb.ad
    i32 28, label %bb.ae
    i32 29, label %bb.af
    i32 31, label %bb.ag
    i32 30, label %bb.ah
    i32 32, label %bb.ai
  ]

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.f:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.g:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.h:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.i:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.j:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.k:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.l:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.n:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.o:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.p:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.q:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.r:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.s:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.t:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.u:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.v:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.w:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.x:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.y:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.z:                                             ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.aa:                                            ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.ab:                                            ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.ac:                                            ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread

bb.ad:                                            ; preds = %bb.b
  tail call fastcc void @_ZN5clang24EvaluatedExprVisitorBaseIN4llvm14make_const_ptrEN12_GLOBAL__N_120NonTrivialCallFinderEE9VisitStmtEPKNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.tr329)
  br label %.critedge.thread
end_hunk_1

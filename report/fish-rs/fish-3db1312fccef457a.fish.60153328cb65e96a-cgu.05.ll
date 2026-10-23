Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.05?download=true
inline.NumInlined: 1761
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal4sync:bb.a
bb.ew:                                            ; preds = %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit118.thread.i.i
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ma)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i121.i.i unwind label %bb.ex, !noalias !2608

bb.ex:                                            ; preds = %bb.ew
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t) #29
          to label %.body123.i.i unwind label %bb.fa, !noalias !2608

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i121.i.i: ; preds = %bb.ew
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i122.i.i unwind label %bb.ey, !noalias !2608

bb.ey:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i121.i.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %.body123.i.i unwind label %bb.ez, !noalias !2608

bb.ez:                                            ; preds = %bb.ey
  %i.rc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2608
  unreachable

bb.fa:                                            ; preds = %bb.ex
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2608
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i122.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i121.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBG_20env_universal_common19UniversalReadUpdateEEEBG_.exit126.i.i unwind label %.loopexit176.i.i, !noalias !2608

bb.fb:                                            ; preds = %bb.fg, %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false), !noalias !2606
  %i.re = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.re, ptr noundef nonnull align 8 dereferenceable(96) %i.t, i64 96, i1 false), !noalias !2606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.at, ptr noundef nonnull align 8 dereferenceable(152) %i.p, i64 152, i1 false), !noalias !2611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2606
  br label %bb.fn

bb.fc:                                            ; preds = %bb.ev
  %i.rf = invoke noundef ptr @_RNvNvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_file6rename(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.gm, i64 noundef %i.go, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ge, i64 noundef %i.gg)
          to label %bb.fd unwind label %.loopexit.split-lp182.i.i, !noalias !2608 ; 2 uses

bb.fd:                                            ; preds = %bb.fc
  %.not60.i.i = icmp eq ptr %i.rf, null
  br i1 %.not60.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  store ptr %i.rf, ptr %i.at, align 8, !alias.scope !2605, !noalias !2604
  %i.rg = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i64 -2, ptr %i.rg, align 8, !alias.scope !2605, !noalias !2604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2606
  br label %bb.fh

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2606
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_path(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ge, i64 noundef %i.gg)
          to label %bb.fg unwind label %.loopexit.split-lp182.i.i, !noalias !2608

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false), !noalias !2606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2606
  br label %bb.fb

bb.fh:                                            ; preds = %bb.fe, %bb.en
  %.sroa.027.8.i.i = phi i8 [ 1, %bb.en ], [ %.sroa.027.6.i.i, %bb.fe ] ; 5 uses
  %i.rh = load i64, ptr %i.t, align 8, !range !8, !alias.scope !2627, !noalias !2606, !noundef !5
  %i.ri = icmp eq i64 %i.rh, -1
  br i1 %i.ri, label %bb.fn, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ma)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i129.i.i unwind label %bb.fj, !noalias !2608

bb.fj:                                            ; preds = %bb.fi
  %i.rj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t) #29
          to label %.body123.i.i unwind label %bb.fm, !noalias !2608

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i129.i.i: ; preds = %bb.fi
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i130.i.i unwind label %bb.fk, !noalias !2608

bb.fk:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i129.i.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %.body123.i.i unwind label %bb.fl, !noalias !2608

bb.fl:                                            ; preds = %bb.fk
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2608
  unreachable

bb.fm:                                            ; preds = %bb.fj
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2608
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i130.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i129.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.t)
          to label %bb.fn unwind label %.loopexit.split-lp177.i.i, !noalias !2608

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBG_20env_universal_common19UniversalReadUpdateEEEBG_.exit126.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i122.i.i, %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit118.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2606
  br label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit116.thread.i.i

bb.fn:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i130.i.i, %bb.fh, %bb.fb
  %.sroa.027.7.i.i = phi i8 [ %.sroa.027.6.i.i, %bb.fb ], [ %.sroa.027.8.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i130.i.i ], [ %.sroa.027.8.i.i, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2606
  %i.rn = call noundef i32 @close(i32 noundef %i.on) #34, !noalias !2608 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2606
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.dw
  %.sroa.027.10.i.i = phi i8 [ %.sroa.027.2211.i.i, %bb.dw ], [ %.sroa.027.7.i.i, %bb.fn ]
  %i.ro = trunc nuw i8 %.sroa.027.10.i.i to i1
  br i1 %i.ro, label %.sink.split.i.i, label %bb.fv

bb.fp:                                            ; preds = %bb.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  %.val.i14.i = load ptr, ptr %i.mb, align 8, !alias.scope !2628, !noalias !2629, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2630
  %i.rp = ptrtoint ptr %.val.i14.i to i64         ; 2 uses
  %i.rq = and i64 %i.rp, 3
  switch i64 %i.rq, label %default.unreachable [
    i64 2, label %bb.fs
    i64 3, label %bb.fq
    i64 0, label %bb.fs
    i64 1, label %bb.fr
  ], !prof !19

bb.fq:                                            ; preds = %bb.fp
  %i.rr = icmp ult ptr %.val.i14.i, inttoptr (i64 188978561024 to ptr)
  %i.rs = and i64 %i.rp, 1095216660480
  %i.rt = icmp ne i64 %i.rs, 1095216660480
  call void @llvm.assume(i1 %i.rr), !noalias !2605
  call void @llvm.assume(i1 %i.rt), !noalias !2605
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.ru = getelementptr i8, ptr %.val.i14.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ru) ], !noalias !2605
  store ptr %i.ru, ptr %i.mc, align 8, !alias.scope !2631, !noalias !2630
  store i8 3, ptr %i.e, align 8, !alias.scope !2631, !noalias !2630
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mc)
          to label %bb.fs unwind label %.loopexit176.i.i, !noalias !2632

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2606
  br label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit116.thread.i.i

_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit116.thread.i.i: ; preds = %bb.fs, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBG_20env_universal_common19UniversalReadUpdateEEEBG_.exit126.i.i, %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i
  %.sroa.027.9.i.i = phi i8 [ 1, %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 1, %bb.fs ], [ %.sroa.027.6.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBG_20env_universal_common19UniversalReadUpdateEEEBG_.exit126.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2606
  %i.rv = call noundef i32 @close(i32 noundef %i.on) #34, !noalias !2608 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2606
  %exitcond.not.i.i = icmp eq i32 %i.nz, 1000
  br i1 %exitcond.not.i.i, label %bb.dr, label %bb.ds

bb.ft:                                            ; preds = %bb.ec
  store ptr %i.op, ptr %i.at, align 8, !alias.scope !2605, !noalias !2604
  %i.rw = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store i64 -2, ptr %i.rw, align 8, !alias.scope !2605, !noalias !2604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2606
  br label %.sink.split.i.i

bb.fu:                                            ; preds = %bb.di
  unreachable

.thread.i.i:                                      ; preds = %bb.do, %bb.da, %.body102.i.i, %bb.br, %bb.bl, %bb.bk, %.body87.i.i, %.body112.i.i
  %.pn63146.i.i = phi { ptr, i32 } [ %.pn63.i.i, %.body112.i.i ], [ %.pn49.i.i, %.body87.i.i ], [ %.pn49.i.i, %bb.br ], [ %.pn56.i.i, %.body102.i.i ], [ %i.ig, %bb.bl ], [ %i.mf, %bb.da ], [ %i.nw, %bb.do ], [ %i.if, %bb.bk ]
  %.val.i.i = load i32, ptr %i.as, align 4, !range !22, !noalias !2606, !noundef !5
  %i.rx = call noundef i32 @close(i32 noundef %.val.i.i) #34, !noalias !2608 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.fx, %.thread.i.i, %.body112.i.i
  %.pn.i = phi { ptr, i32 } [ %i.se, %bb.fx ], [ %.pn63.i.i, %.body112.i.i ], [ %.pn63146.i.i, %.thread.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #29
          to label %.critedge unwind label %bb.ge, !noalias !2632

bb.fv:                                            ; preds = %bb.fo, %.sink.split.i.i, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2604
  %i.ry = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.rz = load i64, ptr %i.ry, align 8, !range !20, !noalias !2604, !noundef !5 ; 4 uses
  %2 = icmp eq i64 %i.rz, -2                      ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %.val10.i = load i8, ptr %i.sa, align 8, !noalias !2604
  %3 = icmp eq i8 %.val10.i, 0
  %or.cond.not.i = select i1 %2, i1 true, i1 %3
  br i1 %or.cond.not.i, label %bb.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i

bb.fw:                                            ; preds = %bb.fv
  %i.sb = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !2604, !nonnull !5, !noundef !5
  %i.sc = load i64, ptr %i.gn, align 8, !noalias !2604, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2633
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring12wcs2osstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.sb, i64 noundef %i.sc)
          to label %.noexc.i unwind label %bb.fx, !noalias !2632

.noexc.i:                                         ; preds = %bb.fw
  %i.sd = invoke noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs11remove_fileNtNtNtB4_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ga unwind label %bb.fx, !noalias !2632 ; 4 uses

bb.fx:                                            ; preds = %bb.gd, %.noexc.i, %bb.fw
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtB14_2fs15PotentialUpdateINtNtB4_6option6OptionNtNtB14_20env_universal_common19UniversalReadUpdateEEENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.at) #29
          to label %.body.i unwind label %bb.ge, !noalias !2632

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i, %bb.ga, %bb.fv
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !noalias !2634 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false), !noalias !2634
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2604
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.fy, !noalias !2632

bb.fy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
  %i.sf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.critedge unwind label %bb.fz, !noalias !2632

bb.fz:                                            ; preds = %bb.fy
  %i.sg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2632
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit unwind label %bb.gf

bb.ga:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2633
  %i.sh = icmp eq ptr %i.sd, null
  br i1 %i.sh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2604
  %i.si = ptrtoint ptr %i.sd to i64               ; 2 uses
  %i.sj = and i64 %i.si, 3
  switch i64 %i.sj, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 3, label %bb.gc
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 1, label %bb.gd
  ], !prof !19

bb.gc:                                            ; preds = %bb.gb
  %i.sk = icmp ult ptr %i.sd, inttoptr (i64 188978561024 to ptr)
  %i.sl = and i64 %i.si, 1095216660480
  %i.sm = icmp ne i64 %i.sl, 1095216660480
  call void @llvm.assume(i1 %i.sk)
  call void @llvm.assume(i1 %i.sm)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i

bb.gd:                                            ; preds = %bb.gb
  %i.sn = getelementptr i8, ptr %i.sd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sn) ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.sn, ptr %i.so, align 8, !alias.scope !2635, !noalias !2604
  store i8 3, ptr %i.f, align 8, !alias.scope !2635, !noalias !2604
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.so)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.fx, !noalias !2632

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2604
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i

bb.ge:                                            ; preds = %bb.fx, %.body.i
  %i.sp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2632
  unreachable

.critedge:                                        ; preds = %bb.gz, %bb.gy, %bb.gf, %bb.fy, %.body.i, %.body69, %bb.gh, %bb.hb
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %.body69 ], [ %i.sv, %bb.gh ], [ %i.sv, %bb.hb ], [ %.pn.i, %.body.i ], [ %i.sq, %bb.gf ], [ %i.sf, %bb.fy ], [ %.pn, %bb.gy ], [ %.pn, %bb.gz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.br) #29
          to label %common.resume unwind label %bb.gx

bb.gf:                                            ; preds = %bb.hg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.ar
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2604
  br i1 %2, label %bb.hd, label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 %i.rz, ptr %i.bp, align 8
  %.sroa.9.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, i64 88, i1 false)
  %i.sr = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %.sroa.0.0.copyload, ptr %i.sr, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.bp, i64 88 ; 2 uses
  %i.st = load i8, ptr %i.ss, align 8, !range !16, !noundef !5 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 %i.st, ptr %i.su, align 8
  invoke void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE5clearCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.gi unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.sv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not23 = icmp eq i64 %i.rz, -1
  br i1 %.not23, label %.critedge, label %bb.ha

bb.gi:                                            ; preds = %bb.gg
  %.not20 = icmp eq i64 %i.rz, -1
  br i1 %.not20, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.sw = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.sx = load i64, ptr %i.sw, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.sy, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.sz = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.ta = load i8, ptr %i.sz, align 8, !range !16, !noundef !5 ; 2 uses
  store i8 %i.ta, ptr %i.bm, align 1
  %i.tb = icmp eq i8 %i.st, %i.ta
  br i1 %i.tb, label %bb.gm, label %bb.gl, !prof !6

bb.gk:                                            ; preds = %bb.gi
  store i8 1, ptr %0, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.tc, align 8
  br label %bb.gt

bb.gl:                                            ; preds = %bb.gj
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedbbECs8frGy5WneL6_4fish(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ss, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bm, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #33
          to label %bb.gp unwind label %bb.go

bb.gm:                                            ; preds = %bb.gj
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !noundef !5 ; 2 uses
  %i.tf = add i64 %i.te, %i.sx                    ; 2 uses
  %i.tg = icmp ult i64 %i.tf, %i.te
  br i1 %i.tg, label %bb.gr, label %bb.gq

bb.gn:                                            ; preds = %bb.gs, %bb.go
  %.sroa.05.0 = phi i1 [ true, %bb.go ], [ false, %bb.gs ]
  %.pn = phi { ptr, i32 } [ %i.th, %bb.go ], [ %i.tj, %bb.gs ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn) #29
          to label %bb.gy unwind label %bb.gx

bb.go:                                            ; preds = %bb.gr, %bb.gl
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gp:                                            ; preds = %bb.iu, %bb.hq, %bb.gr, %bb.gl, %bb.ah, %bb.o
  unreachable

bb.gq:                                            ; preds = %bb.gm
  store i64 %i.tf, ptr %i.td, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ti)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit unwind label %bb.gs

bb.gr:                                            ; preds = %bb.gm
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #33
          to label %bb.gp unwind label %bb.go

bb.gs:                                            ; preds = %bb.gq
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ti, ptr noundef nonnull align 8 dereferenceable(48) %i.sy, i64 48, i1 false)
  br label %bb.gn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit: ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ti, ptr noundef nonnull align 8 dereferenceable(48) %i.sy, i64 48, i1 false)
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tk, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.ih, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.tl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %common.resume unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.tm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.gu
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.d

bb.gx:                                            ; preds = %bb.ha, %bb.gz, %.body69, %bb.im, %.body80, %.body63, %bb.hb, %bb.gn, %.critedge, %bb.z, %bb.g
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.gy:                                            ; preds = %bb.gn
  br i1 %.sroa.05.0, label %bb.gz, label %.critedge

bb.gz:                                            ; preds = %bb.gy
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %.critedge unwind label %bb.gx

bb.ha:                                            ; preds = %bb.gh
  %i.to = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.to)
          to label %bb.hb unwind label %bb.gx

bb.hb:                                            ; preds = %bb.ha
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp) #29
          to label %.critedge unwind label %bb.gx

.body69:                                          ; preds = %bb.ie, %bb.hc, %.body63
  %.pn25 = phi { ptr, i32 } [ %eh.lpad-body64, %.body63 ], [ %i.tp, %bb.hc ], [ %i.wi, %bb.ie ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr %.sroa.0.093) #29
          to label %.critedge unwind label %bb.gx

bb.hc:                                            ; preds = %bb.if
  %i.tp = landingpad { ptr, i32 }
          cleanup
  br label %.body69

bb.hd:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit, %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit.thread
  %.sroa.0.093 = phi ptr [ %i.gk, %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit.thread ], [ %.sroa.0.0.copyload, %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %.sroa.0.093, ptr %i.bl, align 8
  %i.tq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories9uvar_file, i64 40) monotonic, align 8
  %.not24 = icmp eq i8 %i.tq, 0
  br i1 %.not24, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit71, %bb.hd
  store i8 0, ptr %0, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.tr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.093) ]
  %i.ts = ptrtoint ptr %.sroa.0.093 to i64        ; 2 uses
  %i.tt = and i64 %i.ts, 3
  switch i64 %i.tt, label %default.unreachable [
    i64 2, label %bb.ih
    i64 3, label %bb.hf
    i64 0, label %bb.ih
    i64 1, label %bb.hg
  ], !prof !19

bb.hf:                                            ; preds = %bb.he
  %i.tu = icmp ult ptr %.sroa.0.093, inttoptr (i64 188978561024 to ptr)
  %i.tv = and i64 %i.ts, 1095216660480
  %i.tw = icmp ne i64 %i.tv, 1095216660480
  call void @llvm.assume(i1 %i.tu)
  call void @llvm.assume(i1 %i.tw)
  br label %bb.ih

bb.hg:                                            ; preds = %bb.he
  %i.tx = getelementptr i8, ptr %.sroa.0.093, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tx) ]
  %i.ty = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.tx, ptr %i.ty, align 8, !alias.scope !2636
  store i8 3, ptr %i.d, align 8, !alias.scope !2636
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ty)
          to label %bb.ih unwind label %bb.gf

bb.hh:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 0, ptr %i.bk, align 8
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.l = phi i64 [ %i.cp, %bb.k ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.cq, %bb.k ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.127 = phi i64 [ %.sroa.0.2, %bb.k ], [ %.sroa.0.0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5.026 = phi ptr [ %.sroa.5.3.ph, %bb.k ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.026, i64 -1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !3172, !noundef !5 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.c, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i: ; preds = %.lr.ph
  %i.q = icmp ne ptr %1, %i.n
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %.sroa.5.026, i64 -2 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !3172, !noundef !5 ; 3 uses
  %i.t = and i8 %i.s, 31
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.o to i32
  br label %bb.f

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i
  %i.x = icmp ne ptr %1, %i.r
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %.sroa.5.026, i64 -3 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !3172, !noundef !5 ; 3 uses
  %i.aa = and i8 %i.z, 15
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = icmp slt i8 %i.z, -64
  br i1 %i.ac, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.e ], [ %i.r, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.at, %bb.e ], [ %i.u, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.ae = and i8 %i.o, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.f

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i
  %i.ah = icmp ne ptr %1, %i.y
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.5.026, i64 -4 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3172, !noundef !5
  %i.ak = and i8 %i.aj, 7
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = and i8 %i.z, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i
  %.sroa.5.2 = phi ptr [ %i.ai, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i ], [ %i.y, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.ap, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i ], [ %i.ab, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i ]
  %i.aq = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ar = and i8 %i.s, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.4.1.i.ph = phi i32 [ %i.ag, %bb.d ], [ %i.w, %bb.c ] ; 22 uses
  %i.au = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.au)
  switch i32 %.sroa.4.1.i.ph, label %bb.g [
    i32 2381, label %bb.h
    i32 2509, label %bb.h
    i32 2765, label %bb.h
    i32 2893, label %bb.h
    i32 3149, label %bb.h
    i32 3405, label %bb.h
    i32 4153, label %bb.h
    i32 6098, label %bb.h
    i32 6752, label %bb.h
    i32 6980, label %bb.h
    i32 7083, label %bb.h
    i32 43456, label %bb.h
    i32 43766, label %bb.h
    i32 68159, label %bb.h
    i32 69939, label %bb.h
    i32 70608, label %bb.h
    i32 71998, label %bb.h
    i32 72263, label %bb.h
    i32 72345, label %bb.h
    i32 73538, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = icmp samesign ult i32 %.sroa.4.1.i.ph, 43302
  %i.aw = select i1 %i.av, i64 0, i64 188, !unpredictable !5 ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 94               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.ax ; 2 uses
  %.val12.1.i = load i32, ptr %i.ay, align 4, !range !13, !noalias !3173, !noundef !5
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val13.1.i = load i32, ptr %i.az, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.1.i = icmp samesign ugt i32 %.val12.1.i, %.sroa.4.1.i.ph
  %.not1.i18.1.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.1.i
  %i.ba = select i1 %.not1.i18.1.i, i1 %.not.i17.1.i, i1 false
  %i.bb = select i1 %i.ba, i64 %i.aw, i64 %i.ax, !unpredictable !5 ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 47               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.bc ; 2 uses
  %.val12.2.i = load i32, ptr %i.bd, align 4, !range !13, !noalias !3173, !noundef !5
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val13.2.i = load i32, ptr %i.be, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.2.i = icmp samesign ugt i32 %.val12.2.i, %.sroa.4.1.i.ph
  %.not1.i18.2.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.2.i
  %i.bf = select i1 %.not1.i18.2.i, i1 %.not.i17.2.i, i1 false
  %i.bg = select i1 %i.bf, i64 %i.bb, i64 %i.bc, !unpredictable !5 ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 24               ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.bh ; 2 uses
  %.val12.3.i = load i32, ptr %i.bi, align 4, !range !13, !noalias !3173, !noundef !5
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val13.3.i = load i32, ptr %i.bj, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.3.i = icmp samesign ugt i32 %.val12.3.i, %.sroa.4.1.i.ph
  %.not1.i18.3.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.3.i
  %i.bk = select i1 %.not1.i18.3.i, i1 %.not.i17.3.i, i1 false
  %i.bl = select i1 %i.bk, i64 %i.bg, i64 %i.bh, !unpredictable !5 ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 12               ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.bm ; 2 uses
  %.val12.4.i = load i32, ptr %i.bn, align 4, !range !13, !noalias !3173, !noundef !5
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %.val13.4.i = load i32, ptr %i.bo, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.4.i = icmp samesign ugt i32 %.val12.4.i, %.sroa.4.1.i.ph
  %.not1.i18.4.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.4.i
  %i.bp = select i1 %.not1.i18.4.i, i1 %.not.i17.4.i, i1 false
  %i.bq = select i1 %i.bp, i64 %i.bl, i64 %i.bm, !unpredictable !5 ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 6                ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.br ; 2 uses
  %.val12.5.i = load i32, ptr %i.bs, align 4, !range !13, !noalias !3173, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %.val13.5.i = load i32, ptr %i.bt, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.5.i = icmp samesign ugt i32 %.val12.5.i, %.sroa.4.1.i.ph
  %.not1.i18.5.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.5.i
  %i.bu = select i1 %.not1.i18.5.i, i1 %.not.i17.5.i, i1 false
  %i.bv = select i1 %i.bu, i64 %i.bq, i64 %i.br, !unpredictable !5 ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.bw ; 2 uses
  %.val12.6.i = load i32, ptr %i.bx, align 4, !range !13, !noalias !3173, !noundef !5
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %.val13.6.i = load i32, ptr %i.by, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.6.i = icmp samesign ugt i32 %.val12.6.i, %.sroa.4.1.i.ph
  %.not1.i18.6.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.6.i
  %i.bz = select i1 %.not1.i18.6.i, i1 %.not.i17.6.i, i1 false
  %i.ca = select i1 %i.bz, i64 %i.bv, i64 %i.bw, !unpredictable !5 ; 2 uses
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.cb ; 2 uses
  %.val12.7.i = load i32, ptr %i.cc, align 4, !range !13, !noalias !3173, !noundef !5
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %.val13.7.i = load i32, ptr %i.cd, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.7.i = icmp samesign ugt i32 %.val12.7.i, %.sroa.4.1.i.ph
  %.not1.i18.7.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.7.i
  %i.ce = select i1 %.not1.i18.7.i, i1 %.not.i17.7.i, i1 false
  %i.cf = select i1 %i.ce, i64 %i.ca, i64 %i.cb, !unpredictable !5 ; 2 uses
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.cg ; 2 uses
  %.val12.8.i = load i32, ptr %i.ch, align 4, !range !13, !noalias !3173, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ch, i64 4
  %.val13.8.i = load i32, ptr %i.ci, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i17.8.i = icmp samesign ugt i32 %.val12.8.i, %.sroa.4.1.i.ph
  %.not1.i18.8.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.8.i
  %i.cj = select i1 %.not1.i18.8.i, i1 %.not.i17.8.i, i1 false
  %i.ck = select i1 %i.cj, i64 %i.cf, i64 %i.cg, !unpredictable !5
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.ck ; 2 uses
  %.val15.i = load i32, ptr %i.cl, align 4, !range !13, !noalias !3173, !noundef !5
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.val16.i = load i32, ptr %i.cm, align 4, !range !13, !noalias !3173, !noundef !5
  %.not.i.i = icmp samesign ule i32 %.val15.i, %.sroa.4.1.i.ph
  %.not1.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val16.i
  %.not.i.not = select i1 %.not1.i.i, i1 %.not.i.i, i1 false
  br i1 %.not.i.not, label %bb.k, label %bb.l

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.cn = icmp eq i64 %.sroa.0.127, -1
  br i1 %i.cn, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = add nuw i64 %.sroa.0.127, 1             ; 3 uses
  store i64 1, ptr %i.d, align 8
  store i64 %i.co, ptr %i.e, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #31
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.i
  %i.cp = phi i64 [ %i.l, %bb.g ], [ %i.co, %bb.i ]
  %i.cq = phi i64 [ %i.m, %bb.g ], [ 1, %bb.i ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.127, %bb.g ], [ %i.co, %bb.i ]
  %i.cr = icmp eq ptr %1, %.sroa.5.3.ph
  br i1 %i.cr, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.g
  %3 = icmp eq i64 %i.l, 0
  %not. = icmp eq i64 %i.m, 0
  %.sroa.08.0.not = select i1 %not., i1 true, i1 %3
  br i1 %.sroa.08.0.not, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = tail call noundef i8 @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.cs, 5
  %spec.select = select i1 %.not, i8 1, i8 2
  br label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish2fsNtB4_10LockedFile25fsync_close_and_keep_lock(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, -1) %1, i32 noundef range(i32 0, -1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.b, align 4
  %i.c = invoke noundef ptr @_RNvNtCs8frGy5WneL6_4fish2fs5fsync(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noundef i32 @close(i32 noundef %1) #34 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink8 = phi i32 [ %1, %bb.d ], [ %2, %bb.c ]
  %.sink = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  %i.g = tail call noundef i32 @close(i32 noundef %.sink8) #34 ; 0 uses
  store i32 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call noundef i32 @close(i32 noundef %1) #34 ; 0 uses
  %i.j = tail call noundef i32 @close(i32 noundef %2) #34 ; 0 uses
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish2fsNtB4_10LockedFile3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i8 noundef range(i8 0, 3) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish5wutil8wdirname(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.d = tail call noundef i8 @_RNvNtCs8frGy5WneL6_4fish4path15path_remoteness(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.c)
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call { i32, i32 } @_RNvNtCs8frGy5WneL6_4fish3fds13wopen_cloexec(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.b, i64 noundef %i.c, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.g = extractvalue { i32, i32 } %i.f, 0
  %i.h = extractvalue { i32, i32 } %i.f, 1        ; 6 uses
  %i.i = trunc i32 %i.g to i1
  br i1 %i.i, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq i8 %1, 2
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us
  %i.j = tail call noundef i32 @flock(i32 noundef %i.h, i32 noundef 1) #34
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader.split.us
  %i.l = tail call noundef ptr @__errno_location() #34
  %i.m = load i32, ptr %i.l, align 4, !noundef !5 ; 3 uses
  %i.n = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i.us = icmp eq ptr %i.n, @111
  br i1 %.not.i.us, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111)
          to label %bb.e unwind label %.loopexit37.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc29.us unwind label %.split.us

.noexc29.us:                                      ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = invoke noundef i8 %i.q(i32 noundef %i.m)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us unwind label %.split.us, !inline_history !0

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.us: ; preds = %.noexc29.us
  %.not23.us = icmp eq i8 %i.r, 35
  br i1 %.not23.us, label %.preheader.split.us, label %.split48.us

.split.us:                                        ; preds = %.noexc29.us, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef 36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 72) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store i32 1, ptr %0, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.v = tail call noundef nonnull ptr @_RNvXs6_NtCse7JGOylGlDZ_3nix5errnoNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef %i.h)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  store i32 1, ptr %0, align 8
  br label %bb.n

.preheader.split:                                 ; preds = %.preheader, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  %i.x = tail call noundef i32 @flock(i32 noundef %i.h, i32 noundef 2) #34
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader.split
  %i.z = tail call noundef ptr @__errno_location() #34
  %i.aa = load i32, ptr %i.z, align 4, !noundef !5 ; 3 uses
  %i.ab = load atomic ptr, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.ab, @111
  br i1 %.not.i, label %bb.p, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111)
          to label %bb.p unwind label %.loopexit37.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.preheader.split.us, %bb.j
  %.sroa.020.0 = phi i32 [ %., %bb.j ], [ 0, %.preheader.split.us ]
  %i.ac = invoke { i32, i32 } @_RNvNtCs8frGy5WneL6_4fish3fds13wopen_cloexec(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %.sroa.020.0, i32 noundef 384)
          to label %bb.k unwind label %.loopexit37.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.j:                                             ; preds = %.preheader.split
  %i.ad = trunc nuw i8 %1 to i1
  %. = select i1 %i.ad, i32 66, i32 1089
  br label %.loopexit

.loopexit37.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.i, %bb.l, %.loopexit
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit37.split

bb.k:                                             ; preds = %.loopexit
  %i.ae = extractvalue { i32, i32 } %i.ac, 0
  %i.af = extractvalue { i32, i32 } %i.ac, 1      ; 2 uses
  %i.ag = trunc i32 %i.ae to i1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = invoke noundef nonnull ptr @_RNvXs6_NtCse7JGOylGlDZ_3nix5errnoNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef %i.af)
          to label %bb.o unwind label %.loopexit37.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.af, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.aj, align 8
  store i32 0, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %bb.o, %bb.f, %bb.m
  ret void

bb.o:                                             ; preds = %bb.l, %.split48.us
  %.sink = phi ptr [ %i.ay, %.split48.us ], [ %i.ah, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ak, align 8
  store i32 1, ptr %0, align 8
  %i.al = tail call noundef i32 @close(i32 noundef %i.h) #34 ; 0 uses
  br label %bb.n

bb.p:                                             ; preds = %bb.h, %bb.i
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc29 unwind label %.split

.noexc29:                                         ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  %i.ap = invoke noundef i8 %i.ao(i32 noundef %i.aa)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit unwind label %.split, !inline_history !0

.split:                                           ; preds = %.noexc29, %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.split.us, %.split
  %.us-phi45 = phi i32 [ %i.aa, %.split ], [ %i.m, %.split.us ]
  %.us-phi46 = phi { ptr, i32 } [ %i.aq, %.split ], [ %i.s, %.split.us ]
  %i.ar = sext i32 %.us-phi45 to i64
  %i.as = shl nsw i64 %i.ar, 32
  %i.at = or disjoint i64 %i.as, 2
  %i.au = inttoptr i64 %i.at to ptr
end_hunk_1
begin_hunk_2_@_RNvXs2_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next:bb.a
  store i8 %.sink.i.i, ptr %i.bj, align 2, !alias.scope !3606
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ba, %.sink.split.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %0, align 8, !alias.scope !3606
  store i64 0, ptr %i.hz, align 8, !alias.scope !3606
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i

bb.bb:                                            ; preds = %bb.az
  %i.ia = icmp eq i64 %i.fu, 0
  br i1 %i.ia, label %bb.bj, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not.i39.i, label %bb.bd, label %.split.i54.i.i

.split.i54.i.i:                                   ; preds = %bb.bc
  %i.ib = icmp eq i64 %i.fu, %i.k
  br i1 %i.ib, label %bb.be, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.id = load i8, ptr %i.ic, align 1, !alias.scope !3613, !noundef !5
  %i.ie = icmp sgt i8 %i.id, -65
  br i1 %i.ie, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd, %.split.i54.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu ; 4 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -1
  %i.ih = load i8, ptr %i.ig, align 1, !alias.scope !3608, !noalias !3614, !noundef !5 ; 3 uses
  %i.ii = icmp sgt i8 %i.ih, -1
  br i1 %i.ii, label %bb.bf, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i: ; preds = %bb.be
  %i.ij = icmp ne i64 %i.fu, 1
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds i8, ptr %i.if, i64 -2
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !3608, !noalias !3614, !noundef !5 ; 3 uses
  %i.im = and i8 %i.il, 31
  %i.in = zext nneg i8 %i.im to i32
  %i.io = icmp slt i8 %i.il, -64
  br i1 %i.io, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ip = zext nneg i8 %i.ih to i32
  br label %.thread.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i
  %i.iq = icmp ne i64 %i.fu, 2
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = getelementptr inbounds i8, ptr %i.if, i64 -3
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !3608, !noalias !3614, !noundef !5 ; 3 uses
  %i.it = and i8 %i.is, 15
  %i.iu = zext nneg i8 %i.it to i32
  %i.iv = icmp slt i8 %i.is, -64
  br i1 %i.iv, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i, label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i
  %.sroa.010.0.i.i.i = phi i32 [ %i.jm, %bb.bh ], [ %i.in, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i ]
  %i.iw = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.ix = and i8 %i.ih, 63
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = or disjoint i32 %i.iw, %i.iy
  br label %.thread.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i
  %i.ja = icmp ne i64 %i.fu, 3
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds i8, ptr %i.if, i64 -4
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !3608, !noalias !3614, !noundef !5
  %i.jd = and i8 %i.jc, 7
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 6
  %i.jg = and i8 %i.is, 63
  %i.jh = zext nneg i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.jf, %i.jh
  br label %bb.bh

bb.bh:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i
  %.sroa.010.1.i.i.i = phi i32 [ %i.ji, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i ], [ %i.iu, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i ]
  %i.jj = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.jk = and i8 %i.il, 63
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = or disjoint i32 %i.jj, %i.jl
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bd, %.split.i54.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #31, !noalias !3610
  unreachable

bb.bj:                                            ; preds = %bb.bb
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #31, !noalias !3611
  unreachable

.thread.i.i:                                      ; preds = %bb.bg, %bb.bf
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.ip, %bb.bf ], [ %i.iz, %bb.bg ] ; 2 uses
  %i.jn = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = tail call noundef i8 @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph.i.i), !noalias !3611 ; 2 uses
  store i8 %i.jo, ptr %i.bl, align 1, !alias.scope !3606
  %.pre103.i.i = load i8, ptr %i.bk, align 8, !range !3598, !alias.scope !3606 ; 2 uses
  %.not46.i.i = icmp eq i8 %.pre103.i.i, -1
  br i1 %.not46.i.i, label %bb.bt, label %.thread.thread.i.i, !prof !3615

.thread.thread.i.i:                               ; preds = %.thread.i.i, %bb.ba, %bb.az
  %i.jp = phi i8 [ %i.jo, %.thread.i.i ], [ %i.hy, %bb.ba ], [ %.pre102.i.i, %bb.az ] ; 6 uses
  %i.jq = phi i8 [ %.pre103.i.i, %.thread.i.i ], [ %i.gc, %bb.ba ], [ %i.gc, %bb.az ] ; 6 uses
  switch i8 %i.jp, label %bb.bk [
    i8 1, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.i.i
    i8 2, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 7, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  ]

bb.bk:                                            ; preds = %.thread.thread.i.i
  switch i8 %i.jq, label %bb.bl [
    i8 1, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 2, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 7, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  ]

bb.bl:                                            ; preds = %bb.bk
  switch i8 %i.jp, label %bb.bm [
    i8 6, label %bb.bn
    i8 8, label %bb.bo
    i8 14, label %bb.bo
  ]

bb.bm:                                            ; preds = %bb.bl
  switch i8 %i.jq, label %bb.bp [
    i8 3, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 13, label %bb.bq
    i8 15, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bn:                                            ; preds = %bb.bl
  switch i8 %i.jq, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 6, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 8, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 9, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 14, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 3, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 5, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
    i8 15, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bo:                                            ; preds = %bb.bl, %bb.bl
  switch i8 %i.jq, label %bb.bp [
    i8 13, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 14, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 3, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 15, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.jr = icmp eq i8 %i.jp, 10
  br i1 %i.jr, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i, label %.thread.i.i.i

bb.bq:                                            ; preds = %bb.bm
  switch i8 %i.jp, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 9, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 13, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 10, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
  ]

.thread.i.i.i:                                    ; preds = %bb.bp
  switch i8 %i.jq, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 4, label %bb.br
    i8 5, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
    i8 11, label %bb.bs
  ]

bb.br:                                            ; preds = %.thread.i.i.i
  %i.js = icmp eq i8 %i.jp, 15
  br i1 %i.js, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

bb.bs:                                            ; preds = %.thread.i.i.i
  %i.jt = icmp eq i8 %i.jp, 11
  br i1 %i.jt, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.i.i: ; preds = %.thread.thread.i.i
  %.not101.i.i = icmp eq i8 %i.jq, 7
  br i1 %.not101.i.i, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i, label %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

bb.bt:                                            ; preds = %.thread.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #31, !noalias !3611
  unreachable

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i: ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.i.i, %bb.bq, %bb.bq, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bm, %bb.bm
  store i8 1, ptr %i.bj, align 2, !alias.scope !3606
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread162.i

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i: ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.i.i, %bb.bs, %bb.br, %.thread.i.i.i, %bb.bq, %bb.bn, %bb.bk, %bb.bk, %bb.bk, %.thread.thread.i.i, %.thread.thread.i.i
  store i8 2, ptr %i.bj, align 2, !alias.scope !3606
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i: ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm
  %i.ju = load i8, ptr %i.br, align 4, !range !16, !alias.scope !3606, !noundef !5 ; 2 uses
  %1 = icmp eq i8 %i.ju, 0
  %..i.i = select i1 %1, i8 2, i8 1
  store i8 %..i.i, ptr %i.bj, align 2, !alias.scope !3606
  %2 = xor i8 %i.ju, 1
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i: ; preds = %.thread.i.i.i, %bb.bn
  %i.jv = icmp eq i64 %i.fu, 0
  br i1 %i.jv, label %bb.by, label %bb.bu

bb.bu:                                            ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
  br i1 %.not.i39.i, label %bb.bv, label %.split.i58.i.i

.split.i58.i.i:                                   ; preds = %bb.bu
  %i.jw = icmp eq i64 %i.fu, %i.k
  br i1 %i.jw, label %bb.by, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.jx = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.jy = load i8, ptr %i.jx, align 1, !alias.scope !3616, !noundef !5
  %i.jz = icmp sgt i8 %i.jy, -65
  br i1 %i.jz, label %bb.by, label %bb.bz

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i: ; preds = %bb.bs
  %i.ka = load i64, ptr %i.bo, align 8, !range !9, !alias.scope !3606, !noundef !5
  %i.kb = trunc nuw i64 %i.ka to i1
  br i1 %i.kb, label %bb.ca, label %bb.cb

_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i: ; preds = %bb.br
  %i.kc = icmp eq i64 %i.fu, 0
  br i1 %i.kc, label %bb.cg, label %bb.bw

bb.bw:                                            ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i
  br i1 %.not.i39.i, label %bb.bx, label %.split.i62.i.i

.split.i62.i.i:                                   ; preds = %bb.bw
  %i.kd = icmp eq i64 %i.fu, %i.k
  br i1 %i.kd, label %bb.cg, label %bb.ch

bb.bx:                                            ; preds = %bb.bw
  %i.ke = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.kf = load i8, ptr %i.ke, align 1, !alias.scope !3617, !noundef !5
  %i.kg = icmp sgt i8 %i.kf, -65
  br i1 %i.kg, label %bb.cg, label %bb.ch

bb.by:                                            ; preds = %bb.bv, %.split.i58.i.i, %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
  tail call fastcc void @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #35
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.bz:                                            ; preds = %bb.bv, %.split.i58.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #31, !noalias !3610
  unreachable

bb.ca:                                            ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i
  %i.kh = load i64, ptr %i.bp, align 8, !alias.scope !3606, !noundef !5
  %i.ki = and i64 %i.kh, 1                        ; 2 uses
  %i.kj = icmp eq i64 %i.ki, 0
  %.51.i.i = select i1 %i.kj, i8 2, i8 1
  store i8 %.51.i.i, ptr %i.bj, align 2, !alias.scope !3606
  %i.kk = trunc nuw nsw i64 %i.ki to i8
  %i.kl = xor i8 %i.kk, 1
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

bb.cb:                                            ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i
  %i.km = icmp eq i64 %i.fu, 0
  br i1 %i.km, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not.i39.i, label %bb.cd, label %.split.i66.i.i

.split.i66.i.i:                                   ; preds = %bb.cc
  %i.kn = icmp eq i64 %i.fu, %i.k
  br i1 %i.kn, label %bb.ce, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ko = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.kp = load i8, ptr %i.ko, align 1, !alias.scope !3618, !noundef !5
  %i.kq = icmp sgt i8 %i.kp, -65
  br i1 %i.kq, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd, %.split.i66.i.i, %bb.cb
  tail call fastcc void @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #35
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.cf:                                            ; preds = %bb.cd, %.split.i66.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #31, !noalias !3610
  unreachable

bb.cg:                                            ; preds = %bb.bx, %.split.i62.i.i, %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i
  tail call fastcc void @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #35
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.ch:                                            ; preds = %bb.bx, %.split.i62.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #31, !noalias !3610
  unreachable

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i: ; preds = %bb.cg, %bb.ce, %bb.by
  call fastcc void @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor18is_boundary_result(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) #35, !noalias !3619
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !3603 ; 2 uses
  %.not30.i = icmp eq i64 %.pr.i, -1
  br i1 %.not30.i, label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i, label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i.loopexit

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i: ; preds = %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i
  %.pre138.i = load i8, ptr %i.bq, align 8, !range !16, !noalias !3603
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

bb.ci:                                            ; preds = %bb.m
  %i.kr = tail call noundef i8 @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.08.0.i), !noalias !3599
  store i8 %i.kr, ptr %i.bk, align 8, !alias.scope !3593
  br label %bb.ai

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i.loopexit: ; preds = %bb.al, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i
  %.ph = phi i64 [ 3, %bb.al ], [ %.pr.i, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i ]
  %.pre = load i64, ptr %i.bq, align 8, !noalias !3603
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i: ; preds = %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i.loopexit, %.loopexit.i, %bb.am
  %i.ks = phi i64 [ %i.ga, %bb.am ], [ 0, %.loopexit.i ], [ %.pre, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i.loopexit ]
  %i.kt = phi i64 [ 0, %bb.am ], [ 0, %.loopexit.i ], [ %.ph, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3603
  br label %bb.ck

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i: ; preds = %bb.ai, %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3603
  br label %.loopexit

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread162.i: ; preds = %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3603
  br label %bb.cj

_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i: ; preds = %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i, %bb.ca, %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
  %i.ku = phi i8 [ %.pre138.i, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i ], [ %i.kl, %bb.ca ], [ %2, %_RNvNtCsg9url7n1wdL_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i ]
  %i.kv = trunc nuw i8 %i.ku to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3603
  br i1 %i.kv, label %.loopexit, label %bb.cj

bb.cj:                                            ; preds = %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread162.i
  store i8 0, ptr %i.bi, align 1, !alias.scope !3593
  br label %bb.k

bb.ck:                                            ; preds = %bb.ag, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i, %bb.f
  %.sroa.14.0.ph = phi i64 [ undef, %bb.f ], [ %i.ks, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i ], [ undef, %bb.ag ]
  %.sroa.8.0.ph = phi i64 [ 2, %bb.f ], [ %i.kt, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i ], [ 2, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3620
  store i64 %.sroa.8.0.ph, ptr %i.b, align 8, !noalias !3620
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.14.0.ph, ptr %i.kw, align 8, !noalias !3620
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #31, !noalias !3620
  unreachable

.loopexit:                                        ; preds = %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i, %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i
  store i8 0, ptr %i.bi, align 1, !alias.scope !3593
  %i.kx = load i64, ptr %i.c, align 8, !alias.scope !3593, !noundef !5 ; 6 uses
  %i.ky = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.kz = load i64, ptr %i.j, align 8, !noundef !5 ; 4 uses
  %i.la = icmp ugt i64 %i.d, %i.kx
  %i.lb = icmp ugt i64 %i.kx, %i.kz
  %or.cond.i = or i1 %i.la, %i.lb
  br i1 %or.cond.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread20, label %bb.cl, !prof !3621

bb.cl:                                            ; preds = %.loopexit
  %i.lc = icmp eq i64 %i.d, %i.kz
  br i1 %i.lc, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.o, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.co, %bb.cm
  %i.ld = icmp eq i64 %i.kx, %i.kz
  br i1 %i.ld, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit

bb.co:                                            ; preds = %bb.cm
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.d
  %i.lf = load i8, ptr %i.le, align 1, !alias.scope !3622, !noundef !5
  %i.lg = icmp sgt i8 %i.lf, -65
  br i1 %i.lg, label %bb.cn, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread20, !prof !32

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.cn
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kx
  %i.li = load i8, ptr %i.lh, align 1, !alias.scope !3622, !noundef !5
  %i.lj = icmp sgt i8 %i.li, -65
  br i1 %i.lj, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread20, !prof !33

bb.cp:                                            ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #31
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread20: ; preds = %bb.co, %.loopexit, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ky, i64 noundef %i.kz, i64 noundef %i.d, i64 noundef %i.kx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #31
  unreachable

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread: ; preds = %bb.cn, %bb.cl, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit
  %i.lk = sub nuw i64 %i.kx, %i.d
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.d
  br label %bb.cq

bb.cq:                                            ; preds = %bb.a, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread
  %.sroa.3.0 = phi i64 [ %i.lk, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ll, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread ], [ null, %bb.a ]
  %i.lm = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ln = insertvalue { ptr, i64 } %i.lm, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ln
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !17, !noundef !5
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 15)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 10)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 8)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 10)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 8)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBT_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterB1M_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXsh_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtCs476pBYQK2Ku_11fish_fluent26FluentLocalizationLanguageuEE9next_implKb0_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %spec.select4 = select i1 %.not, ptr null, ptr %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %spec.select4, %bb.b ], [ null, %bb.a ]
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtCsaglNHct1YhZ_12fish_gettext27GettextLocalizationLanguageuEE9next_implKb0_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) ; 3 uses
  %i.e = load i64, ptr %i.a, align 8, !noundef !5
  %i.f = add i64 %i.e, -1
  store i64 %i.f, ptr %i.a, align 8
  %.not = icmp eq ptr %i.d, null
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16
  %spec.select4 = select i1 %.not, ptr null, ptr %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_2

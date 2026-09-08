Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CIndex?download=true
inline.NumInlined: 13967
inline.NumDeleted: 7767
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZN4llvm12function_refIFvvEE11callback_fnIZ35clang_parseTranslationUnit2FullArgvE3$_0EEvl":bb.a
  br i1 %.not93.i.i, label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit117.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit.i.i
  %.not.i.i109.i.i = icmp eq ptr %.pre279.i.i, %.pre281.i.i
  br i1 %.not.i.i109.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr @.str.375, ptr %.pre279.i.i, align 8, !tbaa !1236
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre279.i.i, i64 8 ; 2 uses
  store ptr %i.fl, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fm = load ptr, ptr %i.bw, align 8, !tbaa !1560 ; 4 uses
  %i.fn = ptrtoint ptr %.pre281.i.i to i64
  %i.fo = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 5 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.aj, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.370) #42
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i.i: ; preds = %bb.ai
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #37 ; 4 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fp ; 2 uses
  store ptr @.str.375, ptr %i.fy, align 8, !tbaa !1236
  %i.fz = icmp sgt i64 %i.fp, 0
  br i1 %i.fz, label %bb.ak, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i

bb.ak:                                            ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr align 8 %i.fm, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i: ; preds = %bb.ak, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i
  %i.gb = load ptr, ptr %.phi.trans.insert280.i.phi.trans.insert.i, align 8, !tbaa !1559
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.gd) #39
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.al, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i
  store ptr %i.fx, ptr %i.bw, align 8, !tbaa !1560
  store ptr %i.ga, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv ; 2 uses
  store ptr %i.ge, ptr %.phi.trans.insert280.i.phi.trans.insert.i, align 8, !tbaa !1559
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i.i

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, %bb.ah
  %i.gf = phi ptr [ %.pre281.i.i, %bb.ah ], [ %i.ge, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ] ; 3 uses
  %i.gg = phi ptr [ %i.fl, %bb.ah ], [ %i.ga, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ] ; 3 uses
  %.not.i.i110.i.i = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i110.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i.i
  store ptr @.str.376, ptr %i.gg, align 8, !tbaa !1236
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  store ptr %i.gh, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit117.i.i

bb.an:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit.i.i
  %i.gi = load ptr, ptr %i.bw, align 8, !tbaa !1560 ; 4 uses
  %i.gj = ptrtoint ptr %i.gf to i64
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 5 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775800
  br i1 %i.gm, label %bb.ao, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i111.i.i

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.370) #42
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i111.i.i: ; preds = %bb.an
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i112.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i112.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i113.i.i = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i113.i.i)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #37 ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl ; 2 uses
  store ptr @.str.376, ptr %i.gu, align 8, !tbaa !1236
  %i.gv = icmp sgt i64 %i.gl, 0
  br i1 %i.gv, label %bb.ap, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i114.i.i

bb.ap:                                            ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i111.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i114.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i114.i.i: ; preds = %bb.ap, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i111.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %.not.i17.i.i.i115.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i.i115.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i114.i.i
  %i.gx = load ptr, ptr %.phi.trans.insert280.i.phi.trans.insert.i, align 8, !tbaa !1559
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gz) #39
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i.i: ; preds = %bb.aq, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i114.i.i
  store ptr %i.gt, ptr %i.bw, align 8, !tbaa !1560
  store ptr %i.gw, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr ; 2 uses
  store ptr %i.ha, ptr %.phi.trans.insert280.i.phi.trans.insert.i, align 8, !tbaa !1559
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit117.i.i

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit117.i.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i.i, %bb.am, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit.i.i
  %i.hb = phi ptr [ %i.gf, %bb.am ], [ %i.ha, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i.i ], [ %.pre281.i.i, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.hc = phi ptr [ %i.gh, %bb.am ], [ %i.gw, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i116.i.i ], [ %.pre279.i.i, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit.i.i ] ; 3 uses
  %.not.i.i118.i.i = icmp eq ptr %i.hc, %i.hb
  br i1 %.not.i.i118.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit117.i.i
  store ptr @.str.377, ptr %i.hc, align 8, !tbaa !1236
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  store ptr %i.hd, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  %.pre282.i.i = load ptr, ptr %i.bw, align 8, !tbaa !1560
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit125.i.i

bb.as:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit117.i.i
  %i.he = load ptr, ptr %i.bw, align 8, !tbaa !1560 ; 4 uses
  %i.hf = ptrtoint ptr %i.hb to i64
  %i.hg = ptrtoint ptr %i.he to i64               ; 2 uses
  %i.hh = sub i64 %i.hf, %i.hg                    ; 5 uses
  %i.hi = icmp eq i64 %i.hh, 9223372036854775800
  br i1 %i.hi, label %bb.at, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i119.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.370) #42
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i119.i.i: ; preds = %bb.as
  %i.hj = ashr exact i64 %i.hh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i120.i.i = call i64 @llvm.umax.i64(i64 %i.hj, i64 1)
  %i.hk = add nsw i64 %.sroa.speculated.i.i.i.i120.i.i, %i.hj ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.hj
  %i.hm = call i64 @llvm.umin.i64(i64 %i.hk, i64 1152921504606846975)
  %i.hn = select i1 %i.hl, i64 1152921504606846975, i64 %i.hm ; 3 uses
  %.not.i.i.i.i121.i.i = icmp ne i64 %i.hn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i121.i.i)
  %i.ho = shl nuw nsw i64 %i.hn, 3
  %i.hp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ho) #37 ; 5 uses
  %i.hq = getelementptr inbounds i8, ptr %i.hp, i64 %i.hh ; 2 uses
  store ptr @.str.377, ptr %i.hq, align 8, !tbaa !1236
  %i.hr = icmp sgt i64 %i.hh, 0
  br i1 %i.hr, label %bb.au, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i122.i.i

bb.au:                                            ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i119.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr align 8 %i.he, i64 %i.hh, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i122.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i122.i.i: ; preds = %bb.au, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i119.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %.not.i17.i.i.i123.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i17.i.i.i123.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i124.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i122.i.i
  %i.ht = load ptr, ptr %.phi.trans.insert280.i.phi.trans.insert.i, align 8, !tbaa !1559
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = sub i64 %i.hu, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hv) #39
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i124.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i124.i.i: ; preds = %bb.av, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i122.i.i
  store ptr %i.hp, ptr %i.bw, align 8, !tbaa !1560
  store ptr %i.hs, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hn
  store ptr %i.hw, ptr %.phi.trans.insert280.i.phi.trans.insert.i, align 8, !tbaa !1559
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit125.i.i

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit125.i.i: ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i124.i.i, %bb.ar
  %i.hx = phi ptr [ %i.hd, %bb.ar ], [ %i.hs, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i124.i.i ]
  %i.hy = phi ptr [ %.pre282.i.i, %bb.ar ], [ %i.hp, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i124.i.i ] ; 2 uses
  %i.hz = load ptr, ptr %3, align 8, !tbaa !1258
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !2780
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !2782
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr null, ptr %8, align 8, !tbaa !2784
  %22 = shl i32 %i.s, 23
  %23 = ashr i32 %22, 31
  %24 = add nsw i32 %23, 2
  %i.ie = select i1 %.not.i.i, i32 0, i32 %24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.if = ptrtoint ptr %i.hx to i64
  %i.ig = ptrtoint ptr %i.hy to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = ashr exact i64 %i.ih, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %i.n, ptr %11, align 8, !tbaa !2785
  %.sroa.4234.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.q, ptr %.sroa.4234.0..sroa_idx.i.i, align 8, !tbaa !973
  call void @_ZN5clang26LibclangInvocationReporterC1ERNS_8CIndexerENS0_13OperationKindEjN4llvm8ArrayRefIPKcEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_I13CXUnsavedFileEE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(152) %i.f, i32 noundef 0, i32 noundef %i.s, ptr %i.hy, i64 %i.ii, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2810") align 8 %10, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2765") align 8 %11) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.ij = load ptr, ptr %i.bw, align 8, !tbaa !1560 ; 3 uses
  %i.ik = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !tbaa !1558
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  call void @llvm.experimental.noalias.scope.decl(metadata !2786)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !1233, !noalias !2786 ; 2 uses
  %i.it = load <2 x ptr>, ptr %i.ip, align 8, !tbaa !89, !noalias !2786
  store <2 x ptr> %i.it, ptr %13, align 16, !tbaa !89, !alias.scope !2786
  %.not.i.i.i.i126.i.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i126.i.i, label %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit125.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 3 uses
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82, !noalias !2786
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iw = load i32, ptr %i.iu, align 4, !tbaa !84, !noalias !2786
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iu, align 4, !tbaa !84, !noalias !2786
  br label %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.iy = atomicrmw volatile add ptr %i.iu, i32 1 acq_rel, align 4, !noalias !2786 ; 0 uses
  br label %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit.i.i

_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit.i.i: ; preds = %bb.ay, %bb.ax, %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit125.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !1233 ; 2 uses
  %i.jc = load <2 x ptr>, ptr %1, align 16, !tbaa !89
  store <2 x ptr> %i.jc, ptr %14, align 16, !tbaa !89
  %.not.i.i.i127.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i127.i.i, label %_ZNSt10shared_ptrIN5clang17DiagnosticOptionsEEC2ERKS2_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 3 uses
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82
  %.not.i.i.i.i128.i.i = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i.i128.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jf = load i32, ptr %i.jd, align 4, !tbaa !84
  %i.jg = add nsw i32 %i.jf, 1
  store i32 %i.jg, ptr %i.jd, align 4, !tbaa !84
  br label %_ZNSt10shared_ptrIN5clang17DiagnosticOptionsEEC2ERKS2_.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.jh = atomicrmw volatile add ptr %i.jd, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5clang17DiagnosticOptionsEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5clang17DiagnosticOptionsEEC2ERKS2_.exit.i.i: ; preds = %bb.bb, %bb.ba, %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit.i.i
  %i.ji = load ptr, ptr %3, align 8, !tbaa !1258  ; 4 uses
  store ptr %i.ji, ptr %15, align 8, !tbaa !1258
  %.not.i.i129.i.i = icmp eq ptr %i.ji, null
  br i1 %.not.i.i129.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIN5clang17DiagnosticsEngineEEC2ERKS3_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt10shared_ptrIN5clang17DiagnosticOptionsEEC2ERKS2_.exit.i.i
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !1260
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.ji, align 4, !tbaa !1260
  br label %_ZN4llvm18IntrusiveRefCntPtrIN5clang17DiagnosticsEngineEEC2ERKS3_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIN5clang17DiagnosticsEngineEEC2ERKS3_.exit.i.i: ; preds = %bb.bc, %_ZNSt10shared_ptrIN5clang17DiagnosticOptionsEEC2ERKS2_.exit.i.i
  %i.jl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5clang8CIndexer21getClangResourcesPathB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.f) #38 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !81
  store ptr %i.jm, ptr %16, align 8, !tbaa !1374
  %i.jn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !1231
  store i64 %i.jp, ptr %i.jn, align 8, !tbaa !1373
  %i.jq = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !1228, !range !87, !noundef !88
  %i.js = trunc nuw i8 %i.jr to i1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !81
  %i.jv = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !1231
  store ptr %i.ju, ptr %17, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.jw, ptr %i.jx, align 8
  %i.jy = load i8, ptr %i.f, align 8, !tbaa !1226, !range !87, !noundef !88
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = load ptr, ptr %i.bh, align 8, !tbaa !1561 ; 2 uses
  store ptr %i.ka, ptr %18, align 8, !tbaa !2788
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !1554
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.ka to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = sdiv exact i64 %i.kg, 40
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !2789
  %i.ki = load ptr, ptr %i.ip, align 8, !tbaa !1232, !noalias !2790 ; 2 uses
  %i.kj = load ptr, ptr %i.ir, align 8, !tbaa !1233, !noalias !2790 ; 9 uses
  %.not.i.i.i.i132.i.i = icmp eq ptr %i.kj, null  ; 2 uses
  br i1 %.not.i.i.i.i132.i.i, label %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIN5clang17DiagnosticsEngineEEC2ERKS3_.exit.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 3 uses
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !82, !noalias !2790
  %.not.i.i.i.i.i133.i.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i133.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.km = load i32, ptr %i.kk, align 4, !tbaa !84, !noalias !2790
  %i.kn = add nsw i32 %i.km, 1
  store i32 %i.kn, ptr %i.kk, align 4, !tbaa !84, !noalias !2790
  br label %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.ko = atomicrmw volatile add ptr %i.kk, i32 1 acq_rel, align 4, !noalias !2790 ; 0 uses
  br label %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i

_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i: ; preds = %bb.bf, %bb.be, %_ZN4llvm18IntrusiveRefCntPtrIN5clang17DiagnosticsEngineEEC2ERKS3_.exit.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 4 uses
  %i.kq = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.367, i64 3) #38
  %i.kr = call noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.kp, ptr nonnull @.str.367, i64 3, i32 noundef %i.kq) #38 ; 2 uses
  %i.ks = load ptr, ptr %i.kp, align 8, !tbaa !1247
  %i.kt = zext i32 %i.kr to i64
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kt ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1249 ; 2 uses
  %.not.i.i.i.i.i135.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i135.i.i, label %_ZN4llvm14StringMapEntryIPN5clang18PCHContainerReaderEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i.i, label %_ZN5clang22PCHContainerOperations12getRawReaderEv.exit.i.i

_ZN4llvm14StringMapEntryIPN5clang18PCHContainerReaderEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i
  %i.kw = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 20, i64 noundef 8) #38 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kx, ptr noundef nonnull align 1 dereferenceable(3) @.str.367, i64 3, i1 false)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 19
  store i8 0, ptr %i.ky, align 1, !tbaa !82
  store i64 3, ptr %i.kw, align 8, !tbaa !1251
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store ptr null, ptr %i.kz, align 8, !tbaa !1254
  store ptr %i.kw, ptr %i.ku, align 8, !tbaa !1249
  %i.la = getelementptr inbounds nuw i8, ptr %i.ki, i64 36 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !1255
  %i.lc = add i32 %i.lb, 1
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !1255
  %i.ld = call noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20) %i.kp, i32 noundef %i.kr) #38
  %i.le = load ptr, ptr %i.kp, align 8, !tbaa !1247
  %i.lf = zext i32 %i.ld to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lf
  %.pre.i.i.i.i.i = load ptr, ptr %i.lg, align 8, !tbaa !1249
  br label %_ZN5clang22PCHContainerOperations12getRawReaderEv.exit.i.i

_ZN5clang22PCHContainerOperations12getRawReaderEv.exit.i.i: ; preds = %_ZN4llvm14StringMapEntryIPN5clang18PCHContainerReaderEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i.i, %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i
  %i.lh = phi ptr [ %.pre.i.i.i.i.i, %_ZN4llvm14StringMapEntryIPN5clang18PCHContainerReaderEE6createINS_15MallocAllocatorEJEEEPS4_NS_9StringRefERT_DpOT0_.exit.i.i.i.i.i.i.i ], [ %i.kv, %_ZNK5clang8CIndexer25getPCHContainerOperationsEv.exit134.i.i ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !1256 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !78
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = call { ptr, i64 } %i.lm(ptr noundef nonnull align 8 dereferenceable(8) %i.lj) #38, !inline_history !2776
  %i.lo = extractvalue { ptr, i64 } %i.ln, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i64 16, i1 false), !tbaa.struct !2791
  %i.lp = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i8 1, ptr %i.lp, align 8, !tbaa !2793
  store ptr null, ptr %20, align 8, !tbaa !1246
  %i.lq = extractelement <4 x i1> %i.ai, i64 0
  %i.lr = extractelement <4 x i1> %i.ai, i64 1
  %i.ls = extractelement <4 x i1> %i.ai, i64 2
  %i.lt = extractelement <4 x i1> %i.ai, i64 3
  call void @_ZN5clang28CreateASTUnitFromCommandLineEPPKcS2_St10shared_ptrINS_22PCHContainerOperationsEES3_INS_17DiagnosticOptionsEEN4llvm18IntrusiveRefCntPtrINS_17DiagnosticsEngineEEENS8_9StringRefEbSC_bNS_16CaptureDiagsKindENS8_8ArrayRefISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS8_12MemoryBufferEEEEbjNS_19TranslationUnitKindEbbbNS_23SkipFunctionBodiesScopeEbbbbSt8optionalISC_EPSt10unique_ptrINS_7ASTUnitESt14default_deleteISV_EENS9_INS8_3vfs10FileSystemEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %12, ptr noundef %i.ij, ptr noundef %i.io, ptr nofree noundef nonnull align 8 dereferenceable(16) %13, ptr nofree noundef nonnull align 8 dereferenceable(16) %14, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %16, i1 noundef zeroext %i.js, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %17, i1 noundef zeroext %i.jz, i32 noundef %spec.store.select240.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2811") align 8 %18, i1 noundef zeroext true, i32 noundef %i.ie, i32 noundef %i.ac, i1 noundef zeroext %i.ae, i1 noundef zeroext %i.lt, i1 noundef zeroext true, i32 noundef %.081.i.i, i1 noundef zeroext %i.ls, i1 noundef zeroext true, i1 noundef zeroext %i.lr, i1 noundef zeroext %i.lq, ptr noundef nonnull byval(%"class.std::optional.2812") align 8 %19, ptr noundef nonnull %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %20) #38
  %i.lu = load ptr, ptr %20, align 8, !tbaa !1246 ; 4 uses
  %.not.i.i136.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i136.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit137.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN5clang22PCHContainerOperations12getRawReaderEv.exit.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = atomicrmw sub ptr %i.lv, i32 1 acq_rel, align 4
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.bh, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit137.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ly = load ptr, ptr %i.lu, align 8, !tbaa !78
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(12) %i.lu) #38, !inline_history !2769
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit137.i.i

_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit137.i.i: ; preds = %bb.bh, %bb.bg, %_ZN5clang22PCHContainerOperations12getRawReaderEv.exit.i.i
  br i1 %.not.i.i.i.i132.i.i, label %_ZNSt12__shared_ptrIN5clang22PCHContainerOperationsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.bi
end_hunk_0

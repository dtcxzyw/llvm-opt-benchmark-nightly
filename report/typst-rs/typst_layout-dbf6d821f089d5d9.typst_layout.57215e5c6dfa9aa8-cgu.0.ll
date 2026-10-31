Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB4_11SingleChild6layout:bb.a
.noexc133.i:                                      ; preds = %bb.bg
  %i.rx = load i128, ptr %i.l, align 16, !noalias !27325, !noundef !41
  %i.ry = icmp eq i128 %i.rx, -89182897448057526642358191529984070515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !27325
  br i1 %i.ry, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container9BlockElemKhd_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %.invoke417, !prof !43

bb.bh:                                            ; preds = %.noexc132.i
  %i.rz = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsm_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtBb_9BlockElemINtNtNtNtBf_11foundations7content5field13SettableFieldKhd_E5FIELDs0_04LOCK, i64 40) acquire, align 8, !noalias !27326
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container9BlockElemKhd_ECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.bi, !prof !43

bb.bi:                                            ; preds = %bb.bh
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout9container9BlockBodyEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout()
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container9BlockElemKhd_ECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %.split, !noalias !27292, !inline_history !26892

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container9BlockElemKhd_ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.bi, %bb.bh, %.noexc133.i
  %.sroa.0.0.i.i81 = phi ptr [ %i.rq, %.noexc133.i ], [ @_RNvNCNvXsm_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtBb_9BlockElemINtNtNtNtBf_11foundations7content5field13SettableFieldKhd_E5FIELDs0_04LOCK, %bb.bh ], [ @_RNvNCNvXsm_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtBb_9BlockElemINtNtNtNtBf_11foundations7content5field13SettableFieldKhd_E5FIELDs0_04LOCK, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !27288
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container9BlockElemKhd_ECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.be
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.i81, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container9BlockElemKhd_ECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.rn, %bb.be ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !27288
  %i.sb = load i64, ptr %.sroa.0.0.i, align 8, !range !58, !noalias !27292, !noundef !41
  switch i64 %i.sb, label %default.unreachable [
    i64 -1, label %bb.bk
    i64 0, label %bb.bm
    i64 1, label %bb.bn
    i64 2, label %bb.bo
  ]

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4hard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aw, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @594)
          to label %bb.bl unwind label %.split, !noalias !27292, !inline_history !26892

.sink.split:                                      ; preds = %bb.br, %bb.bv
  %.sink = phi i64 [ %i.tp, %bb.bv ], [ %i.tf, %bb.br ]
  %.sroa.453.0.copyload.i.sink = phi ptr [ %i.ts, %bb.bv ], [ %i.ti, %bb.br ]
  %.sroa.554.0.copyload.i.sink = phi i64 [ %i.tu, %bb.bv ], [ %i.tk, %bb.br ]
  store i64 %.sink, ptr %i.aw, align 8, !noalias !27288
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.453.0.copyload.i.sink, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !27288
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.554.0.copyload.i.sink, ptr %.sroa.528.0..sroa_idx.i, align 8, !noalias !27288
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %bb.bx, %bb.bk
  %i.sc = load i64, ptr %.sroa.0.0.i, align 8, !range !58, !noalias !27292, !noundef !41
  %.off.i = add nsw i64 %i.sc, -1
  %switch.i = icmp ult i64 %.off.i, -2
  br i1 %switch.i, label %bb.bz, label %bb.by

bb.bm:                                            ; preds = %bb.bj
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !27288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !27288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !27290
  invoke void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sd, i128 noundef 0, ptr noundef nonnull align 16 %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y)
          to label %bb.bp unwind label %.split

bb.bn:                                            ; preds = %bb.bj
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !27288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !27288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !27290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !27288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 16 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_RNvMs3_NtNtNtCsdaEETE4DqmE_13typst_library6layout9container9callbacksNtB5_19BlockSingleCallback4call(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.se, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.bv, i128 noundef 0, ptr noundef nonnull align 16 %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.bt unwind label %.split, !noalias !27292, !inline_history !26892

bb.bo:                                            ; preds = %bb.bj
  %i.sf = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.sg = load i8, ptr %i.sf, align 16, !range !54, !noundef !41
  %i.sh = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  %i.si = load i8, ptr %i.sh, align 1, !range !54, !noundef !41
  %i.sj = or i8 %i.si, %i.ds
  %i.sk = icmp ne i8 %i.sj, 0
  %i.sl = or i8 %i.sg, %.sroa.12146.sroa.5.0.copyload
  %i.sm = icmp ne i8 %i.sl, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !27288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !27288
  %i.so = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.sp = load <2 x double>, ptr %i.y, align 16   ; 3 uses
  %i.sq = extractelement <2 x double> %i.sp, i64 0
  %i.sr = call double @llvm.fabs.f64(double %i.sq)
  %i.ss = fcmp one double %i.sr, +inf
  %i.st = extractelement <2 x double> %i.sp, i64 1 ; 2 uses
  %i.su = call double @llvm.fabs.f64(double %i.st)
  %i.sv = fcmp one double %i.su, +inf
  %i.sw = and i1 %i.sm, %i.ss
  %i.sx = and i1 %i.sk, %i.sv
  store <2 x double> %i.sp, ptr %i.so, align 8, !noalias !27288
  %i.sy = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.sz = zext i1 %i.sw to i8
  store i8 %i.sz, ptr %i.sy, align 8, !noalias !27288
  %i.ta = getelementptr inbounds nuw i8, ptr %i.as, i64 57
  %i.tb = zext i1 %i.sx to i8
  store i8 %i.tb, ptr %i.ta, align 1, !noalias !27288
  %i.tc = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store double %i.st, ptr %i.tc, align 8, !noalias !27288
  %i.td = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.td, align 8, !noalias !27288
  %i.te = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 0, ptr %i.te, align 8, !noalias !27288
  store i64 0, ptr %i.as, align 8, !noalias !27288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !27288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !27290
  invoke void @_RNvMs8_NtNtNtCsdaEETE4DqmE_13typst_library6layout9container9callbacksNtB5_18BlockMultiCallback4call(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.sn, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.bv, i128 noundef 0, ptr noundef nonnull align 16 %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.as)
          to label %bb.bw unwind label %.split, !noalias !27292, !inline_history !26892

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !27288
  %i.tf = load i64, ptr %i.av, align 8, !range !52, !noalias !27288, !noundef !41 ; 2 uses
  %i.tg = icmp eq i64 %i.tf, 2
  %i.th = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !noalias !27288 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.tk = load i64, ptr %i.tj, align 8, !noalias !27288 ; 2 uses
  br i1 %i.tg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !27288
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %.sroa.651.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.651.0..sroa_idx.i, i64 24, i1 false), !noalias !27288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !27288
  br label %.sink.split

bb.bs:                                            ; preds = %bb.bw, %bb.bu, %bb.bq
  %.sink484 = phi ptr [ %i.ti, %bb.bq ], [ %i.ts, %bb.bu ], [ %i.ty, %bb.bw ]
  %.sink482 = phi i64 [ %i.tk, %bb.bq ], [ %i.tu, %bb.bu ], [ %i.ua, %bb.bw ]
  %i.tl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sink484, ptr %i.tl, align 8, !alias.scope !27286, !noalias !27289
  %i.tm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.sink482, ptr %i.tm, align 8, !alias.scope !27286, !noalias !27289
  store i64 2, ptr %i.bg, align 8, !alias.scope !27286, !noalias !27289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !27288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !27288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !27288
  %i.tn = load ptr, ptr %i.bb, align 8, !alias.scope !27327, !noalias !27288, !noundef !41
  %i.to = icmp eq ptr %i.tn, null
  br i1 %i.to, label %_RNCNCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect18layout_single_impl00B9_.exit.i.i, label %.invoke425

bb.bt:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !27288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !27288
  %i.tp = load i64, ptr %i.au, align 8, !range !52, !noalias !27288, !noundef !41 ; 2 uses
  %i.tq = icmp eq i64 %i.tp, 2
  %i.tr = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8, !noalias !27288 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.tu = load i64, ptr %i.tt, align 8, !noalias !27288 ; 2 uses
  br i1 %i.tq, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !27288
  br label %bb.bs

bb.bv:                                            ; preds = %bb.bt
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.629.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.629.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.0..sroa_idx.i, i64 24, i1 false), !noalias !27288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !27288
  br label %.sink.split

bb.bw:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !27288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !27288
  %i.tv = load i64, ptr %i.at, align 8, !range !70, !noalias !27288, !noundef !41 ; 2 uses
  %i.tw = icmp eq i64 %i.tv, -1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !noalias !27288 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ua = load i64, ptr %i.tz, align 8, !noalias !27288 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !27288
  br i1 %i.tw, label %bb.bs, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.tv, ptr %i.ar, align 8, !noalias !27288
  %.sroa.632.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ty, ptr %.sroa.632.0..sroa_idx33.i, align 8, !noalias !27288
  %.sroa.835.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.ua, ptr %.sroa.835.0..sroa_idx36.i, align 8, !noalias !27288
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout8fragmentNtB2_8Fragment10into_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @595)
          to label %bb.bl unwind label %.split, !noalias !27292, !inline_history !26892

bb.by:                                            ; preds = %bb.bl
  %i.ub = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store i8 1, ptr %i.ub, align 8, !noalias !27288
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bl
  %i.uc = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 5 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.uf = load <2 x i8>, ptr %i.uc, align 16
  %i.ug = trunc <2 x i8> %i.uf to <2 x i1>
  %i.uh = load <2 x double>, ptr %i.y, align 16
  %i.ui = load <2 x double>, ptr %i.ud, align 8, !noalias !27288
  %i.uj = select <2 x i1> %i.ug, <2 x double> %i.uh, <2 x double> %i.ui
  store <2 x double> %i.uj, ptr %i.ud, align 8, !noalias !27288
  %i.uk = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtB7_3rel3RelNtNtB7_3abs3AbsEE7is_zeroCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.az)
          to label %bb.ca unwind label %.split.thread, !noalias !27292, !inline_history !26892

.split.thread:                                    ; preds = %bb.dr, %.noexc138.i, %bb.bz, %bb.cb, %bb.cw, %bb.cx, %bb.cy
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.split:                                           ; preds = %.invoke417, %bb.ap, %bb.aq, %bb.au, %bb.av, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh1_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bd, %bb.bf, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bn, %bb.bo, %bb.bx, %bb.gj
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.uk, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !27328), !noalias !27289
  %i.ul = insertelement <2 x double> poison, double %.sroa.0.0.i.i.i.i59, i64 0
  %i.um = insertelement <2 x double> %i.ul, double %.sroa.0.0.i.i9.i.i, i64 1
  %i.un = insertelement <2 x double> poison, double %.sroa.0.0.i.i16.i.i, i64 0
  %i.uo = insertelement <2 x double> %i.un, double %.sroa.0.0.i.i23.i.i, i64 1
  %i.up = fadd <2 x double> %i.um, %i.uo          ; 2 uses
  %i.uq = insertelement <2 x double> poison, double %.sroa.3.0.i.i.i.i, i64 0
  %i.ur = insertelement <2 x double> %i.uq, double %.sroa.3.0.i.i8.i.i, i64 1
  %i.us = insertelement <2 x double> poison, double %.sroa.3.0.i.i15.i.i, i64 0
  %i.ut = insertelement <2 x double> %i.us, double %.sroa.3.0.i.i22.i.i, i64 1
  %i.uu = fadd <2 x double> %i.ur, %i.ut          ; 2 uses
  %i.uv = load <2 x double>, ptr %i.ud, align 8, !alias.scope !27328, !noalias !27288
  %i.uw = fcmp ord <2 x double> %i.up, zeroinitializer
  %i.ux = fcmp ord <2 x double> %i.uu, zeroinitializer
  %i.uy = select <2 x i1> %i.ux, <2 x double> %i.uu, <2 x double> zeroinitializer
  %i.uz = fadd <2 x double> %i.uy, %i.uv          ; 2 uses
  %i.va = fcmp ord <2 x double> %i.uz, zeroinitializer
  %i.vb = select <2 x i1> %i.va, <2 x double> %i.uz, <2 x double> zeroinitializer
  %i.vc = fsub <2 x double> splat (double 1.000000e+00), %i.up
  %i.vd = select <2 x i1> %i.uw, <2 x double> %i.vc, <2 x double> splat (double 1.000000e+00)
  %i.ve = fdiv <2 x double> %i.vb, %i.vd          ; 2 uses
  %i.vf = fcmp ord <2 x double> %i.ve, zeroinitializer
  %i.vg = select <2 x i1> %i.vf, <2 x double> %i.ve, <2 x double> zeroinitializer ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !27329
  %i.vh = extractelement <2 x double> %i.vg, i64 0
  %i.vi = extractelement <2 x double> %i.vg, i64 1
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtB7_3rel3RelNtNtB7_3abs3AbsEE11relative_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.az, double noundef %i.vh, double noundef %i.vi)
          to label %.noexc138.i unwind label %.split.thread, !noalias !27292, !inline_history !26892

.noexc138.i:                                      ; preds = %bb.cb
  %i.vj = load double, ptr %i.k, align 8, !noalias !27329, !noundef !41
  %i.vk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.vl = load double, ptr %i.vk, align 8, !noalias !27329, !noundef !41
  store <2 x double> %i.vg, ptr %i.ud, align 8, !alias.scope !27328, !noalias !27288
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB5_5Frame9translate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aw, double noundef %i.vj, double noundef %i.vl)
          to label %_RNvNtCs7tN9tvpkfrg_12typst_layout3pad4grow.exit.i unwind label %.split.thread, !noalias !27292, !inline_history !26892

_RNvNtCs7tN9tvpkfrg_12typst_layout3pad4grow.exit.i: ; preds = %.noexc138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !27329
  br label %bb.cc

bb.cc:                                            ; preds = %_RNvNtCs7tN9tvpkfrg_12typst_layout3pad4grow.exit.i, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !27288
  %i.vm = load ptr, ptr %i.ee, align 8, !alias.scope !27287, !noalias !27289, !nonnull !41, !noundef !41 ; 8 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 1096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !27288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !27290
  call void @llvm.experimental.noalias.scope.decl(metadata !27330), !noalias !27289
  call void @llvm.experimental.noalias.scope.decl(metadata !27331), !noalias !27289
  %i.vo = load i32, ptr %i.vn, align 8, !range !69, !alias.scope !27331, !noalias !27292, !noundef !41 ; 5 uses
  %.not.i140.i = icmp eq i32 %i.vo, -2
  br i1 %.not.i140.i, label %bb.cw, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !27332), !noalias !27289
  call void @llvm.experimental.noalias.scope.decl(metadata !27333), !noalias !27289
  %.not.i.i141.i = icmp eq i32 %i.vo, -1
  br i1 %.not.i.i141.i, label %bb.cv, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !27334), !noalias !27289
  %i.vp = icmp samesign ugt i32 %i.vo, 1
  %i.vq = zext nneg i32 %i.vo to i64
  %i.vr = add nsw i64 %i.vq, -1
  %i.vs = select i1 %i.vp, i64 %i.vr, i64 0
  switch i64 %i.vs, label %bb.cf [
    i64 0, label %bb.cg
    i64 1, label %bb.ch
    i64 2, label %bb.co
  ]

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.vt = trunc i32 %i.vo to i1
  br i1 %i.vt, label %bb.cp, label %bb.cq

bb.ch:                                            ; preds = %bb.ce
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vm, i64 1104
  %.val.i.i.i143.i = load i64, ptr %i.vu, align 8, !range !52, !alias.scope !27335, !noalias !27292, !noundef !41 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vm, i64 1112
  %.val3.i.i.i.i = load ptr, ptr %i.vv, align 8, !alias.scope !27335, !noalias !27292, !nonnull !41, !noundef !41 ; 2 uses
  %i.vw = atomicrmw add ptr %.val3.i.i.i.i, i64 1 monotonic, align 8, !noalias !27336
  %i.vx = icmp slt i64 %i.vw, 0                   ; 3 uses
  switch i64 %.val.i.i.i143.i, label %default.unreachable [
    i64 0, label %bb.ci
    i64 1, label %bb.cj
    i64 2, label %bb.ck
  ]

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.vx, label %bb.cl, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.vx, label %bb.cm, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i

bb.ck:                                            ; preds = %bb.ch
  br i1 %i.vx, label %bb.cn, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.trap(), !noalias !27289
  unreachable

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.trap(), !noalias !27289
  unreachable

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.trap(), !noalias !27289
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.vy = ptrtoint ptr %.val3.i.i.i.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i

bb.co:                                            ; preds = %bb.ce
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vm, i64 1104
  %i.wa = load ptr, ptr %i.vz, align 8, !alias.scope !27335, !noalias !27292, !nonnull !41, !noundef !41 ; 2 uses
  %i.wb = atomicrmw add ptr %i.wa, i64 1 monotonic, align 8, !noalias !27336
  %i.wc = icmp slt i64 %i.wb, 0
  br i1 %i.wc, label %bb.cu, label %bb.ct

bb.cp:                                            ; preds = %bb.cg
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vm, i64 1104
  %i.we = load ptr, ptr %i.wd, align 8, !alias.scope !27335, !noalias !27292, !nonnull !41, !noundef !41 ; 2 uses
  %i.wf = atomicrmw add ptr %i.we, i64 1 monotonic, align 8, !noalias !27336
  %i.wg = icmp slt i64 %i.wf, 0
  br i1 %i.wg, label %bb.cs, label %bb.cr

bb.cq:                                            ; preds = %bb.cg
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vm, i64 1100
  %.sroa.01.0.copyload.i.i.i.i = load i32, ptr %i.wh, align 4, !alias.scope !27335, !noalias !27292
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vm, i64 1104
  %.sroa.6.0.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !27335, !noalias !27292
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.6.0.i.i.i.i = phi ptr [ %.sroa.6.0.pre.i.i.i.i, %bb.cq ], [ %i.we, %bb.cp ]
  %.sroa.5.0.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i, %bb.cq ], [ undef, %bb.cp ]
  %.sroa.0.0.i.i.i144.i = phi i32 [ 0, %bb.cq ], [ 1, %bb.cp ]
  %.sroa.7.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.vm, i64 1112
  %.sroa.7.0.i1.i.i.i = load i64, ptr %.sroa.7.0.in.i.i.i.i, align 8, !alias.scope !27335, !noalias !27292
  %i.wi = ptrtoint ptr %.sroa.6.0.i.i.i.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.trap(), !noalias !27289
  unreachable

bb.ct:                                            ; preds = %bb.co
  %i.wj = ptrtoint ptr %i.wa to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i

bb.cu:                                            ; preds = %bb.co
  call void @llvm.trap(), !noalias !27289
  unreachable

_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.ct, %bb.cr, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i
  %.sroa.10.0.i.i.i63 = phi i64 [ %.sroa.7.0.i1.i.i.i, %bb.cr ], [ %i.vy, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ct ]
  %.sroa.7.0.i.i.i = phi i64 [ %i.wi, %bb.cr ], [ %.val.i.i.i143.i, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.wj, %bb.ct ]
  %.sroa.6.0.i.i142.i = phi i32 [ %.sroa.5.0.i.i.i.i, %bb.cr ], [ undef, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.ct ]
  %.sroa.0.0.i.i.i64 = phi i32 [ %.sroa.0.0.i.i.i144.i, %bb.cr ], [ 2, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 3, %bb.ct ]
  store i32 %.sroa.0.0.i.i.i64, ptr %i.aq, align 8, !alias.scope !27337, !noalias !27288
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.sroa.6.0.i.i142.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !alias.scope !27337, !noalias !27288
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !27337, !noalias !27288
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 %.sroa.10.0.i.i.i63, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !27337, !noalias !27288
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh3_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

bb.cv:                                            ; preds = %bb.cd
  store i32 -1, ptr %i.aq, align 8, !alias.scope !27337, !noalias !27288
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh3_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit.i

bb.cw:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !27338), !noalias !27289
  %i.wk = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 3)
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline4box_10layout_box:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false), !noalias !44209
  %i.ew = trunc nuw i64 %.sroa.7222.0.copyload to i1 ; 2 uses
  br i1 %i.ew, label %bb.t, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i

bb.t:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i
  %i.ex = extractelement <2 x double> %i.eq, i64 0
  %i.ey = extractelement <2 x double> %i.eq, i64 1
  %i.ez = invoke noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.8223.0.copyload, double noundef %i.ex, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i unwind label %.split

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i: ; preds = %bb.t, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0.i.i9.i = phi double [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.ey, %bb.t ] ; 2 uses
  %.sroa.537.0.i = phi double [ undef, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.ez, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !44208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !44210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false), !noalias !44211
  %i.fa = trunc nuw i64 %.sroa.11.0.copyload to i1 ; 2 uses
  br i1 %i.fa, label %bb.u, label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i

bb.u:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i
  %i.fb = extractelement <2 x double> %i.ep, i64 0
  %i.fc = extractelement <2 x double> %i.ep, i64 1
  %i.fd = invoke noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.12226.0.copyload, double noundef %i.fb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i unwind label %.split

_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i: ; preds = %bb.u, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i
  %.sroa.0.0.i.i16.i = phi double [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i ], [ %i.fc, %bb.u ] ; 2 uses
  %.sroa.548.0.i = phi double [ undef, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit12.i ], [ %i.fd, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !44210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !44212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false), !noalias !44213
  %i.fe = trunc nuw i64 %.sroa.15.0.copyload to i1 ; 2 uses
  br i1 %i.fe, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i
  %i.ff = extractelement <2 x double> %i.eo, i64 0
  %i.fg = extractelement <2 x double> %i.eo, i64 1
  %i.fh = invoke noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %.sroa.16228.0.copyload, double noundef %i.ff, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.w unwind label %.split

bb.w:                                             ; preds = %bb.v, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i
  %.sroa.0.0.i.i23.i = phi double [ 0.000000e+00, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i ], [ %i.fg, %bb.v ] ; 2 uses
  %.sroa.559.0.i = phi double [ undef, %_RNCNvXs8_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles7Resolve7resolve0Cs7tN9tvpkfrg_12typst_layout.exit19.i ], [ %i.fh, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !44212
  %.sroa.3.0.i.i.i = select i1 %i.es, double %.sroa.5.0.i, double 0.000000e+00 ; 2 uses
  %.sroa.3.0.i.i8.i = select i1 %i.ew, double %.sroa.537.0.i, double 0.000000e+00 ; 2 uses
  %.sroa.3.0.i.i15.i = select i1 %i.fa, double %.sroa.548.0.i, double 0.000000e+00 ; 2 uses
  %.sroa.3.0.i.i22.i = select i1 %i.fe, double %.sroa.559.0.i, double 0.000000e+00 ; 2 uses
  store double %.sroa.0.0.i.i.i133, ptr %i.aq, align 8, !alias.scope !44214
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store double %.sroa.3.0.i.i.i, ptr %i.fi, align 8, !alias.scope !44214
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store double %.sroa.0.0.i.i9.i, ptr %i.fj, align 8, !alias.scope !44214
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store double %.sroa.3.0.i.i8.i, ptr %i.fk, align 8, !alias.scope !44214
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store double %.sroa.0.0.i.i16.i, ptr %i.fl, align 8, !alias.scope !44214
  %i.fm = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store double %.sroa.3.0.i.i15.i, ptr %i.fm, align 8, !alias.scope !44214
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store double %.sroa.0.0.i.i23.i, ptr %i.fn, align 8, !alias.scope !44214
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store double %.sroa.3.0.i.i22.i, ptr %i.fo, align 8, !alias.scope !44214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  br i1 %.sroa.0.0234, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store <2 x double> %i.cj, ptr %i.fp, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store double %.sroa.12.1, ptr %.sroa.5232.0..sroa_idx, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %storemerge = phi i64 [ 1, %bb.x ], [ 0, %bb.w ]
  store i64 %storemerge, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  invoke fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4flow5block15unbreakable_pod(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab, double noundef %6, double noundef %7)
          to label %bb.z unwind label %.split

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.fr = load i64, ptr %i.fq, align 16, !range !49, !noundef !41
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit

bb.ab:                                            ; preds = %bb.z
  %i.fu = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtB9_7BoxElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 9)
          to label %.noexc139 unwind label %.split ; 4 uses

.noexc139:                                        ; preds = %bb.ab
  %.not.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.noexc139
  call void @llvm.experimental.noalias.scope.decl(metadata !44215)
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !44215, !noalias !44216, !nonnull !41, !noundef !41 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !44215, !noalias !44216, !nonnull !41, !align !46, !noundef !41
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !invariant.load !41, !noalias !44217, !nonnull !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !44218
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !invariant.load !41, !noalias !44217, !nonnull !41
  invoke void %i.gb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noundef nonnull %i.fv) #58
          to label %.noexc140 unwind label %.split, !inline_history !44074

.noexc140:                                        ; preds = %bb.ac
  %i.gc = load i128, ptr %i.q, align 16, !noalias !44218, !noundef !41
  %i.gd = icmp eq i128 %i.gc, 161301842777087811557496882670215889878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !44218
  br i1 %i.gd, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit, label %.invoke, !prof !43

bb.ad:                                            ; preds = %.noexc139
  %i.ge = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsf_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtBb_7BoxElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh9_E5FIELDs0_04LOCK, i64 24) acquire, align 8, !noalias !44219
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.ae, !prof !43

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 @_RNvNCNvXsf_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtBb_7BoxElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh9_E5FIELDs0_04LOCK)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit unwind label %.split

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ae, %.noexc140, %bb.ad, %bb.aa
  %.sroa.0.0 = phi ptr [ %i.ft, %bb.aa ], [ %i.fv, %.noexc140 ], [ @_RNvNCNvXsf_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtBb_7BoxElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh9_E5FIELDs0_04LOCK, %bb.ad ], [ @_RNvNCNvXsf_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtBb_7BoxElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh9_E5FIELDs0_04LOCK, %bb.ae ] ; 2 uses
  %i.gg = load ptr, ptr %.sroa.0.0, align 8, !noundef !41
  %.not101 = icmp eq ptr %i.gg, null
  br i1 %.not101, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0, i128 noundef %3, ptr noundef align 16 %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
          to label %bb.ah unwind label %.split

bb.ag:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_6layout9container7BoxElemKh9_ECs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4hard(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ao, double noundef 0.000000e+00, double noundef 0.000000e+00, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @658)
          to label %bb.ak unwind label %.split

bb.ah:                                            ; preds = %bb.af
  %i.gh = load i64, ptr %i.an, align 8, !range !52, !noundef !41 ; 2 uses
  %i.gi = icmp eq i64 %i.gh, 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8            ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.gm = load i64, ptr %i.gl, align 8            ; 2 uses
  br i1 %i.gi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gk, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.gm, ptr %i.go, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.gp = load ptr, ptr %i.as, align 8, !alias.scope !44220, !noundef !41
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit143, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit143.sink.split

bb.aj:                                            ; preds = %bb.ah
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.631.0..sroa_idx, i64 16, i1 false)
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 41
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.832.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  store i64 %i.gh, ptr %i.ao, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.gk, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %i.gm, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ak

.split.thread:                                    ; preds = %bb.cc, %.noexc145, %bb.ak, %bb.am, %bb.bh, %bb.bi, %bb.bj
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.split:                                           ; preds = %.invoke, %bb.y, %bb.af, %bb.ag, %bb.f, %bb.g, %bb.k, %bb.l, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh1_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit, %bb.s, %bb.t, %bb.u, %bb.v, %bb.ab, %bb.ac, %bb.ae, %bb.fn
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 4 uses
  %i.gu = load <2 x i8>, ptr %i.gr, align 16
  %i.gv = trunc <2 x i8> %i.gu to <2 x i1>
  %i.gw = load <2 x double>, ptr %i.aa, align 16
  %i.gx = load <2 x double>, ptr %i.gs, align 8
  %i.gy = select <2 x i1> %i.gv, <2 x double> %i.gw, <2 x double> %i.gx
  store <2 x double> %i.gy, ptr %i.gs, align 8
  %i.gz = invoke fastcc noundef zeroext i1 @_RNvMs2_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtB7_3rel3RelNtNtB7_3abs3AbsEE7is_zeroCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aq)
          to label %bb.al unwind label %.split.thread

bb.al:                                            ; preds = %bb.ak
  br i1 %i.gz, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !44221)
  %i.ha = insertelement <2 x double> poison, double %.sroa.0.0.i.i.i133, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %.sroa.0.0.i.i9.i, i64 1
  %i.hc = insertelement <2 x double> poison, double %.sroa.0.0.i.i16.i, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %.sroa.0.0.i.i23.i, i64 1
  %i.he = fadd <2 x double> %i.hb, %i.hd          ; 2 uses
  %i.hf = insertelement <2 x double> poison, double %.sroa.3.0.i.i.i, i64 0
  %i.hg = insertelement <2 x double> %i.hf, double %.sroa.3.0.i.i8.i, i64 1
  %i.hh = insertelement <2 x double> poison, double %.sroa.3.0.i.i15.i, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %.sroa.3.0.i.i22.i, i64 1
  %i.hj = fadd <2 x double> %i.hg, %i.hi          ; 2 uses
  %i.hk = load <2 x double>, ptr %i.gs, align 8, !alias.scope !44221
  %i.hl = fcmp ord <2 x double> %i.he, zeroinitializer
  %i.hm = fcmp ord <2 x double> %i.hj, zeroinitializer
  %i.hn = select <2 x i1> %i.hm, <2 x double> %i.hj, <2 x double> zeroinitializer
  %i.ho = fadd <2 x double> %i.hn, %i.hk          ; 2 uses
  %i.hp = fcmp ord <2 x double> %i.ho, zeroinitializer
  %i.hq = select <2 x i1> %i.hp, <2 x double> %i.ho, <2 x double> zeroinitializer
  %i.hr = fsub <2 x double> splat (double 1.000000e+00), %i.he
  %i.hs = select <2 x i1> %i.hl, <2 x double> %i.hr, <2 x double> splat (double 1.000000e+00)
  %i.ht = fdiv <2 x double> %i.hq, %i.hs          ; 2 uses
  %i.hu = fcmp ord <2 x double> %i.ht, zeroinitializer
  %i.hv = select <2 x i1> %i.hu, <2 x double> %i.ht, <2 x double> zeroinitializer ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !44222
  %i.hw = extractelement <2 x double> %i.hv, i64 0
  %i.hx = extractelement <2 x double> %i.hv, i64 1
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtB7_3rel3RelNtNtB7_3abs3AbsEE11relative_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aq, double noundef %i.hw, double noundef %i.hx)
          to label %.noexc145 unwind label %.split.thread

.noexc145:                                        ; preds = %bb.am
  %i.hy = load double, ptr %i.p, align 8, !noalias !44222, !noundef !41
  %i.hz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ia = load double, ptr %i.hz, align 8, !noalias !44222, !noundef !41
  store <2 x double> %i.hv, ptr %i.gs, align 8, !alias.scope !44221
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB5_5Frame9translate(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ao, double noundef %i.hy, double noundef %i.ia)
          to label %_RNvNtCs7tN9tvpkfrg_12typst_layout3pad4grow.exit unwind label %.split.thread

_RNvNtCs7tN9tvpkfrg_12typst_layout3pad4grow.exit: ; preds = %.noexc145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44222
  br label %bb.an

bb.an:                                            ; preds = %_RNvNtCs7tN9tvpkfrg_12typst_layout3pad4grow.exit, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aw, i64 1064
  call void @llvm.experimental.noalias.scope.decl(metadata !44223)
  call void @llvm.experimental.noalias.scope.decl(metadata !44224)
  %i.ic = load i32, ptr %i.ib, align 8, !range !69, !alias.scope !44224, !noundef !41 ; 5 uses
  %.not.i147 = icmp eq i32 %i.ic, -2
  br i1 %.not.i147, label %bb.bh, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !44225)
  call void @llvm.experimental.noalias.scope.decl(metadata !44226)
  %.not.i.i148 = icmp eq i32 %i.ic, -1
  br i1 %.not.i.i148, label %bb.bg, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !44227)
  %i.id = icmp samesign ugt i32 %i.ic, 1
  %i.ie = zext nneg i32 %i.ic to i64
  %i.if = add nsw i64 %i.ie, -1
  %i.ig = select i1 %i.id, i64 %i.if, i64 0
  switch i64 %i.ig, label %bb.aq [
    i64 0, label %bb.ar
    i64 1, label %bb.as
    i64 2, label %bb.az
  ]

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ih = trunc i32 %i.ic to i1
  br i1 %i.ih, label %bb.ba, label %bb.bb

bb.as:                                            ; preds = %bb.ap
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aw, i64 1072
  %.val.i.i.i150 = load i64, ptr %i.ii, align 16, !range !52, !alias.scope !44228, !noundef !41 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.aw, i64 1080
  %.val3.i.i.i = load ptr, ptr %i.ij, align 8, !alias.scope !44228, !nonnull !41, !noundef !41 ; 2 uses
  %i.ik = atomicrmw add ptr %.val3.i.i.i, i64 1 monotonic, align 8, !noalias !44229
  %i.il = icmp slt i64 %i.ik, 0                   ; 3 uses
  switch i64 %.val.i.i.i150, label %default.unreachable295 [
    i64 0, label %bb.at
    i64 1, label %bb.au
    i64 2, label %bb.av
  ]

default.unreachable295:                           ; preds = %bb.eu, %bb.ep, %bb.ej, %bb.cg, %bb.bn, %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  br i1 %i.il, label %bb.aw, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  br i1 %i.il, label %bb.ax, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i

bb.av:                                            ; preds = %bb.as
  br i1 %i.il, label %bb.ay, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i

bb.aw:                                            ; preds = %bb.at
  call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %bb.au
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.av
  call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.im = ptrtoint ptr %.val3.i.i.i to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.az:                                            ; preds = %bb.ap
  %i.in = getelementptr inbounds nuw i8, ptr %i.aw, i64 1072
  %i.io = load ptr, ptr %i.in, align 16, !alias.scope !44228, !nonnull !41, !noundef !41 ; 2 uses
  %i.ip = atomicrmw add ptr %i.io, i64 1 monotonic, align 8, !noalias !44229
  %i.iq = icmp slt i64 %i.ip, 0
  br i1 %i.iq, label %bb.bf, label %bb.be

bb.ba:                                            ; preds = %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 1072
  %i.is = load ptr, ptr %i.ir, align 16, !alias.scope !44228, !nonnull !41, !noundef !41 ; 2 uses
  %i.it = atomicrmw add ptr %i.is, i64 1 monotonic, align 8, !noalias !44229
  %i.iu = icmp slt i64 %i.it, 0
  br i1 %i.iu, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ar
  %i.iv = getelementptr inbounds nuw i8, ptr %i.aw, i64 1068
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %i.iv, align 4, !alias.scope !44228
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 1072
  %.sroa.6.0.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !alias.scope !44228
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.6.0.i.i.i151 = phi ptr [ %.sroa.6.0.pre.i.i.i, %bb.bb ], [ %i.is, %bb.ba ]
  %.sroa.5.0.i.i.i152 = phi i32 [ %.sroa.01.0.copyload.i.i.i, %bb.bb ], [ undef, %bb.ba ]
  %.sroa.0.0.i.i.i153 = phi i32 [ 0, %bb.bb ], [ 1, %bb.ba ]
  %.sroa.7.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 1080
  %.sroa.7.0.i1.i.i = load i64, ptr %.sroa.7.0.in.i.i.i, align 8, !alias.scope !44228
  %i.iw = ptrtoint ptr %.sroa.6.0.i.i.i151 to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.az
  %i.ix = ptrtoint ptr %i.io to i64
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.bf:                                            ; preds = %bb.az
  call void @llvm.trap()
  unreachable

_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.be, %bb.bc, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i
  %.sroa.10.0.i.i = phi i64 [ %.sroa.7.0.i1.i.i, %bb.bc ], [ %i.im, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.be ]
  %.sroa.7.0.i.i = phi i64 [ %i.iw, %bb.bc ], [ %.val.i.i.i150, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i ], [ %i.ix, %bb.be ]
  %.sroa.6.0.i.i149 = phi i32 [ %.sroa.5.0.i.i.i152, %bb.bc ], [ undef, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.be ]
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.0.i.i.i153, %bb.bc ], [ 2, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i ], [ 3, %bb.be ]
  store i32 %.sroa.0.0.i.i, ptr %i.am, align 8, !alias.scope !44230
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %.sroa.6.0.i.i149, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !44230
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.7.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !44230
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !44230
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh3_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit

bb.bg:                                            ; preds = %bb.ao
  store i32 -1, ptr %i.am, align 8, !alias.scope !44230
  br label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container7BoxElemKh3_E10get_clonedCs7tN9tvpkfrg_12typst_layout.exit

bb.bh:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !44231)
  %i.iy = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9container1__NtB9_7BoxElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 3)
          to label %.noexc158 unwind label %.split.thread ; 4 uses

.noexc158:                                        ; preds = %bb.bh
  %.not.i.i.i154 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i154, label %bb.cb, label %bb.bi

bb.bi:                                            ; preds = %.noexc158
  call void @llvm.experimental.noalias.scope.decl(metadata !44232)
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !44232, !noalias !44233, !nonnull !41, !noundef !41 ; 9 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
end_hunk_1

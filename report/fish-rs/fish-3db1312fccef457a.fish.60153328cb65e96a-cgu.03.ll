Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2355
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvXNtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB2_5MatchNtB4_16StringSubCommand6handle:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.lg = load i64, ptr %i.gy, align 8, !alias.scope !3456, !noundef !5 ; 3 uses
  %i.lh = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !3456, !noundef !5
  %i.li = icmp eq i64 %i.lg, %i.lh
  br i1 %i.li, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #36
          to label %bb.ds unwind label %bb.di

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.lj = load ptr, ptr %i.gx, align 8, !alias.scope !3456, !nonnull !5, !noundef !5
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.lg
  store i8 32, ptr %i.lk, align 1
  %i.ll = add i64 %i.lg, 1
  store i64 %i.ll, ptr %i.gy, align 8, !alias.scope !3456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvMNtCs8n0tpEuULLm_5pcre25errorNtB2_5Error13error_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %bb.dt unwind label %bb.di

bb.dt:                                            ; preds = %bb.ds
  invoke void @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs8frGy5WneL6_4fish4flog16FloggableDisplay11to_flog_strBI_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at)
          to label %bb.dv unwind label %bb.du

bb.du:                                            ; preds = %bb.dv, %bb.dt
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #35
          to label %.body102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ln = load ptr, ptr %i.hj, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.lo = load i64, ptr %i.au, align 8, !range !12, !noundef !5
  %i.lp = load i64, ptr %i.hk, align 8, !noundef !5 ; 2 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  call void @llvm.assume(i1 %i.lq)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  store ptr %i.ln, ptr %i.ak, align 8
  store i64 %i.lo, ptr %i.hl, align 8
  store ptr %i.ln, ptr %i.hm, align 8
  store ptr %i.lr, ptr %i.hn, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ak)
          to label %bb.dw unwind label %bb.du

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body102 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.dw
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.di

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.lu = load i64, ptr %i.gy, align 8, !alias.scope !3457, !noundef !5 ; 3 uses
  %i.lv = load i64, ptr %i.ax, align 8, !range !12, !alias.scope !3457, !noundef !5
  %i.lw = icmp eq i64 %i.lu, %i.lv
  br i1 %i.lw, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #36
          to label %bb.ea unwind label %bb.di

bb.ea:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.dz
  %i.lx = load ptr, ptr %i.gx, align 8, !alias.scope !3457, !nonnull !5, !noundef !5
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lu
  store i8 10, ptr %i.ly, align 1
  %i.lz = add i64 %i.lu, 1                        ; 2 uses
  store i64 %i.lz, ptr %i.gy, align 8, !alias.scope !3457
  %i.ma = load ptr, ptr %i.gx, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.lz)
          to label %bb.eb unwind label %bb.di

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ed unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body unwind label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp310.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ec
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.dg

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gg, %bb.gp, %bb.fx, %.body111, %.body, %.body102, %bb.du, %bb.ff, %.thread266, %bb.fo, %bb.fp, %bb.fs, %.body150, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %.body165, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit160, %.body181, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit176, %.thread263, %bb.fr
  %lpad.loopexit.split-lp387 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.ef:                                            ; preds = %_RNvMs1_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB5_15WildCardMatcher14report_matches.exit.i, %bb.de, %bb.dg
  %i.md = load ptr, ptr %i.be, align 8, !alias.scope !3458, !noundef !5
  %i.me = icmp eq ptr %i.md, null
  %.sroa.8.0..sroa_idx.val = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.12229.0..sroa_idx.val = load i64, ptr %.sroa.12229.0..sroa_idx, align 8
  %.sroa.0.0.i110 = select i1 %i.me, i64 %.sroa.8.0..sroa_idx.val, i64 %.sroa.12229.0..sroa_idx.val ; 2 uses
  %i.mf = load i8, ptr %i.hq, align 1, !range !4, !noundef !5
  %i.mg = trunc nuw i8 %i.mf to i1
  %i.mh = icmp ne i64 %.sroa.0.0.i110, 0
  %or.cond10 = and i1 %i.mh, %i.mg
  br i1 %or.cond10, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.mi = load i64, ptr %i.hr, align 8, !noundef !5 ; 2 uses
  %.not44 = icmp ne i64 %i.mi, 0
  %i.mj = icmp eq i64 %i.mi, %.sroa.0.0.i110
  %or.cond275 = and i1 %.not44, %i.mj
  br i1 %or.cond275, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.mk = load i64, ptr %i.az, align 8, !range !8, !alias.scope !3459, !noundef !5
  %i.ml = icmp eq i64 %i.mk, -1
  br i1 %i.ml, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.mm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body111 unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ei
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.el:                                            ; preds = %bb.eg
  %i.mo = load i64, ptr %i.az, align 8, !range !8, !alias.scope !3460, !noundef !5
  %i.mp = icmp eq i64 %i.mo, -1
  br i1 %i.mp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit119, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i115 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.mq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body111 unwind label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i115: ; preds = %bb.em
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit119 unwind label %.loopexit.split-lp304.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit119: ; preds = %bb.el, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.bf

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.eh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %.loopexit308

bb.ep:                                            ; preds = %.loopexit308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.ms = load ptr, ptr %i.be, align 8, !noundef !5
  %i.mt = icmp eq ptr %i.ms, null
  %.sroa.12229.0..sroa_idx.val277 = load i64, ptr %.sroa.12229.0..sroa_idx, align 8
  br i1 %i.mt, label %.thread, label %bb.er

.thread:                                          ; preds = %bb.ep
  %.sroa.8.0..sroa_idx.val276 = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.not55259 = icmp eq i64 %.sroa.8.0..sroa_idx.val276, 0
  %.260 = zext i1 %.not55259 to i32
  br label %bb.fk

bb.eq:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.pr = load ptr, ptr %i.be, align 8
  %.not55 = icmp eq i64 %.sroa.12229.0..sroa_idx.val277, 0
  %. = zext i1 %.not55 to i32                     ; 2 uses
  %i.mu = icmp eq ptr %.pr, null
  br i1 %i.mu, label %bb.fk, label %bb.fl

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10227.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai)
          to label %bb.es unwind label %bb.bd

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.4.0..sroa_idx.i.i124 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  br label %bb.et

bb.et:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBX_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %bb.eu unwind label %bb.fe

.thread263:                                       ; preds = %bb.fi, %bb.ff, %bb.fe, %.thread266
  %.pn50.pn = phi { ptr, i32 } [ %eh.lpad-body131269, %.thread266 ], [ %i.oy, %bb.fe ], [ %i.pd, %bb.fi ], [ %i.oz, %bb.ff ]
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBX_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1B_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eu:                                            ; preds = %bb.et
  %i.na = load i64, ptr %i.ar, align 8, !range !8, !noundef !5
  %.not49 = icmp eq i64 %i.na, -1
  br i1 %.not49, label %bb.fd, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.mv, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !3461)
  %.val.i = load ptr, ptr %i.mw, align 8, !alias.scope !3461, !nonnull !5, !noundef !5 ; 2 uses
  %.val1.i = load i64, ptr %i.mx, align 8, !alias.scope !3461, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3462
  store i64 0, ptr %i.d, align 8, !noalias !3462
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i124, align 8, !noalias !3462
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3462
  %i.nb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  %i.nc = lshr i64 %.val1.i, 2
  %i.nd = and i64 %.val1.i, 3
  %.not.i.i.i.i = icmp ne i64 %i.nd, 0
  %i.ne = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.nc, %i.ne
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %.noexc.i.i128 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i125.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3462

.noexc.i.i128:                                    ; preds = %bb.ev
  call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  %.not.i9.i.i.i.i.i = icmp samesign eq i64 %.val1.i, 0
  br i1 %.not.i9.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i.i128, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i ], [ %.val.i, %.noexc.i.i128 ] ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 1 ; 3 uses
  %i.ng = load i8, ptr %.sroa.0.010.i.i.i.i.i, align 1, !noalias !3466, !noundef !5 ; 5 uses
  %i.nh = icmp sgt i8 %i.ng, -1
  br i1 %i.nh, label %bb.ew, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ni = and i8 %i.ng, 31
  %i.nj = zext nneg i8 %i.ni to i32               ; 3 uses
  %i.nk = icmp ne ptr %i.nf, %i.nb
  call void @llvm.assume(i1 %i.nk)
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 2 ; 3 uses
  %i.nm = load i8, ptr %i.nf, align 1, !noalias !3466, !noundef !5
  %i.nn = shl nuw nsw i32 %i.nj, 6
  %i.no = and i8 %i.nm, 63
  %i.np = zext nneg i8 %i.no to i32               ; 2 uses
  %i.nq = or disjoint i32 %i.nn, %i.np
  %i.nr = icmp samesign ugt i8 %i.ng, -33
  br i1 %i.nr, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, label %bb.ex

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ns = zext nneg i8 %i.ng to i32
  br label %bb.ex

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.nt = icmp ne ptr %i.nl, %i.nb
  call void @llvm.assume(i1 %i.nt)
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.nv = load i8, ptr %i.nl, align 1, !noalias !3466, !noundef !5
  %i.nw = shl nuw nsw i32 %i.np, 6
  %i.nx = and i8 %i.nv, 63
  %i.ny = zext nneg i8 %i.nx to i32
  %i.nz = or disjoint i32 %i.nw, %i.ny            ; 2 uses
  %i.oa = shl nuw nsw i32 %i.nj, 12
  %i.ob = or disjoint i32 %i.nz, %i.oa
  %i.oc = icmp samesign ugt i8 %i.ng, -17
  br i1 %i.oc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, label %bb.ex

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i
  %i.od = icmp ne ptr %i.nu, %i.nb
  call void @llvm.assume(i1 %i.od)
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.of = load i8, ptr %i.nu, align 1, !noalias !3466, !noundef !5
  %i.og = shl nuw nsw i32 %i.nj, 18
  %i.oh = and i32 %i.og, 1835008
  %i.oi = shl nuw nsw i32 %i.nz, 6
  %i.oj = and i8 %i.of, 63
  %i.ok = zext nneg i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = or disjoint i32 %i.ol, %i.oh
  br label %bb.ex

bb.ex:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.ew, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.nl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.nu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.oe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.nf, %bb.ew ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.nq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ob, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.om, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.ns, %bb.ew ]
  %i.on = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3467, !noalias !3462, !noundef !5 ; 3 uses
  %i.oo = load i64, ptr %i.d, align 8, !range !12, !alias.scope !3467, !noalias !3462, !noundef !5
  %i.op = icmp eq i64 %i.on, %i.oo
  br i1 %i.op, label %bb.ey, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #36
          to label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i125.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3462

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.ey, %bb.ex
  %i.oq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i124, align 8, !alias.scope !3467, !noalias !3462, !nonnull !5, !noundef !5
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.on
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.or, align 4, !noalias !3462
  %i.os = add i64 %i.on, 1
  store i64 %i.os, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3467, !noalias !3462
  %.not.i.i.i.i.i.i129 = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i, %i.nb
  br i1 %.not.i.i.i.i.i.i129, label %.loopexit.i, label %.lr.ph.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i125.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ey, %bb.ev
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #35
          to label %.body.i unwind label %bb.ez, !noalias !3462

bb.ez:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i125.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !3462
  unreachable

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i125.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #35
          to label %.thread266 unwind label %bb.fc, !noalias !3468

.loopexit.i:                                      ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i, %.noexc.i.i128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3462
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.fa, !noalias !3468

bb.fa:                                            ; preds = %.loopexit.i
  %i.ou = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.thread266 unwind label %bb.fb, !noalias !3468

bb.fb:                                            ; preds = %bb.fa
  %i.ov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !3468
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %.loopexit.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.fg unwind label %.thread273

.thread273:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.thread266

bb.fc:                                            ; preds = %.body.i
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32, !noalias !3468
  unreachable

bb.fd:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  invoke void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBX_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %bb.eq unwind label %bb.bd

bb.fe:                                            ; preds = %bb.et, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %.thread263
end_hunk_0

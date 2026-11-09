Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.08?download=true
inline.NumInlined: 1693
inline.NumDeleted: 788
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEs_0B6_:bb.a
  %.not45 = icmp eq ptr %i.ad, null
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvNtCs8CCKhUbE3L4_9crossterm8terminal4size(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m)
  %i.ae = load i16, ptr %i.m, align 8, !range !27, !noundef !9
  %i.af = trunc nuw i16 %i.ae to i1
  br i1 %i.af, label %bb.m, label %bb.l

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvNtCsG258MDvU3F_3std2fs4readRNtNtB4_4path4PathECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @_RINvXNtCscK5W4trzgIe_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1J_E12with_contextNtNtB1f_6string6StringNCNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtBD_6option6OptionB2J_ENtNtCsG258MDvU3F_3std4path7PathBufEEEs_0s_0EB3e_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ag = load i64, ptr %i.j, align 8, !range !19, !noundef !9 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  br i1 %i.ah, label %bb.q, label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !noundef !9
  %i.am = zext i16 %i.al to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1642
  %i.aq = and i64 %i.ap, 3
  switch i64 %i.aq, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit
    i64 3, label %bb.n
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit
    i64 1, label %bb.o
  ], !prof !8

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp ult ptr %i.ao, inttoptr (i64 188978561024 to ptr)
  %i.as = and i64 %i.ap, 1095216660480
  %i.at = icmp ne i64 %i.as, 1095216660480
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.assume(i1 %i.at)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit

bb.o:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %i.ao, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !1643, !noalias !1642
  store i8 3, ptr %i.a, align 8, !alias.scope !1643, !noalias !1642
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av), !noalias !1642
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.m, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1642
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit
  %.sroa.02.071 = phi i64 [ 80, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECskIqAKC4t9Ft_2yr.exit ], [ %i.am, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvXs_NtCskIqAKC4t9Ft_2yr8commandsNtB4_12CompileStateNtNtB6_4walk4Draw4draw(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, i64 noundef %.sroa.02.071)
  call void @_RINvMs_NtCsfg5wIEEXgBO_9indicatif12progress_barNtB5_11ProgressBar11set_messageNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.k

bb.q:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.le

bb.r:                                             ; preds = %bb.k
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.541.0.copyload = load i64, ptr %.sroa.541.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.ag, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.541.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.aj, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.541.0.copyload, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %i.ay, align 8
  store i64 -1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.s unwind label %bb.li

bb.s:                                             ; preds = %bb.r
  %i.az = load i64, ptr %i.b, align 8, !range !14, !noundef !9
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.t, label %bb.u, !prof !7

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #28
          to label %bb.lh unwind label %bb.li

bb.u:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !9, !noundef !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvMs0_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_10SourceCode11with_originReECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.be)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !9, !align !10, !noundef !9
  %i.bh = invoke noundef zeroext i1 @_RNvMNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 17)
          to label %bb.x unwind label %.thread94

.thread94:                                        ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i, %bb.y
  %lpad.thr_comm92 = landingpad { ptr, i32 }
          cleanup
  br label %.thread77

bb.w:                                             ; preds = %bb.u, %._crit_edge
  %lpad.thr_comm.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.x:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  br i1 %i.bh, label %bb.y, label %._crit_edge

._crit_edge:                                      ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  invoke void @_RINvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB6_8Compiler10add_sourceNtB6_10SourceCodeECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.d)
          to label %bb.af unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.z unwind label %.thread94

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs7gfv9tzbXmh_6yara_x8compilerNtB5_8Compiler13new_namespace(ptr noalias nofree noundef nonnull align 8 dereferenceable(3296) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.bn)
          to label %bb.ab unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #23
          to label %.thread77 unwind label %bb.lf

bb.ab:                                            ; preds = %bb.z
  %i.bq = load i64, ptr %i.f, align 8, !range !19, !alias.scope !1644, !noundef !9
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread77 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit unwind label %.thread94

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.ab, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %._crit_edge

bb.af:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val52 = load i64, ptr %i.e, align 8, !range !1645, !noundef !9 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val53 = load ptr, ptr %i.bu, align 8          ; 142 uses
  %3 = icmp eq i64 %.val52, -1
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val53) ]
  switch i64 %.val52, label %4 [
    i64 0, label %.invoke.invoke.i.i
    i64 1, label %bb.at
    i64 2, label %bb.au
    i64 3, label %bb.bb
    i64 4, label %bb.bh
    i64 5, label %.invoke.invoke.i.i
    i64 6, label %bb.bq
    i64 7, label %bb.bw
    i64 8, label %bb.cd
    i64 9, label %bb.cj
    i64 10, label %.invoke.invoke.i.i
    i64 11, label %bb.cq
    i64 12, label %.invoke.invoke.i.i
    i64 13, label %bb.cw
    i64 14, label %bb.dc
    i64 15, label %bb.di
    i64 16, label %bb.do
    i64 17, label %bb.du
    i64 18, label %bb.ea
    i64 19, label %bb.ej
    i64 20, label %bb.ep
    i64 21, label %bb.fd
    i64 22, label %bb.fr
    i64 23, label %bb.fx
    i64 24, label %bb.gh
    i64 25, label %bb.gn
    i64 26, label %bb.gt
    i64 27, label %.invoke.invoke.i.i
    i64 28, label %.invoke.invoke.i.i
    i64 29, label %bb.hc
    i64 30, label %bb.hl
    i64 31, label %bb.hv
    i64 32, label %bb.if
    i64 33, label %.invoke.invoke.i.i
    i64 34, label %bb.ih
    i64 35, label %bb.io
    i64 36, label %bb.iu
    i64 37, label %.invoke.invoke.i.i
    i64 38, label %.invoke.invoke.i.i
    i64 39, label %.invoke.invoke.i.i
    i64 40, label %bb.ix
    i64 41, label %bb.jd
    i64 42, label %bb.jn
    i64 43, label %bb.jt
    i64 44, label %bb.jz
    i64 45, label %bb.kk
    i64 46, label %bb.kq
  ]

4:                                                ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.val53)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %4
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw) #23
          to label %.body.i.i.i.i unwind label %bb.as

bb.ai:                                            ; preds = %4
  %i.bx = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %.body.i.i.i.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i: ; preds = %bb.ai
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i unwind label %bb.al

.body.i.i.i.i:                                    ; preds = %bb.al, %bb.aj, %bb.ah
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bv, %bb.ah ], [ %i.cb, %bb.al ], [ %i.by, %bb.aj ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ca) #23
          to label %.body6.i.i.i.i unwind label %bb.as

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i unwind label %bb.am

bb.am:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %.body6.i.i.i.i unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i unwind label %bb.ao

.body6.i.i.i.i:                                   ; preds = %bb.ao, %bb.am, %.body.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.cg, %bb.ao ], [ %i.cd, %bb.am ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.val53, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #23
          to label %.thread87 unwind label %bb.as

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.val53, i64 216 ; 4 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !19, !alias.scope !1646, !noundef !9
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.thread87 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i: ; preds = %bb.fm, %bb.ap
  %i.cm = phi ptr [ %i.ch, %bb.ap ], [ %i.hv, %bb.fm ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.fq

bb.as:                                            ; preds = %.body6.i.i.i.i, %.body.i.i.i.i, %bb.ah
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread87:                                        ; preds = %.body6.i.i.i.i, %bb.aq, %bb.av, %bb.ay, %bb.bc, %bb.be, %.body.i.i52.i.i, %bb.bn, %bb.br, %bb.bt, %bb.bx, %bb.bz, %bb.cc, %bb.ce, %bb.cg, %bb.ck, %bb.cn, %bb.cr, %bb.ct, %bb.cx, %bb.cz, %bb.dd, %bb.df, %bb.dj, %bb.dl, %bb.dp, %bb.dr, %bb.dv, %bb.dx, %.body.i.i77.i.i, %bb.eg, %bb.ek, %bb.em, %.body6.i.i87.i.i, %bb.ez, %bb.fc, %.body6.i.i97.i.i, %bb.fn, %bb.fq, %bb.fs, %bb.fu, %.body.i.i107.i.i, %bb.ge, %bb.gi, %bb.gk, %bb.go, %bb.gq, %.body.i.i117.i.i, %bb.gz, %.body.i.i123.i.i, %bb.hi, %.body.i.i129.i.i, %bb.hs, %.body.i.i135.i.i, %bb.ib, %bb.ie, %bb.ig, %bb.ii, %bb.il, %bb.ip, %bb.ir, %bb.iv, %bb.iw, %bb.iy, %bb.ja, %.body.i.i147.i.i, %bb.jk, %bb.jo, %bb.jq, %bb.ju, %bb.jw, %.body.i.i157.i.i, %bb.kg, %bb.kj, %bb.kl, %bb.kn, %bb.kr, %bb.ku, %bb.kx
  %.sink.i.i = phi i64 [ 208, %bb.kl ], [ 232, %.body.i.i157.i.i ], [ 208, %bb.ju ], [ 208, %bb.jo ], [ 232, %.body.i.i147.i.i ], [ 208, %bb.iy ], [ 208, %bb.gk ], [ 184, %bb.iw ], [ 208, %bb.ir ], [ 208, %bb.ip ], [ 192, %bb.iv ], [ 208, %bb.ii ], [ 248, %bb.ib ], [ 248, %.body.i.i135.i.i ], [ 200, %bb.ig ], [ 232, %.body.i.i129.i.i ], [ 248, %.body.i.i123.i.i ], [ 248, %bb.hi ], [ 232, %bb.gz ], [ 232, %.body.i.i117.i.i ], [ 208, %bb.go ], [ 208, %bb.gi ], [ 232, %.body.i.i107.i.i ], [ 208, %bb.fs ], [ 256, %.body6.i.i97.i.i ], [ 272, %.body6.i.i87.i.i ], [ 208, %bb.ek ], [ 232, %.body.i.i77.i.i ], [ 208, %bb.dv ], [ 208, %bb.dp ], [ 208, %bb.dj ], [ 208, %bb.dd ], [ 208, %bb.cx ], [ 208, %bb.ct ], [ 208, %bb.cr ], [ 208, %bb.cn ], [ 208, %bb.ck ], [ 208, %bb.ce ], [ 224, %bb.bx ], [ 224, %bb.br ], [ 232, %bb.bn ], [ 232, %.body.i.i52.i.i ], [ 208, %bb.bc ], [ 208, %bb.av ], [ 256, %bb.aq ], [ 208, %bb.ku ], [ 256, %.body6.i.i.i.i ], [ 208, %bb.kr ], [ 208, %bb.kx ], [ 208, %bb.ay ], [ 208, %bb.kn ], [ 208, %bb.be ], [ 208, %bb.gq ], [ 232, %bb.kg ], [ 224, %bb.bt ], [ 224, %bb.cc ], [ 224, %bb.bz ], [ 232, %bb.kj ], [ 208, %bb.cg ], [ 208, %bb.jw ], [ 208, %bb.fu ], [ 208, %bb.jq ], [ 208, %bb.cz ], [ 248, %bb.ie ], [ 208, %bb.df ], [ 232, %bb.jk ], [ 208, %bb.dl ], [ 232, %bb.ge ], [ 208, %bb.dr ], [ 208, %bb.ja ], [ 208, %bb.dx ], [ 232, %bb.hs ], [ 232, %bb.eg ], [ 208, %bb.il ], [ 208, %bb.em ], [ 272, %bb.fc ], [ 272, %bb.ez ], [ 256, %bb.fq ], [ 256, %bb.fn ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.no, %bb.kl ], [ %.pn.i.i158.i.i, %.body.i.i157.i.i ], [ %i.mu, %bb.ju ], [ %i.mo, %bb.jo ], [ %.pn.i.i148.i.i, %.body.i.i147.i.i ], [ %i.lu, %bb.iy ], [ %i.iy, %bb.gk ], [ %i.lt, %bb.iw ], [ %i.lp, %bb.ir ], [ %i.lm, %bb.ip ], [ %i.ls, %bb.iv ], [ %i.le, %bb.ii ], [ %i.kz, %bb.ib ], [ %.pn.i.i136.i.i, %.body.i.i135.i.i ], [ %i.ld, %bb.ig ], [ %.pn.i.i130.i.i, %.body.i.i129.i.i ], [ %.pn.i.i124.i.i, %.body.i.i123.i.i ], [ %i.ka, %bb.hi ], [ %i.jp, %bb.gz ], [ %.pn.i.i118.i.i, %.body.i.i117.i.i ], [ %i.jb, %bb.go ], [ %i.iv, %bb.gi ], [ %.pn.i.i108.i.i, %.body.i.i107.i.i ], [ %i.ic, %bb.fs ], [ %.pn2.i.i98.i.i, %.body6.i.i97.i.i ], [ %.pn2.i.i88.i.i, %.body6.i.i87.i.i ], [ %i.gk, %bb.ek ], [ %.pn.i.i78.i.i, %.body.i.i77.i.i ], [ %i.ft, %bb.dv ], [ %i.fn, %bb.dp ], [ %i.fh, %bb.dj ], [ %i.fb, %bb.dd ], [ %i.ev, %bb.cx ], [ %i.es, %bb.ct ], [ %i.ep, %bb.cr ], [ %i.em, %bb.cn ], [ %i.eh, %bb.ck ], [ %i.eb, %bb.ce ], [ %i.du, %bb.bx ], [ %i.dn, %bb.br ], [ %i.dk, %bb.bn ], [ %.pn.i.i53.i.i, %.body.i.i52.i.i ], [ %i.cw, %bb.bc ], [ %i.co, %bb.av ], [ %i.ck, %bb.aq ], [ %i.oa, %bb.ku ], [ %.pn2.i.i.i.i, %.body6.i.i.i.i ], [ %i.nv, %bb.kr ], [ %i.od, %bb.kx ], [ %i.ct, %bb.ay ], [ %i.nr, %bb.kn ], [ %i.cz, %bb.be ], [ %i.je, %bb.gq ], [ %i.nk, %bb.kg ], [ %i.dq, %bb.bt ], [ %i.ea, %bb.cc ], [ %i.dx, %bb.bz ], [ %i.nn, %bb.kj ], [ %i.ee, %bb.cg ], [ %i.mx, %bb.jw ], [ %i.if, %bb.fu ], [ %i.mr, %bb.jq ], [ %i.ey, %bb.cz ], [ %i.lc, %bb.ie ], [ %i.fe, %bb.df ], [ %i.mk, %bb.jk ], [ %i.fk, %bb.dl ], [ %i.is, %bb.ge ], [ %i.fq, %bb.dr ], [ %i.lx, %bb.ja ], [ %i.fw, %bb.dx ], [ %i.ko, %bb.hs ], [ %i.gh, %bb.eg ], [ %i.lj, %bb.il ], [ %i.gn, %bb.em ], [ %i.hi, %bb.fc ], [ %i.hf, %bb.ez ], [ %i.ib, %bb.fq ], [ %i.hy, %bb.fn ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %.sink.i.i, i64 noundef 8) #27
  br label %bb.lg

bb.at:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.kx

bb.au:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cp) #23
          to label %.thread87 unwind label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.cq = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 4 uses
  %i.cr = load i64, ptr %i.cq, align 8, !range !19, !alias.scope !1647, !noundef !9
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %.thread87 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ba:                                            ; preds = %bb.av
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bb:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx) #23
          to label %.thread87 unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bb
  %i.cy = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %.thread87 unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bg:                                            ; preds = %bb.bc
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bh:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd) #23
          to label %.body.i.i52.i.i unwind label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  %i.de = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %.body.i.i52.i.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i unwind label %bb.bm

.body.i.i52.i.i:                                  ; preds = %bb.bm, %bb.bk, %bb.bi
  %.pn.i.i53.i.i = phi { ptr, i32 } [ %i.dc, %bb.bi ], [ %i.di, %bb.bm ], [ %i.df, %bb.bk ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dh) #23
          to label %.thread87 unwind label %bb.bp

bb.bm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i52.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i55.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %.thread87 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bp:                                            ; preds = %.body.i.i52.i.i, %bb.bi
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bq:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.val53)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do) #23
          to label %.thread87 unwind label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.dp = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %.thread87 unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i: ; preds = %bb.by, %bb.bs
  %i.ds = phi ptr [ %i.dp, %bb.bs ], [ %i.dw, %bb.by ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.cc

bb.bv:                                            ; preds = %bb.br
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bw:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %.val53)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dv) #23
          to label %.thread87 unwind label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %i.dw = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.thread87 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cb:                                            ; preds = %bb.bx
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.cd:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ec) #23
          to label %.thread87 unwind label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  %i.ed = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed)
          to label %.thread87 unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ci:                                            ; preds = %bb.ce
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cj:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.cl unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.eh = landingpad { ptr, i32 }
          cleanup
  %i.ei = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ei) #23
          to label %.thread87 unwind label %bb.cp

bb.cl:                                            ; preds = %bb.cj
  %i.ej = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !range !19, !alias.scope !1648, !noundef !9
  %i.el = icmp eq i64 %i.ek, -1
  br i1 %i.el, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.em = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %.thread87 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cp:                                            ; preds = %bb.ck
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cq:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.cs unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq) #23
          to label %.thread87 unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.er = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %.thread87 unwind label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cv:                                            ; preds = %bb.cr
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.cw:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ew) #23
          to label %.thread87 unwind label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.ex = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %.thread87 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.db:                                            ; preds = %bb.cx
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dc:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.de unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fc) #23
          to label %.thread87 unwind label %bb.dh

bb.de:                                            ; preds = %bb.dc
  %i.fd = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd)
          to label %.thread87 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dh:                                            ; preds = %bb.dd
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.di:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.dk unwind label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fi) #23
          to label %.thread87 unwind label %bb.dn

bb.dk:                                            ; preds = %bb.di
  %i.fj = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.fk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fj)
          to label %.thread87 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dn:                                            ; preds = %bb.dj
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.do:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.dq unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fo) #23
          to label %.thread87 unwind label %bb.dt

bb.dq:                                            ; preds = %bb.do
  %i.fp = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %.thread87 unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dt:                                            ; preds = %bb.dp
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.du:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fu) #23
          to label %.thread87 unwind label %bb.dz

bb.dw:                                            ; preds = %bb.du
  %i.fv = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %.thread87 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.dz:                                            ; preds = %bb.dv
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ea:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ga) #23
          to label %.body.i.i77.i.i unwind label %bb.ei

bb.ec:                                            ; preds = %bb.ea
  %i.gb = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %.body.i.i77.i.i unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i: ; preds = %bb.ec
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i unwind label %bb.ef

.body.i.i77.i.i:                                  ; preds = %bb.ef, %bb.ed, %bb.eb
  %.pn.i.i78.i.i = phi { ptr, i32 } [ %i.fz, %bb.eb ], [ %i.gf, %bb.ef ], [ %i.gc, %bb.ed ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ge) #23
          to label %.thread87 unwind label %bb.ei

bb.ef:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i77.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i80.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gg)
          to label %.thread87 unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ei:                                            ; preds = %.body.i.i77.i.i, %bb.eb
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ej:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.gk = landingpad { ptr, i32 }
          cleanup
  %i.gl = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gl) #23
          to label %.thread87 unwind label %bb.eo

bb.el:                                            ; preds = %bb.ej
  %i.gm = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gm)
          to label %.thread87 unwind label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.eo:                                            ; preds = %bb.ek
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ep:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %.val53)
          to label %bb.er unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.gq = landingpad { ptr, i32 }
          cleanup
  %i.gr = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr) #23
          to label %.body.i.i85.i.i unwind label %bb.fb

bb.er:                                            ; preds = %bb.ep
  %i.gs = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i unwind label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.gt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %.body.i.i85.i.i unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i: ; preds = %bb.er
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i unwind label %bb.eu

.body.i.i85.i.i:                                  ; preds = %bb.eu, %bb.es, %bb.eq
  %.pn.i.i86.i.i = phi { ptr, i32 } [ %i.gq, %bb.eq ], [ %i.gw, %bb.eu ], [ %i.gt, %bb.es ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gv) #23
          to label %.body6.i.i87.i.i unwind label %bb.fb

bb.eu:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i85.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i90.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i unwind label %bb.ev

bb.ev:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %.body6.i.i87.i.i unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i91.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i unwind label %bb.ex

.body6.i.i87.i.i:                                 ; preds = %bb.ex, %bb.ev, %.body.i.i85.i.i
  %.pn2.i.i88.i.i = phi { ptr, i32 } [ %.pn.i.i86.i.i, %.body.i.i85.i.i ], [ %i.hb, %bb.ex ], [ %i.gy, %bb.ev ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.val53, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ha) #23
          to label %.thread87 unwind label %bb.fb

bb.ex:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i87.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i92.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.val53, i64 216 ; 4 uses
  %i.hd = load i64, ptr %i.hc, align 8, !range !19, !alias.scope !1649, !noundef !9
  %i.he = icmp eq i64 %i.hd, -1
  br i1 %i.he, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.ey

bb.ey:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %.thread87 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i: ; preds = %bb.ey
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.fc

bb.fb:                                            ; preds = %.body6.i.i87.i.i, %.body.i.i85.i.i, %bb.eq
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.fc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.fd:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %.val53)
          to label %bb.ff unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.hj = landingpad { ptr, i32 }
          cleanup
  %i.hk = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hk) #23
          to label %.body.i.i95.i.i unwind label %bb.fp

bb.ff:                                            ; preds = %bb.fd
  %i.hl = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %.body.i.i95.i.i unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i: ; preds = %bb.ff
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i unwind label %bb.fi

.body.i.i95.i.i:                                  ; preds = %bb.fi, %bb.fg, %bb.fe
  %.pn.i.i96.i.i = phi { ptr, i32 } [ %i.hj, %bb.fe ], [ %i.hp, %bb.fi ], [ %i.hm, %bb.fg ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ho) #23
          to label %.body6.i.i97.i.i unwind label %bb.fp

bb.fi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i95.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i100.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i unwind label %bb.fj

bb.fj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %.body6.i.i97.i.i unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i101.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i unwind label %bb.fl

.body6.i.i97.i.i:                                 ; preds = %bb.fl, %bb.fj, %.body.i.i95.i.i
  %.pn2.i.i98.i.i = phi { ptr, i32 } [ %.pn.i.i96.i.i, %.body.i.i95.i.i ], [ %i.hu, %bb.fl ], [ %i.hr, %bb.fj ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.val53, i64 216
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ht) #23
          to label %.thread87 unwind label %bb.fp

bb.fl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i.i97.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i5.i.i102.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.val53, i64 216 ; 4 uses
  %i.hw = load i64, ptr %i.hv, align 8, !range !19, !alias.scope !1650, !noundef !9
  %i.hx = icmp eq i64 %i.hw, -1
  br i1 %i.hx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.fm

bb.fm:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hv)
          to label %.thread87 unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.fp:                                            ; preds = %.body6.i.i97.i.i, %.body.i.i95.i.i, %bb.fe
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.fq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.fr:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.ft unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.id) #23
          to label %.thread87 unwind label %bb.fw

bb.ft:                                            ; preds = %bb.fr
  %i.ie = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %.thread87 unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ig = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.fw:                                            ; preds = %bb.fs
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.fx:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.fz unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ij) #23
          to label %.body.i.i107.i.i unwind label %bb.gg

bb.fz:                                            ; preds = %bb.fx
  %i.ik = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %.body.i.i107.i.i unwind label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i: ; preds = %bb.fz
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ik)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i unwind label %bb.gc

.body.i.i107.i.i:                                 ; preds = %bb.gc, %bb.ga, %bb.fy
  %.pn.i.i108.i.i = phi { ptr, i32 } [ %i.ii, %bb.fy ], [ %i.io, %bb.gc ], [ %i.il, %bb.ga ]
  %i.in = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.in) #23
          to label %.thread87 unwind label %bb.gg

bb.gc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i107.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i110.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 4 uses
  %i.iq = load i64, ptr %i.ip, align 8, !range !19, !alias.scope !1651, !noundef !9
  %i.ir = icmp eq i64 %i.iq, -1
  br i1 %i.ir, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.gd

bb.gd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.is = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %.thread87 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.it = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.gg:                                            ; preds = %.body.i.i107.i.i, %bb.fy
  %i.iu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.gh:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.gj unwind label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.iv = landingpad { ptr, i32 }
          cleanup
  %i.iw = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iw) #23
          to label %.thread87 unwind label %bb.gm

bb.gj:                                            ; preds = %bb.gh
  %i.ix = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ix)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ix)
          to label %.thread87 unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.gm:                                            ; preds = %bb.gi
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.gn:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.gp unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.jb = landingpad { ptr, i32 }
          cleanup
  %i.jc = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jc) #23
          to label %.thread87 unwind label %bb.gs

bb.gp:                                            ; preds = %bb.gn
  %i.jd = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jd)
          to label %.thread87 unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.gs:                                            ; preds = %bb.go
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.gt:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.gv unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.jh = landingpad { ptr, i32 }
          cleanup
  %i.ji = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ji) #23
          to label %.body.i.i117.i.i unwind label %bb.hb

bb.gv:                                            ; preds = %bb.gt
  %i.jj = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %.body.i.i117.i.i unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i: ; preds = %bb.gv
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i unwind label %bb.gy

.body.i.i117.i.i:                                 ; preds = %bb.gy, %bb.gw, %bb.gu
  %.pn.i.i118.i.i = phi { ptr, i32 } [ %i.jh, %bb.gu ], [ %i.jn, %bb.gy ], [ %i.jk, %bb.gw ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jm) #23
          to label %.thread87 unwind label %bb.hb

bb.gy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i117.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i120.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.gz

bb.gz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jo)
          to label %.thread87 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.hb:                                            ; preds = %.body.i.i117.i.i, %bb.gu
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.hc:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val53)
          to label %bb.he unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.js = landingpad { ptr, i32 }
          cleanup
  %i.jt = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jt) #23
          to label %.body.i.i123.i.i unwind label %bb.hk

bb.he:                                            ; preds = %bb.hc
  %i.ju = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %.body.i.i123.i.i unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i: ; preds = %bb.he
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i unwind label %bb.hh

.body.i.i123.i.i:                                 ; preds = %bb.hh, %bb.hf, %bb.hd
  %.pn.i.i124.i.i = phi { ptr, i32 } [ %i.js, %bb.hd ], [ %i.jy, %bb.hh ], [ %i.jv, %bb.hf ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jx) #23
          to label %.thread87 unwind label %bb.hk

bb.hh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i123.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i126.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i unwind label %bb.hi

bb.hi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %.thread87 unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i
  %i.kc = phi ptr [ %i.jz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i127.i.i ], [ %i.ky, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ie

bb.hk:                                            ; preds = %.body.i.i123.i.i, %bb.hd
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.hl:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.hn unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ke = landingpad { ptr, i32 }
          cleanup
  %i.kf = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kf) #23
          to label %.body.i.i129.i.i unwind label %bb.hu

bb.hn:                                            ; preds = %bb.hl
  %i.kg = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kg)
          to label %.body.i.i129.i.i unwind label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i: ; preds = %bb.hn
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i unwind label %bb.hq

.body.i.i129.i.i:                                 ; preds = %bb.hq, %bb.ho, %bb.hm
  %.pn.i.i130.i.i = phi { ptr, i32 } [ %i.ke, %bb.hm ], [ %i.kk, %bb.hq ], [ %i.kh, %bb.ho ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.kj) #23
          to label %.thread87 unwind label %bb.hu

bb.hq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i129.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i132.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 4 uses
  %i.km = load i64, ptr %i.kl, align 8, !range !19, !alias.scope !1652, !noundef !9
  %i.kn = icmp eq i64 %i.km, -1
  br i1 %i.kn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.hr

bb.hr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kl)
          to label %.thread87 unwind label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.hu:                                            ; preds = %.body.i.i129.i.i, %bb.hm
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.hv:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %.val53)
          to label %bb.hx unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.kr = landingpad { ptr, i32 }
          cleanup
  %i.ks = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ks) #23
          to label %.body.i.i135.i.i unwind label %bb.id

bb.hx:                                            ; preds = %bb.hv
  %i.kt = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %.body.i.i135.i.i unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i: ; preds = %bb.hx
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i unwind label %bb.ia

.body.i.i135.i.i:                                 ; preds = %bb.ia, %bb.hy, %bb.hw
  %.pn.i.i136.i.i = phi { ptr, i32 } [ %i.kr, %bb.hw ], [ %i.kx, %bb.ia ], [ %i.ku, %bb.hy ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.kw) #23
          to label %.thread87 unwind label %bb.id

bb.ia:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i135.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i138.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i unwind label %bb.ib

bb.ib:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i139.i.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ky)
          to label %.thread87 unwind label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.id:                                            ; preds = %.body.i.i135.i.i, %bb.hw
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ie:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.if:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %.val53)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.ih:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.ij unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.le = landingpad { ptr, i32 }
          cleanup
  %i.lf = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lf) #23
          to label %.thread87 unwind label %bb.in

bb.ij:                                            ; preds = %bb.ih
  %i.lg = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 4 uses
  %i.lh = load i64, ptr %i.lg, align 8, !range !19, !alias.scope !1653, !noundef !9
  %i.li = icmp eq i64 %i.lh, -1
  br i1 %i.li, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.lj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %.thread87 unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.lk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.in:                                            ; preds = %bb.ii
  %i.ll = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.io:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.iq unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.lm = landingpad { ptr, i32 }
          cleanup
  %i.ln = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ln) #23
          to label %.thread87 unwind label %bb.it

bb.iq:                                            ; preds = %bb.io
  %i.lo = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lo)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lo)
          to label %.thread87 unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.lq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.it:                                            ; preds = %bb.ip
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.iu:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %.val53)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

.invoke.invoke.i.i:                               ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %.val53)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.iw

bb.iw:                                            ; preds = %.invoke.invoke.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.ix:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.iz unwind label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.lu = landingpad { ptr, i32 }
          cleanup
  %i.lv = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lv) #23
          to label %.thread87 unwind label %bb.jc

bb.iz:                                            ; preds = %bb.ix
  %i.lw = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %.thread87 unwind label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.jc:                                            ; preds = %bb.iy
  %i.lz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.jd:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.jf unwind label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mb) #23
          to label %.body.i.i147.i.i unwind label %bb.jm

bb.jf:                                            ; preds = %bb.jd
  %i.mc = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i unwind label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %.body.i.i147.i.i unwind label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.me = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i: ; preds = %bb.jf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i unwind label %bb.ji

.body.i.i147.i.i:                                 ; preds = %bb.ji, %bb.jg, %bb.je
  %.pn.i.i148.i.i = phi { ptr, i32 } [ %i.ma, %bb.je ], [ %i.mg, %bb.ji ], [ %i.md, %bb.jg ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.mf) #23
          to label %.thread87 unwind label %bb.jm

bb.ji:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i147.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i150.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 4 uses
  %i.mi = load i64, ptr %i.mh, align 8, !range !19, !alias.scope !1654, !noundef !9
  %i.mj = icmp eq i64 %i.mi, -1
  br i1 %i.mj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.jj

bb.jj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mh)
          to label %.thread87 unwind label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i: ; preds = %bb.kf, %bb.jj, %bb.hr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i, %bb.gd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i
  %i.mm = phi ptr [ %i.mh, %bb.jj ], [ %i.kl, %bb.hr ], [ %i.jo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i121.i.i ], [ %i.ip, %bb.gd ], [ %i.gg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i81.i.i ], [ %i.dj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i56.i.i ], [ %i.nh, %bb.kf ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.kj

bb.jm:                                            ; preds = %.body.i.i147.i.i, %bb.je
  %i.mn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.jn:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.jp unwind label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mp) #23
          to label %.thread87 unwind label %bb.js

bb.jp:                                            ; preds = %bb.jn
  %i.mq = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mq)
          to label %.thread87 unwind label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.js:                                            ; preds = %bb.jo
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.jt:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.jv unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.mu = landingpad { ptr, i32 }
          cleanup
  %i.mv = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mv) #23
          to label %.thread87 unwind label %bb.jy

bb.jv:                                            ; preds = %bb.jt
  %i.mw = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mw)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.mx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.mw)
          to label %.thread87 unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.my = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.jy:                                            ; preds = %bb.ju
  %i.mz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.jz:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %.val53)
          to label %bb.kb unwind label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.na = landingpad { ptr, i32 }
          cleanup
  %i.nb = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nb) #23
          to label %.body.i.i157.i.i unwind label %bb.ki

bb.kb:                                            ; preds = %bb.jz
  %i.nc = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i unwind label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.nd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %.body.i.i157.i.i unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.ne = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i: ; preds = %bb.kb
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i unwind label %bb.ke

.body.i.i157.i.i:                                 ; preds = %bb.ke, %bb.kc, %bb.ka
  %.pn.i.i158.i.i = phi { ptr, i32 } [ %i.na, %bb.ka ], [ %i.ng, %bb.ke ], [ %i.nd, %bb.kc ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.val53, i64 192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nf) #23
          to label %.thread87 unwind label %bb.ki

bb.ke:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i157.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit.i.i.i160.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %.val53, i64 192 ; 4 uses
  %i.ni = load i64, ptr %i.nh, align 8, !range !19, !alias.scope !1655, !noundef !9
  %i.nj = icmp eq i64 %i.ni, -1
  br i1 %i.nj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.kf

bb.kf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nh)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.nk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nh)
          to label %.thread87 unwind label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.nl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ki:                                            ; preds = %.body.i.i157.i.i, %bb.ka
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.kj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

bb.kk:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.km unwind label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.no = landingpad { ptr, i32 }
          cleanup
  %i.np = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.np) #23
          to label %.thread87 unwind label %bb.kp

bb.km:                                            ; preds = %bb.kk
  %i.nq = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nq)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.nr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nq)
          to label %.thread87 unwind label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.ns = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i: ; preds = %bb.kt, %bb.km, %bb.jv, %bb.jp, %bb.iz, %bb.iq, %bb.ik, %bb.gp, %bb.gj, %bb.ft, %bb.el, %bb.dw, %bb.dq, %bb.dk, %bb.de, %bb.cy, %bb.cs, %bb.cm, %bb.cf, %bb.bd, %bb.ax
  %i.nt = phi ptr [ %i.nq, %bb.km ], [ %i.mw, %bb.jv ], [ %i.mq, %bb.jp ], [ %i.lw, %bb.iz ], [ %i.lo, %bb.iq ], [ %i.lg, %bb.ik ], [ %i.jd, %bb.gp ], [ %i.ix, %bb.gj ], [ %i.ie, %bb.ft ], [ %i.gm, %bb.el ], [ %i.fv, %bb.dw ], [ %i.fp, %bb.dq ], [ %i.fj, %bb.dk ], [ %i.fd, %bb.de ], [ %i.ex, %bb.cy ], [ %i.er, %bb.cs ], [ %i.ej, %bb.cm ], [ %i.ed, %bb.cf ], [ %i.cy, %bb.bd ], [ %i.cq, %bb.ax ], [ %i.nx, %bb.kt ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.kx

bb.kp:                                            ; preds = %bb.kl
  %i.nu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.kq:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report6ReportECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %.val53)
          to label %bb.ks unwind label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.nv = landingpad { ptr, i32 }
          cleanup
  %i.nw = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.nw) #23
          to label %.thread87 unwind label %bb.kw

bb.ks:                                            ; preds = %bb.kq
  %i.nx = getelementptr inbounds nuw i8, ptr %.val53, i64 168 ; 4 uses
  %i.ny = load i64, ptr %i.nx, align 8, !range !19, !alias.scope !1656, !noundef !9
  %i.nz = icmp eq i64 %i.ny, -1
  br i1 %i.nz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i unwind label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.nx)
          to label %.thread87 unwind label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.ob = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.kw:                                            ; preds = %bb.kr
  %i.oc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.kx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i, %bb.at
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.thread87

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.ks, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i, %.invoke.invoke.i.i, %bb.iu, %bb.ij, %bb.if, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i, %bb.cl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i, %bb.aw, %bb.at, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i
  %.sink1.i.i = phi i64 [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i94.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i.invoke.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i103.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i161.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i.i152.invoke.invoke.i.i ], [ 208, %bb.aw ], [ 272, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i93.i.i ], [ 256, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit8.i.i.i.i ], [ 184, %.invoke.invoke.i.i ], [ 192, %bb.iu ], [ 208, %bb.at ], [ 208, %bb.cl ], [ 208, %bb.ij ], [ 200, %bb.if ], [ 208, %bb.ks ], [ 208, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i164.invoke.invoke.i.i ], [ 248, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit4.i.i128.invoke.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i133.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i111.i.i ], [ 232, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i151.i.i ], [ 224, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i.i58.invoke.i.i ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val53, i64 noundef %.sink1.i.i, i64 noundef 8) #27
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors12CompileErrorECskIqAKC4t9Ft_2yr.exit.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.oe = load i64, ptr %i.v, align 8, !range !19, !alias.scope !1657, !noundef !9
  %i.of = icmp eq i64 %i.oe, -1
  br i1 %i.of, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit65, label %bb.ky

bb.ky:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i61 unwind label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.thread81 unwind label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i61: ; preds = %bb.ky
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit65 unwind label %bb.lb

bb.lb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i61
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.thread81

.thread81:                                        ; preds = %bb.lb, %bb.kz
  %eh.lpad-body63 = phi { ptr, i32 } [ %i.oi, %bb.lb ], [ %i.og, %bb.kz ]
  store i64 -1, ptr %i.v, align 8
  br label %bb.lg

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit65: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtCs7gfv9tzbXmh_6yara_x8compiler8CompilerNtNtB10_6errors12CompileErrorEECskIqAKC4t9Ft_2yr.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECskIqAKC4t9Ft_2yr.exit.i61
  store i64 -1, ptr %i.v, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !noundef !9
  %i.ol = call i64 @llvm.uadd.sat.i64(i64 %i.ok, i64 1)
  store i64 %i.ol, ptr %i.oj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit unwind label %bb.lc

bb.lc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit65
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.on = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body, %bb.lg, %bb.lc
  %common.resume.op = phi { ptr, i32 } [ %i.om, %bb.lc ], [ %.pn48, %bb.lg ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECskIqAKC4t9Ft_2yr.exit65
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.le

bb.le:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit, %bb.q
  %.sroa.0.0 = phi ptr [ %i.aj, %bb.q ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret ptr %.sroa.0.0

bb.lf:                                            ; preds = %bb.li, %.thread77, %bb.lg, %bb.aa
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.lg:                                            ; preds = %bb.w, %.thread87, %.thread81, %bb.li, %.thread77
  %.pn48 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.li ], [ %common.resume.op.i.i, %.thread87 ], [ %.pn80, %.thread77 ], [ %lpad.thr_comm.split-lp93, %bb.w ], [ %eh.lpad-body63, %.thread81 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #23
          to label %common.resume unwind label %bb.lf

.thread77:                                        ; preds = %bb.ad, %bb.aa, %.thread94
  %.pn80 = phi { ptr, i32 } [ %i.bp, %bb.aa ], [ %lpad.thr_comm92, %.thread94 ], [ %i.bs, %bb.ad ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x8compiler10SourceCodeECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(56) %i.h) #23
          to label %bb.lg unwind label %bb.lf

bb.lh:                                            ; preds = %bb.t
  unreachable

bb.li:                                            ; preds = %bb.t, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7gfv9tzbXmh_6yara_x8compiler10SourceCodeECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(56) %i.g) #23
          to label %bb.lg unwind label %bb.lf
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCNCNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtBb_9ParWalker4walkNtNtNtBd_8commands3fix16FixEncodingStateuNCNvBV_17exec_fix_encoding0NCB1A_s_0NCB1A_s0_0NCB1A_s1_0NCB1A_s2_0E0s_0s_0Bd_(ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noundef nonnull %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8, !nonnull !9, !align !10, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) @0, i64 16, i1 false)
  %i.m = invoke noundef align 8 ptr %i.l(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.h)
          to label %bb.b unwind label %bb.k, !inline_history !1

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %0, ptr %i.g, align 8, !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1665
  invoke void @_RNvXs0_NtCs1jzQjjwemIA_5yansi5colorNtNtB7_5style5StyleINtNtCskKLDkoKarTP_4core7convert4FromNtB5_5ColorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i32 4)
          to label %bb.e unwind label %bb.d, !noalias !1665

bb.d:                                             ; preds = %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskIqAKC4t9Ft_2yr.exit.i, %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body.thread unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %.sroa.5.sroa.0.0.copyload18.i = load ptr, ptr %i.a, align 8, !noalias !1665
  %.sroa.5.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.5.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.5.sroa.10.0.copyload32.i = load i32, ptr %.sroa.5.sroa.10.0..sroa_idx.i, align 4, !noalias !1665
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load <2 x i16>, ptr %.sroa.5.sroa.6.0..sroa_idx.i, align 8, !noalias !1665
  %i.p = or <2 x i16> %i.o, <i16 1, i16 0>
end_hunk_0

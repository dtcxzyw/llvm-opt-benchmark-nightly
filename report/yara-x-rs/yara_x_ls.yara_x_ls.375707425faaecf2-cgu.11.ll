Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_ls.yara_x_ls.375707425faaecf2-cgu.11?download=true
inline.NumInlined: 2062
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs_CsbRBQYsxaRdD_10yara_x_fmtNtB5_9Formatter6formatINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorReEQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !595
  store i64 0, ptr %i.l, align 8, !noalias !595
  %i.pl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.pl, align 8, !noalias !595
  %i.pm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store i64 0, ptr %i.pm, align 8, !noalias !595
  %i.pn = load <2 x i64>, ptr %1, align 8, !alias.scope !366, !noalias !372
  store <2 x i64> %i.pn, ptr %i.k, align 16, !noalias !599
  %.sroa.5219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.5219.0..sroa_idx, align 16, !noalias !599
  %.sroa.6220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6220.0..sroa_idx, align 8, !noalias !599
  %.sroa.8222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %.sroa.011.0.i, ptr %.sroa.8222.0..sroa_idx, align 16, !noalias !599
  %.sroa.9223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %.sroa.312.0.i, ptr %.sroa.9223.0..sroa_idx, align 8, !noalias !599
  %.sroa.10224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i16 0, ptr %.sroa.10224.0..sroa_idx, align 16, !noalias !599
  %.sroa.11226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 9 uses
  store i64 0, ptr %.sroa.11226.0..sroa_idx, align 8, !noalias !599
  %.sroa.12227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.12227.0..sroa_idx, align 16, !noalias !599
  %.sroa.588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.16.8..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.18.8..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.hi

bb.hi:                                            ; preds = %bb.ib, %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !595
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx)
          to label %.noexc.i189 unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

.noexc.i189:                                      ; preds = %bb.hi
  %i.po = load i16, ptr %i.j, align 8, !range !601, !noalias !595, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq i16 %i.po, -1
  br i1 %.not.i.i, label %.preheader.i.i, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i

.preheader.i.i:                                   ; preds = %.noexc.i189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !602
  invoke void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %.noexc55.i192 unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

.noexc55.i192:                                    ; preds = %.preheader.i.i
  %i.pp = load i16, ptr %i.h, align 8, !range !601, !noalias !602, !noundef !18
  %.not27.i.i = icmp eq i16 %i.pp, -1
  br i1 %.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc55.i192, %.noexc58.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !602
  %i.pq = load i16, ptr %i.g, align 8, !range !606, !noalias !602, !noundef !18
  switch i16 %i.pq, label %bb.hj [
    i16 9, label %bb.hl
    i16 10, label %bb.hl
    i16 16, label %bb.hm
  ]

._crit_edge.i.i:                                  ; preds = %.noexc58.i, %.noexc55.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !602
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx)
          to label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

bb.hj:                                            ; preds = %.lr.ph.i.i
  %i.pr = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8) acquire, align 8, !noalias !602
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECs4KzxGwe94yc_9yara_x_ls.exit.i.i195, label %bb.hk, !prof !193

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602
  store ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, ptr %i.b, align 8, !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !602
  store ptr %i.b, ptr %i.a, align 8, !noalias !602
  invoke void @_RNvMs0_NtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
          to label %.noexc.i.i194 unwind label %.loopexit.i.i, !noalias !607

.noexc.i.i194:                                    ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602
  br label %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECs4KzxGwe94yc_9yara_x_ls.exit.i.i195

bb.hl:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !602
  %i.pt = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.noexc57.i193 unwind label %.loopexit116.i, !noalias !600 ; 0 uses

.noexc57.i193:                                    ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !602
  br label %bb.hn

bb.hm:                                            ; preds = %.lr.ph.i.i
  invoke void @_RINvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE6retainNCNvXs_NtB1a_15trailing_spacesINtB22_20RemoveTrailingSpacesINtNtB1a_11indentation14AddIndentationINtNtBa_5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemB16_EL_EEEB3N_4next0ECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx)
          to label %bb.ho unwind label %.loopexit.split-lp.i.i, !noalias !607

bb.hn:                                            ; preds = %.noexc62.i196, %.noexc57.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !602
  invoke void @_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt11indentationINtB4_14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEB1F_4nextCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %.noexc58.i unwind label %.loopexit116.i, !noalias !600

.noexc58.i:                                       ; preds = %bb.hn
  %i.pu = load i16, ptr %i.h, align 8, !range !601, !noalias !602, !noundef !18
  %.not2.i.i = icmp eq i16 %i.pu, -1
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.ho:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !602
  %i.pv = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc59.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600 ; 0 uses

.noexc59.i:                                       ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !602
  br label %bb.hp

bb.hp:                                            ; preds = %.noexc61.i, %.noexc59.i
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE9pop_frontCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx)
          to label %.noexc60.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

.noexc60.i:                                       ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !602
  br label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.i

_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECs4KzxGwe94yc_9yara_x_ls.exit.i.i195: ; preds = %.noexc.i.i194, %bb.hj
  %i.pw = load i32, ptr @_RNvNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories7CONTROL, align 8, !noalias !602, !noundef !18
  %i.px = invoke noundef i32 @_RNvMNtCsbRBQYsxaRdD_10yara_x_fmt6tokensNtB2_5Token8category(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.hq unwind label %.loopexit.i.i, !noalias !607

bb.hq:                                            ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECs4KzxGwe94yc_9yara_x_ls.exit.i.i195
  %i.py = and i32 %i.px, %i.pw
  %.not3.i.i = icmp eq i32 %i.py, 0
  br i1 %.not3.i.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !602
  %i.pz = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc61.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600 ; 0 uses

.noexc61.i:                                       ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !602
  br label %bb.hp

bb.hs:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !602
  %i.qa = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenE13push_back_mutCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.11226.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc62.i196 unwind label %.loopexit116.i, !noalias !600 ; 0 uses

.noexc62.i196:                                    ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !602
  br label %bb.hn

.loopexit.i.i:                                    ; preds = %_RINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB17_8LazyLockNtNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens10categories8CategoryE5force0ECs4KzxGwe94yc_9yara_x_ls.exit.i.i195, %bb.hk
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

.loopexit.split-lp.i.i:                           ; preds = %bb.hm
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.ht:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbRBQYsxaRdD_10yara_x_fmt6tokens5TokenECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #34
          to label %.body.i unwind label %bb.hu, !noalias !607

bb.hu:                                            ; preds = %bb.ht
  %i.qb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !607
  unreachable

.body.i:                                          ; preds = %bb.iq, %bb.ik, %bb.ij, %.loopexit.split-lp117.loopexit.split-lp.i, %.loopexit.split-lp117.loopexit.i, %.loopexit116.i, %bb.ht
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.ij ], [ %lpad.phi.i.i, %bb.ht ], [ %i.qx, %bb.ik ], [ %i.rc, %bb.iq ], [ %lpad.loopexit118.i.a, %.loopexit116.i ], [ %lpad.loopexit121.i, %.loopexit.split-lp117.loopexit.i ], [ %lpad.loopexit.split-lp122.i, %.loopexit.split-lp117.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.k) #34
          to label %bb.hw unwind label %bb.iv, !noalias !600

.loopexit116.i:                                   ; preds = %bb.hs, %bb.hn, %bb.hl
  %lpad.loopexit118.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp117.loopexit.i:                 ; preds = %bb.je, %16, %bb.ir, %bb.ig, %bb.ie, %bb.id, %bb.hr, %bb.hp, %bb.ho, %._crit_edge.i.i, %.preheader.i.i, %bb.hi
  %lpad.loopexit121.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp117.loopexit.split-lp.i:        ; preds = %bb.il
  %lpad.loopexit.split-lp122.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %.noexc60.i, %._crit_edge.i.i
  %.pr.i = load i16, ptr %i.j, align 8, !noalias !595 ; 2 uses
  %.not.i = icmp eq i16 %.pr.i, -1
  br i1 %.not.i, label %bb.hv, label %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i

_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i: ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.i, %.noexc.i189
  %i.qc = phi i16 [ %.pr.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.i ], [ %i.po, %.noexc.i189 ] ; 3 uses
  %.sroa.588.0.copyload.i = load i64, ptr %.sroa.588.0..sroa_idx.i, align 8, !noalias !595 ; 8 uses
  %.sroa.16.0.copyload.i = load i64, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !595 ; 10 uses
  switch i16 %i.qc, label %default.unreachable.i [
    i16 0, label %bb.ib
    i16 1, label %bb.ib
    i16 2, label %bb.ib
    i16 3, label %bb.ib
    i16 4, label %bb.ib
    i16 5, label %bb.ib
    i16 6, label %bb.ib
    i16 7, label %bb.ib
    i16 8, label %bb.ib
    i16 9, label %bb.ic
    i16 10, label %bb.id
    i16 11, label %bb.ic
    i16 12, label %bb.ih
    i16 13, label %bb.ih
    i16 14, label %bb.ih
    i16 15, label %bb.ih
    i16 16, label %bb.ie
    i16 17, label %bb.ic
    i16 18, label %bb.ic
    i16 19, label %bb.ic
    i16 20, label %bb.ic
    i16 21, label %bb.ic
    i16 22, label %bb.ic
  ]

bb.hv:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !595
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.k)
          to label %bb.hy unwind label %bb.hx, !noalias !600

bb.hw:                                            ; preds = %bb.hx, %.body.i
  %.pn47.i = phi { ptr, i32 } [ %i.qd, %bb.hx ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #34
          to label %.body unwind label %bb.iv, !noalias !600

bb.hx:                                            ; preds = %.loopexit124.i, %bb.hv
  %i.qd = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hy:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !595
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit86.i unwind label %bb.hz, !noalias !600

bb.hz:                                            ; preds = %bb.hy
  %i.qe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.ia, !noalias !600

bb.ia:                                            ; preds = %bb.hz
  %i.qf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !600
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit86.i: ; preds = %bb.jg, %bb.hy
  %.sroa.0.0.i190 = phi ptr [ %.sroa.0.1.i, %bb.jg ], [ null, %bb.hy ] ; 2 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.jj unwind label %bb.hg

default.unreachable.i:                            ; preds = %bb.jc, %bb.ic, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i
  unreachable

bb.ib:                                            ; preds = %bb.je, %bb.iw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit78.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs4KzxGwe94yc_9yara_x_ls.exit.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !595
  br label %bb.hi

bb.ic:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i
  switch i16 %i.qc, label %default.unreachable.i [
    i16 22, label %bb.jb
    i16 21, label %bb.ja
    i16 20, label %bb.iz
    i16 19, label %bb.iy
    i16 18, label %bb.ix
    i16 17, label %9
    i16 16, label %8
    i16 15, label %16
    i16 14, label %16
    i16 9, label %4
    i16 10, label %5
    i16 11, label %6
    i16 12, label %16
    i16 13, label %16
  ]

bb.id:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i
  %i.qg = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600 ; 2 uses

bb.ie:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i
  %i.qh = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit65.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600 ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %bb.id
  %.not43.i = icmp eq ptr %i.qg, null
  br i1 %.not43.i, label %bb.if, label %.loopexit124.i

bb.if:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit.i
  %i.qi = load i64, ptr %i.pm, align 8, !alias.scope !608, !noalias !595, !noundef !18 ; 3 uses
  %i.qj = load i64, ptr %i.l, align 8, !range !68, !alias.scope !608, !noalias !595, !noundef !18
  %i.qk = icmp eq i64 %i.qi, %i.qj
  br i1 %i.qk, label %bb.ig, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs4KzxGwe94yc_9yara_x_ls.exit.i

bb.ig:                                            ; preds = %bb.if
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #36
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %bb.ig, %bb.if
  %i.ql = load ptr, ptr %i.pl, align 8, !alias.scope !608, !noalias !595, !nonnull !18, !noundef !18
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qi
  store i8 9, ptr %i.qm, align 1, !noalias !600
  %i.qn = add i64 %i.qi, 1
  store i64 %i.qn, ptr %i.pm, align 8, !alias.scope !608, !noalias !595
  br label %bb.ib

.loopexit124.i:                                   ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit84.i, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit65.i, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit.i ], [ %i.qh, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit65.i ], [ %i.qg, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit.i ], [ %17, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit84.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !595
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spaces20RemoveTrailingSpacesINtNtBG_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtBG_6tokens5TokenEL_EEEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.k)
          to label %bb.jg unwind label %bb.hx, !noalias !600

bb.ih:                                            ; preds = %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i, %_RNvXs_NtCsbRBQYsxaRdD_10yara_x_fmt15trailing_spacesINtB4_20RemoveTrailingSpacesINtNtB6_11indentation14AddIndentationINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtB6_6tokens5TokenEL_EEEB2q_4nextCs4KzxGwe94yc_9yara_x_ls.exit.thread.i
  %.sroa.18.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !595 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !595
  store i64 %.sroa.588.0.copyload.i, ptr %i.i, align 8, !noalias !595
  store i64 %.sroa.16.0.copyload.i, ptr %.sroa.16.8..sroa_idx96.i, align 8, !noalias !595
  store i64 %.sroa.18.0.copyload.i, ptr %.sroa.18.8..sroa_idx103.i, align 8, !noalias !595
  %i.qo = inttoptr i64 %.sroa.16.0.copyload.i to ptr ; 5 uses
  %.idx.i = mul nuw nsw i64 %.sroa.18.0.copyload.i, 24
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %.idx.i
  %i.qq = icmp eq i64 %.sroa.18.0.copyload.i, 0
  br i1 %i.qq, label %.preheader, label %bb.ii

.preheader:                                       ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit68.i, %bb.ih
  %.sroa.011.1.i.ph = phi ptr [ %i.qw, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit68.i ], [ %i.qo, %bb.ih ]
  br label %bb.in

bb.ii:                                            ; preds = %bb.ih
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8, !noalias !600, !nonnull !18, !noundef !18
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qu = load i64, ptr %i.qt, align 8, !noalias !600, !noundef !18
  %i.qv = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qs, i64 noundef range(i64 0, -9223372036854775808) %i.qu)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit68.i unwind label %.loopexit.split-lp.i, !noalias !600 ; 2 uses

.loopexit.i:                                      ; preds = %bb.iu, %bb.it, %bb.io
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

.loopexit.split-lp.i:                             ; preds = %bb.ii
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ij

bb.ij:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #34
          to label %.body.i unwind label %bb.iv, !noalias !600

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit68.i: ; preds = %bb.ii
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %.not39.i = icmp eq ptr %i.qv, null
  br i1 %.not39.i, label %.preheader, label %.loopexit115.i

.loopexit115.i:                                   ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit68.i, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit82.i, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit80.i, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit73.i
  %.sroa.0.2.i = phi ptr [ %i.rg, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit80.i ], [ %i.rb, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit73.i ], [ %i.rl, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit82.i ], [ %i.qv, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit68.i ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.il unwind label %bb.ik, !noalias !600

bb.ik:                                            ; preds = %.loopexit115.i
  %i.qx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.im, !noalias !600

bb.il:                                            ; preds = %.loopexit115.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %.loopexit.split-lp117.loopexit.split-lp.i, !noalias !600

bb.im:                                            ; preds = %bb.ik
  %i.qy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !600
  unreachable

bb.in:                                            ; preds = %.preheader, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit82.i
  %.sroa.011.1.i = phi ptr [ %i.ra, %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit82.i ], [ %.sroa.011.1.i.ph, %.preheader ] ; 4 uses
  %i.qz = icmp eq ptr %.sroa.011.1.i, %i.qp
  br i1 %i.qz, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 24
  %i.rb = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef range(i64 0, -9223372036854775808) 1)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit73.i unwind label %.loopexit.i, !noalias !600 ; 2 uses

bb.ip:                                            ; preds = %bb.in
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ir unwind label %bb.iq, !noalias !600

bb.iq:                                            ; preds = %bb.ip
  %i.rc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.i unwind label %bb.is, !noalias !600

bb.ir:                                            ; preds = %bb.ip
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit78.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

bb.is:                                            ; preds = %bb.iq
  %i.rd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !600
  unreachable

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit73.i: ; preds = %bb.io
  %.not40.i = icmp eq ptr %i.rb, null
  br i1 %.not40.i, label %bb.it, label %.loopexit115.i

bb.it:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit73.i
  %i.re = load ptr, ptr %i.pl, align 8, !noalias !595, !nonnull !18, !noundef !18
  %i.rf = load i64, ptr %i.pm, align 8, !noalias !595, !noundef !18
  %i.rg = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.re, i64 noundef range(i64 0, -9223372036854775808) %i.rf)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit80.i unwind label %.loopexit.i, !noalias !600 ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit80.i: ; preds = %bb.it
  %.not41.i = icmp eq ptr %i.rg, null
  br i1 %.not41.i, label %bb.iu, label %.loopexit115.i

bb.iu:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit80.i
  %i.rh = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !noalias !600, !nonnull !18, !noundef !18
  %i.rj = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i, i64 16
  %i.rk = load i64, ptr %i.rj, align 8, !noalias !600, !noundef !18
  %i.rl = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ri, i64 noundef range(i64 0, -9223372036854775808) %i.rk)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit82.i unwind label %.loopexit.i, !noalias !600 ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit82.i: ; preds = %bb.iu
  %.not42.i = icmp eq ptr %i.rl, null
  br i1 %.not42.i, label %bb.in, label %.loopexit115.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !595
  br label %.loopexit124.i

bb.iv:                                            ; preds = %bb.ij, %bb.hw, %.body.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !600
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecIBC_hEEECs4KzxGwe94yc_9yara_x_ls.exit78.i: ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !595
  br label %bb.ib

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit65.i: ; preds = %bb.ie
  %.not38.i = icmp eq ptr %i.qh, null
  br i1 %.not38.i, label %bb.iw, label %.loopexit124.i

bb.iw:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit65.i
  store i64 0, ptr %i.pm, align 8, !noalias !595
  br label %bb.ib

4:                                                ; preds = %bb.ic
  br label %16

5:                                                ; preds = %bb.ic
  br label %16

6:                                                ; preds = %bb.ic
  %7 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

8:                                                ; preds = %bb.ic
  br label %16

9:                                                ; preds = %bb.ic
  %10 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

bb.ix:                                            ; preds = %bb.ic
  %11 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

bb.iy:                                            ; preds = %bb.ic
  %12 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

bb.iz:                                            ; preds = %bb.ic
  %13 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

bb.ja:                                            ; preds = %bb.ic
  %14 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

bb.jb:                                            ; preds = %bb.ic
  %15 = inttoptr i64 %.sroa.588.0.copyload.i to ptr
  br label %16

16:                                               ; preds = %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %9, %8, %6, %5, %4, %bb.ic, %bb.ic, %bb.ic, %bb.ic
  %.sroa.6.0.i = phi i64 [ 1, %4 ], [ 1, %5 ], [ %.sroa.16.0.copyload.i, %6 ], [ 1, %8 ], [ %.sroa.16.0.copyload.i, %9 ], [ %.sroa.16.0.copyload.i, %bb.ix ], [ %.sroa.16.0.copyload.i, %bb.iy ], [ %.sroa.16.0.copyload.i, %bb.iz ], [ %.sroa.16.0.copyload.i, %bb.ja ], [ %.sroa.16.0.copyload.i, %bb.jb ], [ 0, %bb.ic ], [ 0, %bb.ic ], [ 0, %bb.ic ], [ 0, %bb.ic ]
  %.sroa.010.0.i = phi ptr [ @57, %4 ], [ @56, %5 ], [ %7, %6 ], [ @30, %8 ], [ %10, %9 ], [ %11, %bb.ix ], [ %12, %bb.iy ], [ %13, %bb.iz ], [ %14, %bb.ja ], [ %15, %bb.jb ], [ inttoptr (i64 1 to ptr), %bb.ic ], [ inttoptr (i64 1 to ptr), %bb.ic ], [ inttoptr (i64 1 to ptr), %bb.ic ], [ inttoptr (i64 1 to ptr), %bb.ic ]
  %17 = invoke noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit84.i unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600 ; 2 uses

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit84.i: ; preds = %16
  %.not44.i = icmp eq ptr %17, null
  br i1 %.not44.i, label %bb.jc, label %.loopexit124.i

bb.jc:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtB6_6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit84.i
  switch i16 %i.qc, label %default.unreachable.i [
    i16 22, label %bb.jf
    i16 21, label %bb.jf
    i16 20, label %bb.jf
    i16 19, label %bb.jf
    i16 18, label %bb.jf
    i16 17, label %bb.jf
    i16 16, label %bb.jd
    i16 15, label %bb.je
    i16 14, label %bb.je
    i16 9, label %bb.jd
    i16 10, label %bb.jd
    i16 11, label %bb.jf
    i16 12, label %bb.je
    i16 13, label %bb.je
  ]

bb.jd:                                            ; preds = %bb.jc, %bb.jc, %bb.jc
  br label %bb.je

bb.je:                                            ; preds = %bb.jf, %bb.jd, %bb.jc, %bb.jc, %bb.jc, %bb.jc
  %.sroa.8.0.i = phi i64 [ 1, %bb.jd ], [ 0, %bb.jc ], [ %.sroa.16.0.copyload.i, %bb.jf ], [ 0, %bb.jc ], [ 0, %bb.jc ], [ 0, %bb.jc ]
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter7sources8repeat_n7RepeatNhEECs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %.sroa.8.0.i, i8 32)
          to label %bb.ib unwind label %.loopexit.split-lp117.loopexit.i, !noalias !600

bb.jf:                                            ; preds = %bb.jc, %bb.jc, %bb.jc, %bb.jc, %bb.jc, %bb.jc, %bb.jc
  br label %bb.je

bb.jg:                                            ; preds = %.loopexit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !595
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit86.i unwind label %bb.jh, !noalias !600

bb.jh:                                            ; preds = %bb.jg
  %i.rn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.ji, !noalias !600

bb.ji:                                            ; preds = %bb.jh
  %i.ro = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !600
  unreachable

bb.jj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit86.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !595
  %.not = icmp eq ptr %.sroa.0.0.i190, null
  br i1 %.not, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  store i32 1, ptr %0, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i190, ptr %.sroa.582.0..sroa_idx, align 8
  br label %bb.jo

bb.jl:                                            ; preds = %bb.jj
  %i.rp = load i32, ptr %i.ew, align 4, !range !138, !noundef !18
  %i.rq = trunc nuw i32 %i.rp to i1
  br i1 %i.rq, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  store i32 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.rs = load <2 x i32>, ptr %i.rr, align 4
  store <2 x i32> %i.rs, ptr %.sroa.428.0..sroa_idx, align 4
  br label %bb.jo

bb.jn:                                            ; preds = %bb.jl
  %i.rt = load i64, ptr %i.fg, align 8, !noundef !18 ; 2 uses
  %i.ru = load i64, ptr %.sroa.524.0..sroa_idx, align 8, !noundef !18 ; 2 uses
  %i.rv = icmp eq i64 %i.rt, %i.ru
  %.pre = load ptr, ptr %.sroa.423.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.rv, label %bb.jr, label %bb.js

bb.jo:                                            ; preds = %bb.jm, %bb.jk
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.rw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %.body200 unwind label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.rx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i: ; preds = %bb.jo
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.d

bb.jr:                                            ; preds = %bb.jn
  %i.ry = load ptr, ptr %i.ff, align 8, !nonnull !18, !noundef !18
  %bcmp = call i32 @bcmp(ptr nonnull %i.ry, ptr nonnull %.pre, i64 %i.rt)
  %i.rz = icmp ne i32 %bcmp, 0
  %i.sa = zext i1 %i.rz to i8
  br label %bb.js

bb.js:                                            ; preds = %bb.jn, %bb.jr
  %.sroa.083.0 = phi i8 [ %i.sa, %bb.jr ], [ 1, %bb.jn ]
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pre, i64 noundef range(i64 0, -9223372036854775808) %i.ru)
          to label %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit unwind label %bb.hg

_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %bb.js
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %.sroa.083.0, ptr %i.sb, align 4
  store i32 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i205 unwind label %bb.jt

bb.jt:                                            ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit
  %i.sc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %.body200 unwind label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i205: ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core2io5implsQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtNtB6_5write5Write9write_allCs4KzxGwe94yc_9yara_x_ls.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.es)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit209 unwind label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit209: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit211 unwind label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit209
  %i.se = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %common.resume unwind label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.sf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body200, %bb.jy, %bb.jv
  %common.resume.op = phi { ptr, i32 } [ %i.sg, %bb.jy ], [ %i.se, %bb.jv ], [ %.pn, %.body200 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit211: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit209, %bb.jx
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  br label %bb.jx

bb.jx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECs4KzxGwe94yc_9yara_x_ls.exit, %bb.f
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs4KzxGwe94yc_9yara_x_ls.exit211 unwind label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.sg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KzxGwe94yc_9yara_x_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ev)
          to label %common.resume unwind label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.sh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ka:                                            ; preds = %.body, %.body200
  %i.si = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs7gfv9tzbXmh_6yara_x8compiler7lintersNtB5_8RuleName3newRNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KzxGwe94yc_9yara_x_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0

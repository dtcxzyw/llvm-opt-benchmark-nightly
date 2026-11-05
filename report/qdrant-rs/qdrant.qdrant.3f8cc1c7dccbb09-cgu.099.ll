Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.099?download=true
inline.NumInlined: 735
inline.NumDeleted: 302
begin_hunk_0_@_RNvCsl8OoimOLbh_6qdrant4main:bb.a
  %.pn71.i.i = phi { ptr, i32 } [ %.pn69.i.i, %.body135.i.i ], [ %i.lk, %bb.cz ], [ %i.lg, %bb.cw ] ; 2 uses
  %i.li = load i8, ptr %i.bf, align 8, !range !20, !alias.scope !1335, !noalias !1310, !noundef !6
  %i.lj = icmp eq i8 %i.li, -1
  br i1 %i.lj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i, label %bb.cy

bb.cy:                                            ; preds = %.body141.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i unwind label %bb.dd, !noalias !1311

bb.cz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant.exit.i140.i.i
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.body141.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECsl8OoimOLbh_6qdrant.exit144.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECsl8OoimOLbh_6qdrant.exit.i140.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant.exit138.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1310
  %i.ll = load i8, ptr %i.bf, align 8, !range !20, !alias.scope !1336, !noalias !1310, !noundef !6
  %i.lm = icmp eq i8 %i.ll, -1
  br i1 %i.lm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit148.i.i, label %bb.da

bb.da:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECsl8OoimOLbh_6qdrant.exit144.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit148.i.i unwind label %bb.dc, !noalias !1311

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i: ; preds = %bb.dc, %bb.cy, %.body141.i.i
  %.pn73.i.i = phi { ptr, i32 } [ %i.lp, %bb.dc ], [ %.pn71.i.i, %bb.cy ], [ %.pn71.i.i, %.body141.i.i ] ; 2 uses
  %i.ln = load i8, ptr %i.bg, align 8, !range !20, !alias.scope !1337, !noalias !1310, !noundef !6
  %i.lo = icmp eq i8 %i.ln, -1
  br i1 %i.lo, label %.body.i, label %bb.db

bb.db:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http3uri3UriECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.bg)
          to label %.body.i unwind label %bb.dd, !noalias !1311

bb.dc:                                            ; preds = %bb.da
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit148.i.i: ; preds = %bb.da, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECsl8OoimOLbh_6qdrant.exit144.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1310
  %i.lq = load i8, ptr %i.bg, align 8, !range !20, !alias.scope !1338, !noalias !1310, !noundef !6
  %i.lr = icmp eq i8 %i.lq, -1
  br i1 %i.lr, label %.thread.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit101.sink.split.i.i

bb.dd:                                            ; preds = %bb.db, %bb.cy, %.body135.i.i, %.body129.i.i, %bb.ci, %bb.cg, %bb.cd, %.body110.i.i, %.body104.i.i, %bb.bm, %bb.bk, %bb.bh, %.body88.i.i, %.body.i.i, %bb.aq, %bb.am, %bb.ai, %bb.x, %bb.u, %bb.n, %bb.i
  %i.ls = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1311
  unreachable

.body.i:                                          ; preds = %bb.di, %bb.de, %bb.db, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i, %bb.cg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit121.i.i, %bb.bk, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit96.i.i, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit84.i.i, %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i
  %.pn.i = phi { ptr, i32 } [ %i.lx, %bb.di ], [ %i.lt, %bb.de ], [ %.pn64.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit121.i.i ], [ %.pn58.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit96.i.i ], [ %.pn52.pn.pn.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit84.i.i ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit77.i.i ], [ %.pn.i.i, %bb.i ], [ %.pn52.pn.pn.pn.i.i, %bb.u ], [ %.pn58.pn.pn.pn.i.i, %bb.bk ], [ %.pn64.pn.pn.pn.i.i, %bb.cg ], [ %.pn73.i.i, %bb.db ], [ %.pn73.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit146.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCscOXheHxUWYW_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bk) #27
          to label %common.resume unwind label %bb.dk, !noalias !1307

bb.de:                                            ; preds = %bb.dg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit101.sink.split.i.i, %.noexc.i, %_RNvMNtNtCscOXheHxUWYW_12clap_builder7builder7commandNtB2_7Command11get_matches.exit.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.df:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.15.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(88) %i.bg, i64 88, i1 false), !noalias !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.15.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i64 88, i1 false), !noalias !1339
  %.sroa.0.i.sroa.0.0.copyload.i = load i64, ptr %i.be, align 8, !noalias !1310 ; 2 uses
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.0.i.sroa.4.0.copyload.i = load ptr, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !noalias !1310 ; 2 uses
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.lu = load i64, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i, align 8, !noalias !1310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.2.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !noalias !1339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1310
  %i.lv = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i, -2
  br i1 %i.lv, label %bb.dg, label %_RNvYNtCsl8OoimOLbh_6qdrant4ArgsNtNtCscOXheHxUWYW_12clap_builder6derive6Parser5parseB4_.exit

bb.dg:                                            ; preds = %bb.df, %.thread.i
  %.sroa.8.213.i = phi ptr [ %.sroa.8.1.i, %.thread.i ], [ %.sroa.0.i.sroa.4.0.copyload.i, %bb.df ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.213.i) ]
  %i.lw = invoke noundef nonnull align 8 ptr @_RINvNtCscOXheHxUWYW_12clap_builder6derive12format_errorNtCsl8OoimOLbh_6qdrant4ArgsEBT_(ptr noalias noundef nonnull align 8 %.sroa.8.213.i)
          to label %bb.dh unwind label %bb.de, !noalias !1307 ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !1307
  store ptr %i.lw, ptr %i.bj, align 8, !noalias !1307
  invoke void @_RNvMNtCscOXheHxUWYW_12clap_builder5errorNtB2_5Error4exitCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj) #32
          to label %bb.dj unwind label %bb.di, !noalias !1307

bb.di:                                            ; preds = %bb.dh
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscOXheHxUWYW_12clap_builder5error5ErrorECsl8OoimOLbh_6qdrant(ptr nonnull %i.lw) #27
          to label %.body.i unwind label %bb.dk, !noalias !1307

bb.dj:                                            ; preds = %bb.dh
  unreachable

bb.dk:                                            ; preds = %bb.di, %.body.i
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1307
  unreachable

_RNvYNtCsl8OoimOLbh_6qdrant4ArgsNtNtCscOXheHxUWYW_12clap_builder6derive6Parser5parseB4_.exit: ; preds = %bb.df
  store i64 %.sroa.0.i.sroa.0.0.copyload.i, ptr %i.hk, align 8, !alias.scope !1307
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %.sroa.0.i.sroa.4.0.copyload.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !1307
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store i64 %i.lu, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !1307
  %.sroa.15.sroa.2.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 24 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.2.0..sroa.15.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.2.i, i64 24, i1 false)
  %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.i, i64 24, i1 false)
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 72 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.15.sroa.4.i, i64 88, i1 false)
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 160 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.15.sroa.5.i, i64 88, i1 false)
  %.sroa.157.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 248 ; 2 uses
  store i8 %i.hz, ptr %.sroa.157.0..sroa_idx.i, align 8, !alias.scope !1307
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 249 ; 2 uses
  store i8 %i.iq, ptr %.sroa.16.0..sroa_idx.i, align 1, !alias.scope !1307
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 250 ; 2 uses
  store i8 %i.jr, ptr %.sroa.17.0..sroa_idx.i, align 2, !alias.scope !1307
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 251 ; 3 uses
  store i8 %i.ks, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !1307
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCscOXheHxUWYW_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.bk), !noalias !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.5.i)
  %i.lz = load i8, ptr %.sroa.17.0..sroa_idx.i, align 2, !range !21, !noundef !6
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.yl, label %bb.dl

bb.dl:                                            ; preds = %_RNvYNtCsl8OoimOLbh_6qdrant4ArgsNtNtCscOXheHxUWYW_12clap_builder6derive6Parser5parseB4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.3.0..sroa.15.0..sroa_idx.sroa_idx.i, i64 24, i1 false)
  invoke void @_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings3new(ptr noalias nofree noundef nonnull sret([2048 x i8]) align 16 captures(none) dereferenceable(2048) %i.co, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.hi)
          to label %bb.do unwind label %bb.dn

bb.dm:                                            ; preds = %.thread, %bb.dr, %bb.dn
  %.sroa.0127.0 = phi i8 [ %.sroa.0127.1, %bb.dn ], [ %.sroa.0127.2576, %.thread ], [ %.sroa.0127.2, %bb.dr ]
  %.sroa.0121.0 = phi i8 [ %.sroa.0121.1, %bb.dn ], [ %.sroa.0121.2577, %.thread ], [ %.sroa.0121.2, %bb.dr ]
  %.sroa.0113.0 = phi i8 [ %.sroa.0113.1, %bb.dn ], [ %.sroa.0113.2578, %.thread ], [ %.sroa.0113.2, %bb.dr ]
  %.pn306 = phi { ptr, i32 } [ %i.me, %bb.dn ], [ %.pn304579, %.thread ], [ %.pn304, %bb.dr ] ; 2 uses
  %i.mb = trunc nuw i8 %.sroa.0127.0 to i1
  %i.mc = load i8, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx.i, align 8, !range !20
  %i.md = icmp ne i8 %i.mc, -1
  %or.cond1125.not = select i1 %i.mb, i1 %i.md, i1 false
  br i1 %or.cond1125.not, label %bb.zf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit553

bb.dn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6handle12LoggerHandleEBH_.exit, %bb.ec, %bb.dp, %bb.dl
  %.sroa.0127.1 = phi i8 [ 1, %bb.dl ], [ 1, %bb.dp ], [ 1, %bb.ec ], [ %.sroa.0127.8, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6handle12LoggerHandleEBH_.exit ]
  %.sroa.0121.1 = phi i8 [ 1, %bb.dl ], [ 1, %bb.dp ], [ 1, %bb.ec ], [ %.sroa.0121.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6handle12LoggerHandleEBH_.exit ]
  %.sroa.0113.1 = phi i8 [ 1, %bb.dl ], [ 1, %bb.dp ], [ 1, %bb.ec ], [ %.sroa.0113.43, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6handle12LoggerHandleEBH_.exit ]
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.do:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi)
  %i.mf = load i64, ptr %i.co, align 16, !range !11, !noundef !6 ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 2
  br i1 %i.mg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.mh = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cn, ptr noundef nonnull align 16 dereferenceable(96) %i.mh, i64 96, i1 false)
  %i.mi = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorE4fromCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(96) %i.cn)
          to label %bb.yk unwind label %bb.dn

bb.dq:                                            ; preds = %bb.do
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4170.0..sroa_idx, i64 104, i1 false)
  store i64 %i.mf, ptr %i.hj, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1936) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(1936) %.sroa.5171.0..sroa_idx, i64 1936, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh)
  %i.mj = getelementptr inbounds nuw i8, ptr %i.co, i64 2033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.hh, ptr noundef nonnull align 1 dereferenceable(9) %i.mj, i64 9, i1 false)
  invoke void @_RNvNtCslmvYCXbQjWR_6common5flags18init_feature_flags(ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(9) %i.hh)
          to label %bb.dt unwind label %bb.ds

bb.dr:                                            ; preds = %.body378.thread, %.body378
  %.sroa.0127.2 = phi i8 [ %.sroa.0127.4, %.body378 ], [ %.sroa.0127.4933, %.body378.thread ] ; 2 uses
  %.sroa.0121.2 = phi i8 [ %.sroa.0121.4, %.body378 ], [ %.sroa.0121.4934, %.body378.thread ] ; 2 uses
  %.sroa.0113.2 = phi i8 [ %.sroa.0113.4, %.body378 ], [ %.sroa.0113.4935, %.body378.thread ] ; 2 uses
  %.sroa.0168.0 = phi i8 [ %.sroa.0168.1, %.body378 ], [ %.sroa.0168.1936, %.body378.thread ]
  %.pn304 = phi { ptr, i32 } [ %.pn302, %.body378 ], [ %.pn302937, %.body378.thread ] ; 2 uses
  %i.mk = trunc nuw i8 %.sroa.0168.0 to i1
  br i1 %i.mk, label %.thread, label %bb.dm

bb.ds:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.dt, %bb.dq
  %.sroa.0127.3 = phi i8 [ %.sroa.0127.9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i ], [ 1, %bb.ea ], [ 1, %bb.dy ], [ 1, %bb.dw ], [ 1, %bb.du ], [ 1, %bb.dt ], [ 1, %bb.dq ]
  %.sroa.0121.3 = phi i8 [ %.sroa.0121.13, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i ], [ 1, %bb.ea ], [ 1, %bb.dy ], [ 1, %bb.dw ], [ 1, %bb.du ], [ 1, %bb.dt ], [ 1, %bb.dq ]
  %.sroa.0113.3 = phi i8 [ %.sroa.0113.44, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4hE0XgIM7pO_18tracing_subscriber6reload6HandleINtNtNtBG_6filter13layer_filters8FilteredINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtBG_5layer5LayerINtNtB36_7layered7LayeredINtBE_5LayerIB1t_IB28_IB2u_DIB34_NtNtNtBG_8registry7sharded8RegistryENtNtB4_6marker4SendNtB4V_4SyncEL_EENtNtB1x_3env9EnvFilterB4j_EB4j_EB4j_EEB4T_B5c_EL_EEB5s_B3n_EB3n_EECsl8OoimOLbh_6qdrant.exit4.i ], [ 1, %bb.ea ], [ 1, %bb.dy ], [ 1, %bb.dw ], [ 1, %bb.du ], [ 1, %bb.dt ], [ 1, %bb.dq ]
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.hj, i64 200
  %i.mn = getelementptr inbounds nuw i8, ptr %i.hj, i64 1268
  %i.mo = load i8, ptr %i.mn, align 4, !range !15, !noundef !6
  invoke void @_RNvNtCslmvYCXbQjWR_6common10low_memory20init_low_memory_mode(i8 noundef %i.mo)
          to label %bb.du unwind label %bb.ds

bb.du:                                            ; preds = %bb.dt
  %0 = getelementptr inbounds nuw i8, ptr %i.hj, i64 2032
  %1 = load i8, ptr %0, align 8, !range !21, !noundef !6
  %2 = trunc nuw i8 %1 to i1
  %i.mp = load i8, ptr %.sroa.16.0..sroa_idx.i, align 1, !range !21
  %i.mq = trunc nuw i8 %i.mp to i1
  %3 = select i1 %2, i1 true, i1 %i.mq            ; 2 uses
  %.sroa.011.0.a = xor i1 %3, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  invoke void @_RNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB2_18TelemetryCollector11generate_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(address) dereferenceable(16) %i.hg)
          to label %bb.dv unwind label %bb.ds

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.hj, i64 1864 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.ms, -1
  br i1 %.not, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mr)
          to label %bb.dz unwind label %bb.ds

bb.dx:                                            ; preds = %bb.dv
  store i64 -1, ptr %i.hc, align 8
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dz, %bb.dx
  invoke void @_RNvMNtNtCsl8OoimOLbh_6qdrant7tracing6configNtB2_12LoggerConfig24with_top_level_directive(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.hd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.hj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.hc)
          to label %bb.ea unwind label %bb.ds

bb.dz:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  br label %bb.dy

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  invoke void @_RNvNtCsl8OoimOLbh_6qdrant7tracing5setup(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %i.hd)
          to label %bb.eb unwind label %bb.ds

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  %i.mt = load ptr, ptr %i.he, align 8, !noundef !6 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  %i.mv = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8            ; 2 uses
  br i1 %i.mu, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsl8OoimOLbh_6qdrant8settings8SettingsEBF_(ptr noalias nofree noundef align 8 dereferenceable(2048) %i.hj)
          to label %bb.yh unwind label %bb.dn

bb.ed:                                            ; preds = %bb.eb
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %.sroa.5174.0.copyload = load i64, ptr %.sroa.5174.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  store ptr %i.mt, ptr %i.hf, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 3 uses
  store ptr %i.mw, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 3 uses
  store i64 %.sroa.5174.0.copyload, ptr %.sroa.523.0..sroa_idx, align 8
  invoke void @_RNvNtCsl8OoimOLbh_6qdrant7startup29remove_started_file_indicator()
          to label %bb.ef unwind label %bb.ee

.body378:                                         ; preds = %bb.ee, %.body390
  %.sroa.0127.4 = phi i8 [ %.sroa.0127.6, %.body390 ], [ %.sroa.0127.5, %bb.ee ] ; 2 uses
  %.sroa.0121.4 = phi i8 [ %.sroa.0121.6, %.body390 ], [ %.sroa.0121.5, %bb.ee ] ; 2 uses
  %.sroa.0119.0 = phi i8 [ %.sroa.0119.2, %.body390 ], [ %.sroa.0119.1, %bb.ee ]
  %.sroa.0113.4 = phi i8 [ %.sroa.0113.6, %.body390 ], [ %.sroa.0113.5, %bb.ee ] ; 2 uses
  %.sroa.0168.1 = phi i8 [ %.sroa.0168.3, %.body390 ], [ %.sroa.0168.2, %bb.ee ] ; 2 uses
  %.pn302 = phi { ptr, i32 } [ %.pn300, %.body390 ], [ %i.my, %bb.ee ] ; 2 uses
  %i.mx = trunc nuw i8 %.sroa.0119.0 to i1
  br i1 %i.mx, label %.body378.thread, label %bb.dr

bb.ee:                                            ; preds = %bb.yc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit520, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ed
  %.sroa.0127.5 = phi i8 [ 1, %bb.yc ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit520 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.ed ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.eo ], [ 1, %bb.en ], [ 1, %bb.em ], [ 1, %bb.el ], [ 1, %bb.ek ]
  %.sroa.0121.5 = phi i8 [ 1, %bb.yc ], [ %.sroa.0121.10, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit520 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.ed ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.eo ], [ 1, %bb.en ], [ 1, %bb.em ], [ 1, %bb.el ], [ 1, %bb.ek ]
  %.sroa.0119.1 = phi i8 [ 1, %bb.yc ], [ %.sroa.0119.34, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit520 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.ed ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.eo ], [ 1, %bb.en ], [ 1, %bb.em ], [ 1, %bb.el ], [ 1, %bb.ek ]
  %.sroa.0113.5 = phi i8 [ 1, %bb.yc ], [ %.sroa.0113.41, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit520 ], [ %.sroa.092.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.ed ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.eo ], [ 1, %bb.en ], [ 1, %bb.em ], [ 1, %bb.el ], [ 1, %bb.ek ]
  %.sroa.0168.2 = phi i8 [ 1, %bb.yc ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit520 ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs577yCKf7gy3_4http3uri3UriEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.ed ], [ 1, %bb.eq ], [ 1, %bb.ep ], [ 1, %bb.eo ], [ 1, %bb.en ], [ 1, %bb.em ], [ 1, %bb.el ], [ 1, %bb.ek ]
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body378

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1340
  store i64 0, ptr %i.ap, align 8, !noalias !1340
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1340
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1340
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1610612768, ptr %i.mz, align 8, !noalias !1340
  store ptr %i.ap, ptr %i.ao, align 8, !noalias !1340
  %i.na = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @126, ptr %i.na, align 8, !noalias !1340
  %i.nb = invoke noundef zeroext i1 @_RNvXs_NtCs4R3jSB693Zs_4uuid3fmtNtB6_4UuidNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.hg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.eh unwind label %bb.eg, !noalias !1341

bb.eg:                                            ; preds = %bb.ei, %bb.ef
  %i.nc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #27
          to label %.body378.thread unwind label %bb.ej, !noalias !1341

bb.eh:                                            ; preds = %bb.ef
  br i1 %i.nb, label %bb.ei, label %bb.ek, !prof !18

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #31
          to label %.noexc.i377 unwind label %bb.eg, !noalias !1341

.noexc.i377:                                      ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %bb.eg
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1341
  unreachable

bb.ek:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !1342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1340
  invoke void @_RNvNtCsl8OoimOLbh_6qdrant7startup16setup_panic_hook(i1 noundef zeroext %.sroa.011.0.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hb)
          to label %bb.el unwind label %bb.ee

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.hj, i64 1267
  %i.nf = load i8, ptr %i.ne, align 1, !range !15, !noundef !6
  invoke void @_RNvNtNtCslmvYCXbQjWR_6common4mmap6advice10set_global(i8 noundef %i.nf)
          to label %bb.em unwind label %bb.ee

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvNtCslmvYCXbQjWR_6common12memory_usage25set_resident_bytes_reader(ptr noundef nonnull @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops16memory_telemetry14resident_bytes)
          to label %bb.en unwind label %bb.ee

bb.en:                                            ; preds = %bb.em
  %i.ng = getelementptr inbounds nuw i8, ptr %i.hj, i64 424
  %i.nh = load i8, ptr %i.ng, align 8, !range !15, !noundef !6
  %.sroa.024.0 = trunc i8 %i.nh to i1
  invoke void @_RNvNtNtCs607s0NAIaWN_7segment14vector_storage6common16set_async_scorer(i1 noundef zeroext %.sroa.024.0)
          to label %bb.eo unwind label %bb.ee

bb.eo:                                            ; preds = %bb.en
  %i.ni = getelementptr inbounds nuw i8, ptr %i.hj, i64 425
  %i.nj = load i8, ptr %i.ni, align 1, !range !15, !noundef !6
  invoke void @_RNvNtNtCs607s0NAIaWN_7segment6common8io_uring17set_io_uring_mode(i8 noundef %i.nj)
          to label %bb.ep unwind label %bb.ee

bb.ep:                                            ; preds = %bb.eo
  invoke void @_RNvNtCsl8OoimOLbh_6qdrant8greeting7welcome(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.hj)
          to label %bb.eq unwind label %bb.ee

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1992 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !range !7, !noundef !6
  %.not242 = icmp eq i64 %i.nl, -1
  %. = select i1 %.not242, ptr null, ptr %i.nk
  invoke void @_RNvNtCsgGgPqgSfnMH_7storage5audit17init_audit_logger(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.gz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %.)
          to label %bb.er unwind label %bb.ee

bb.er:                                            ; preds = %bb.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.nm = load i64, ptr %i.gz, align 8, !range !1345, !alias.scope !1344, !noundef !6
  %i.nn = icmp eq i64 %i.nm, -2
  br i1 %i.nn, label %bb.es, label %bb.ew, !prof !18

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1346
  %i.no = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !alias.scope !1344, !nonnull !6, !noundef !6
  store ptr %i.np, ptr %i.an, align 8, !noalias !1346
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 60, ptr noundef nonnull %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #32
          to label %bb.eu unwind label %bb.et, !noalias !1346

bb.et:                                            ; preds = %bb.es
  %i.nq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs4_NtCscxI0zlRnmiB_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %.body378.thread unwind label %bb.ev, !noalias !1346

bb.eu:                                            ; preds = %bb.es
  unreachable

bb.ev:                                            ; preds = %bb.et
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !1346
  unreachable

bb.ew:                                            ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.gz, i64 56, i1 false), !alias.scope !1346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.hj, i64 1200 ; 2 uses
  %i.nt = load i64, ptr %i.ns, align 8, !range !7, !noundef !6
  %.not243 = icmp eq i64 %i.nt, -1
  br i1 %.not243, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.fe, %bb.ew
  invoke void @_RNvMs1_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8Settings17validate_and_warn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.hj)
          to label %bb.fg unwind label %bb.ey

.body390:                                         ; preds = %bb.ya, %bb.yb, %bb.gy, %bb.gz, %bb.fl, %bb.ft, %bb.gh, %bb.gl, %bb.ey, %bb.hj
  %.sroa.0127.6 = phi i8 [ 0, %bb.hj ], [ 0, %bb.gy ], [ 1, %bb.fl ], [ %.sroa.0127.7, %bb.ey ], [ 1, %bb.gl ], [ 1, %bb.gh ], [ 1, %bb.ft ], [ 0, %bb.gz ], [ 0, %bb.yb ], [ 0, %bb.ya ]
  %.sroa.0121.6 = phi i8 [ 0, %bb.hj ], [ 1, %bb.gy ], [ 1, %bb.fl ], [ %.sroa.0121.7, %bb.ey ], [ 1, %bb.gl ], [ 1, %bb.gh ], [ 1, %bb.ft ], [ 1, %bb.gz ], [ %.sroa.0121.8586, %bb.yb ], [ %.sroa.0121.8586, %bb.ya ]
  %.sroa.0119.2 = phi i8 [ %.sroa.0119.4, %bb.hj ], [ 1, %bb.gy ], [ 1, %bb.fl ], [ %.sroa.0119.3, %bb.ey ], [ 1, %bb.gl ], [ 1, %bb.gh ], [ 1, %bb.ft ], [ 1, %bb.gz ], [ %.sroa.0119.4587, %bb.yb ], [ %.sroa.0119.4587, %bb.ya ]
  %.sroa.0113.6 = phi i8 [ 0, %bb.hj ], [ 1, %bb.gy ], [ 1, %bb.fl ], [ 1, %bb.ey ], [ 1, %bb.gl ], [ 1, %bb.gh ], [ 1, %bb.ft ], [ 1, %bb.gz ], [ 1, %bb.yb ], [ 1, %bb.ya ]
  %.sroa.0168.3 = phi i8 [ %.sroa.0168.5, %bb.hj ], [ 1, %bb.gy ], [ 1, %bb.fl ], [ %.sroa.0168.4, %bb.ey ], [ 1, %bb.gl ], [ 1, %bb.gh ], [ 1, %bb.ft ], [ 1, %bb.gz ], [ %.sroa.0168.5589, %bb.yb ], [ %.sroa.0168.5589, %bb.ya ]
  %.pn300 = phi { ptr, i32 } [ %.pn298, %bb.hj ], [ %i.rb, %bb.gy ], [ %.pn.i389, %bb.fl ], [ %i.nu, %bb.ey ], [ %i.qt, %bb.gl ], [ %i.qj, %bb.gh ], [ %i.pg, %bb.ft ], [ %i.rb, %bb.gz ], [ %.pn298590, %bb.yb ], [ %.pn298590, %bb.ya ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs53Il55UEVRz_16tracing_appender12non_blocking11WorkerGuardEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ha) #27
          to label %.body378 unwind label %bb.pu

bb.ey:                                            ; preds = %bb.xn, %bb.ux, %bb.hc, %bb.gp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit42.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i, %bb.fj, %bb.hh, %bb.gr, %bb.gq, %bb.fi, %bb.fg, %bb.fd, %bb.fa, %bb.ex
  %.sroa.0127.7 = phi i8 [ 1, %bb.fi ], [ 0, %bb.xn ], [ 0, %bb.ux ], [ 0, %bb.hc ], [ 1, %bb.hh ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.gr ], [ 1, %bb.gq ], [ 1, %bb.gp ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit42.i ], [ 1, %bb.fg ], [ 1, %bb.ex ], [ 1, %bb.fd ], [ 1, %bb.fa ], [ 1, %bb.fj ]
  %.sroa.0121.7 = phi i8 [ 1, %bb.fi ], [ %.sroa.0121.11, %bb.xn ], [ 0, %bb.ux ], [ 1, %bb.hc ], [ 1, %bb.hh ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.gr ], [ 1, %bb.gq ], [ 1, %bb.gp ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit42.i ], [ 1, %bb.fg ], [ 1, %bb.ex ], [ 1, %bb.fd ], [ 1, %bb.fa ], [ 1, %bb.fj ]
  %.sroa.0119.3 = phi i8 [ 1, %bb.fi ], [ %.sroa.0119.35, %bb.xn ], [ 0, %bb.ux ], [ 1, %bb.hc ], [ 1, %bb.hh ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.gr ], [ 1, %bb.gq ], [ 1, %bb.gp ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit42.i ], [ 1, %bb.fg ], [ 1, %bb.ex ], [ 1, %bb.fd ], [ 1, %bb.fa ], [ 1, %bb.fj ]
  %.sroa.0168.4 = phi i8 [ 1, %bb.fi ], [ 1, %bb.xn ], [ 0, %bb.ux ], [ 1, %bb.hc ], [ 1, %bb.hh ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i ], [ 1, %bb.gr ], [ 1, %bb.gq ], [ 1, %bb.gp ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit42.i ], [ 1, %bb.fg ], [ 1, %bb.ex ], [ 1, %bb.fd ], [ 1, %bb.fa ], [ 1, %bb.fj ]
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %.body390

bb.ez:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy)
  store ptr %i.ns, ptr %i.gy, align 8
  %i.nv = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.nw = icmp ult i64 %i.nv, 6
  call void @llvm.assume(i1 %i.nw)
  %i.nx = icmp samesign ugt i64 %i.nv, 1
  br i1 %i.nx, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  store ptr %i.gy, ptr %i.gx, align 8
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.4178.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw)
  store ptr @3, ptr %i.gw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 6, ptr %i.ny, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr @3, ptr %i.nz, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store i64 6, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store ptr @16, ptr %i.ob, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @15, ptr noundef nonnull %i.gx, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gw)
          to label %bb.fb unwind label %bb.ey

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ez
  %i.oc = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.od = icmp ult i64 %i.oc, 6
  call void @llvm.assume(i1 %i.od)
  %i.oe = icmp samesign ugt i64 %i.oc, 1
  br i1 %i.oe, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv)
  store ptr @3, ptr %i.gv, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store i64 6, ptr %i.of, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store ptr @3, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store i64 6, ptr %i.oh, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store ptr @18, ptr %i.oi, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 163 to ptr), i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gv)
          to label %bb.ff unwind label %bb.ey

bb.fe:                                            ; preds = %bb.fc, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy)
  br label %bb.ex

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  br label %bb.fe

bb.fg:                                            ; preds = %bb.ex
  %i.oj = getelementptr inbounds nuw i8, ptr %i.hj, i64 1000 ; 2 uses
  %i.ok = invoke noundef ptr @_RINvCs3TE53SMfxyL_6fs_err14create_dir_allRNtNtCsG258MDvU3F_3std4path7PathBufECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oj)
          to label %bb.fh unwind label %bb.ey     ; 2 uses

bb.fh:                                            ; preds = %bb.fg
  %.not244 = icmp eq ptr %i.ok, null
  br i1 %.not244, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ol = invoke noundef nonnull ptr @_RNvXs_NtCscxI0zlRnmiB_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.ok)
          to label %bb.yc unwind label %bb.ey

bb.fj:                                            ; preds = %bb.fh
  %i.om = getelementptr inbounds nuw i8, ptr %i.hj, i64 1008 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !nonnull !6, !noundef !6 ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.hj, i64 1016 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !noundef !6 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1347
  invoke void @_RINvNtNtCslmvYCXbQjWR_6common2fs5check13check_fs_infoRNtNtCsG258MDvU3F_3std4path4PathECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.am, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.on, i64 noundef %i.op)
          to label %.noexc unwind label %bb.ey

.noexc:                                           ; preds = %bb.fj
  %i.oq = load i64, ptr %i.am, align 8, !range !11, !noalias !1347, !noundef !6
  switch i64 %i.oq, label %default.unreachable [
    i64 0, label %bb.go
    i64 1, label %bb.fk
    i64 2, label %bb.gi
  ]

default.unreachable:                              ; preds = %bb.gb, %.noexc
  unreachable

bb.fk:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1347
  %i.or = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 24, i1 false), !noalias !1347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1347
end_hunk_0
begin_hunk_1_@_RNvCsl8OoimOLbh_6qdrant4main:bb.a
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 504
  %i.yx = load ptr, ptr %i.yw, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 824
  %i.yz = load ptr, ptr %i.yy, align 8, !nonnull !6, !noundef !6
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 832
  %i.zb = load i64, ptr %i.za, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  store i64 0, ptr %i.fy, align 8
  %i.zc = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.zc, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  store i64 0, ptr %i.zd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  %i.ze = atomicrmw add ptr %i.yt, i64 1 monotonic, align 8
  %i.zf = icmp slt i64 %i.ze, 0
  br i1 %i.zf, label %bb.ln, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  store ptr %i.yt, ptr %i.fx, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr null, ptr %i.zg, align 8
  %i.zh = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i8 0, ptr %i.zh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  br i1 %i.sj, label %bb.lo, label %bb.lp

bb.ln:                                            ; preds = %bb.ll
  call void @llvm.trap()
  unreachable

bb.lo:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.fp, ptr noundef nonnull align 8 dereferenceable(288) %i.gp, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  %i.zi = atomicrmw add ptr %i.yt, i64 1 monotonic, align 8
  %i.zj = icmp slt i64 %i.zi, 0
  br i1 %i.zj, label %bb.mi, label %bb.mh

.critedge317:                                     ; preds = %.body, %bb.mp
  br i1 %.sroa.0160.3, label %.critedge317.thread658, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsl8OoimOLbh_6qdrant6common6health13HealthCheckerEEEB1B_.exit

.split.thread:                                    ; preds = %bb.mm, %bb.vo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457, %bb.ub, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread, %bb.tt, %bb.sz, %bb.ty, %bb.mn, %bb.lq, %bb.ma, %bb.lx, %bb.lv
  %.sroa.0164.1.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 1, %bb.lq ], [ 1, %bb.mm ], [ 1, %bb.mn ], [ 1, %bb.ty ], [ 1, %bb.sz ], [ 1, %bb.tt ], [ 1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ 0, %bb.ub ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ 1, %bb.vo ]
  %.sroa.0163.1.ph = phi i1 [ true, %bb.lv ], [ true, %bb.lx ], [ true, %bb.ma ], [ true, %bb.lq ], [ true, %bb.mm ], [ true, %bb.mn ], [ true, %bb.ty ], [ true, %bb.sz ], [ true, %bb.tt ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ false, %bb.ub ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ false, %bb.vo ]
  %.sroa.0162.1.ph = phi i1 [ false, %bb.lv ], [ false, %bb.lx ], [ false, %bb.ma ], [ true, %bb.lq ], [ true, %bb.mm ], [ true, %bb.mn ], [ false, %bb.ty ], [ false, %bb.sz ], [ false, %bb.tt ], [ false, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ false, %bb.ub ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ false, %bb.vo ]
  %.sroa.0161.1.ph = phi i1 [ false, %bb.lv ], [ false, %bb.lx ], [ false, %bb.ma ], [ false, %bb.lq ], [ false, %bb.mm ], [ false, %bb.mn ], [ true, %bb.ty ], [ true, %bb.sz ], [ true, %bb.tt ], [ true, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ true, %bb.ub ], [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ true, %bb.vo ]
  %.sroa.0119.19.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 1, %bb.lq ], [ 1, %bb.mm ], [ 1, %bb.mn ], [ 0, %bb.ty ], [ 0, %bb.sz ], [ 0, %bb.tt ], [ 0, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ 0, %bb.ub ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ 0, %bb.vo ]
  %.sroa.0104.11.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 1, %bb.lq ], [ 1, %bb.mm ], [ 1, %bb.mn ], [ %.sroa.0104.12, %bb.ty ], [ %.sroa.0104.12, %bb.sz ], [ %.sroa.0104.12, %bb.tt ], [ %.sroa.0104.12, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.0104.12, %bb.ub ], [ %.sroa.0104.12, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.0104.12, %bb.vo ]
  %.sroa.095.8.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 1, %bb.lq ], [ 0, %bb.mm ], [ 0, %bb.mn ], [ %.sroa.092.6, %bb.ty ], [ %.sroa.092.6, %bb.sz ], [ %.sroa.092.6, %bb.tt ], [ %.sroa.092.6, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.092.6, %bb.ub ], [ %.sroa.092.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.092.6, %bb.vo ]
  %.sroa.092.5.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 1, %bb.lq ], [ 1, %bb.mm ], [ 1, %bb.mn ], [ %.sroa.092.6, %bb.ty ], [ %.sroa.092.6, %bb.sz ], [ %.sroa.092.6, %bb.tt ], [ %.sroa.092.6, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.092.6, %bb.ub ], [ %.sroa.092.6, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.092.6, %bb.vo ] ; 2 uses
  %.sroa.089.1.ph = phi i8 [ 0, %bb.lv ], [ 0, %bb.lx ], [ 1, %bb.ma ], [ 0, %bb.lq ], [ 0, %bb.mm ], [ 0, %bb.mn ], [ 1, %bb.ty ], [ 1, %bb.sz ], [ %.sroa.086.7, %bb.tt ], [ %.sroa.086.7, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.086.7, %bb.ub ], [ %.sroa.086.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.086.7, %bb.vo ]
  %.sroa.086.1.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 0, %bb.lq ], [ 0, %bb.mm ], [ 0, %bb.mn ], [ 1, %bb.ty ], [ 1, %bb.sz ], [ %.sroa.086.7, %bb.tt ], [ %.sroa.086.7, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ %.sroa.086.7, %bb.ub ], [ %.sroa.086.7, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ %.sroa.086.7, %bb.vo ]
  %.sroa.0168.18.ph = phi i8 [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.ma ], [ 1, %bb.lq ], [ 1, %bb.mm ], [ 1, %bb.mn ], [ 1, %bb.ty ], [ 1, %bb.sz ], [ 1, %bb.tt ], [ 1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtB1V_2io5error5ErrorEEENtNtNtNtB1V_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread ], [ 1, %bb.ub ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentEECsl8OoimOLbh_6qdrant.exit457 ], [ 1, %bb.vo ]
  %lpad.thr_comm1166 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsl8OoimOLbh_6qdrant6common6health13HealthCheckerEEEB1B_.exit

.split:                                           ; preds = %bb.qm, %bb.qb, %bb.rg, %bb.ra, %bb.qy, %bb.qw, %bb.qp, %bb.qn, %bb.ql, %bb.qh, %bb.qd
  %.sroa.0104.11.ph1163 = phi i8 [ %.sroa.0104.12, %bb.qy ], [ %.sroa.0104.12, %bb.ra ], [ %.sroa.0104.12, %bb.rg ], [ %.sroa.0104.12, %bb.qd ], [ %.sroa.0104.12, %bb.ql ], [ %.sroa.0104.12, %bb.qm ], [ %.sroa.0104.17, %bb.qb ], [ %.sroa.0104.12, %bb.qp ], [ %.sroa.0104.12, %bb.qn ], [ %.sroa.0104.12, %bb.qh ], [ %.sroa.0104.12, %bb.qw ]
  %.sroa.095.8.ph1164 = phi i8 [ %.sroa.092.6, %bb.qy ], [ %.sroa.092.6, %bb.ra ], [ %.sroa.092.6, %bb.rg ], [ %.sroa.092.6, %bb.qd ], [ %.sroa.092.6, %bb.ql ], [ %.sroa.092.6, %bb.qm ], [ 0, %bb.qb ], [ %.sroa.092.6, %bb.qp ], [ %.sroa.092.6, %bb.qn ], [ %.sroa.092.6, %bb.qh ], [ %.sroa.092.6, %bb.qw ] ; 3 uses
  %lpad.thr_comm.split-lp1167 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge317.thread658

bb.lp:                                            ; preds = %bb.lm
  %i.zk = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.zl = icmp ult i64 %i.zk, 6
  call void @llvm.assume(i1 %i.zl)
  %i.zm = icmp samesign ugt i64 %i.zk, 2
  br i1 %i.zm, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  store ptr @3, ptr %i.el, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 6, ptr %i.zn, align 8
  %i.zo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr @3, ptr %i.zo, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 6, ptr %i.zp, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store ptr @23, ptr %i.zq, align 8
  invoke void @_RINvNtCs7A8gjpeJ2x1_3log13___private_api3loguNtB2_12GlobalLoggerECsl8OoimOLbh_6qdrant(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 51 to ptr), i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.el)
          to label %bb.lu unwind label %.split.thread

bb.lr:                                            ; preds = %bb.lp, %bb.lu
  %i.zr = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zr, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  store i64 1, ptr %i.bz, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 1, ptr %i.zs, align 8
  %i.zt = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 40)
          to label %bb.lv unwind label %bb.ls     ; 2 uses

bb.ls:                                            ; preds = %bb.lr
  %i.zu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bz) #27
          to label %.thread1100 unwind label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.zv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.lu:                                            ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br label %bb.lr

bb.lv:                                            ; preds = %bb.lr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.zt, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  store ptr %i.zt, ptr %i.fu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  invoke fastcc void @_RNvXst_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2048) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.hj)
          to label %bb.lw unwind label %.split.thread

bb.lw:                                            ; preds = %bb.lv
  %i.zw = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  %i.zx = atomicrmw add ptr %i.zw, i64 1 monotonic, align 8
  %i.zy = icmp slt i64 %i.zx, 0
  br i1 %i.zy, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.zz = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.br, ptr noundef nonnull align 1 dereferenceable(16) %i.hg, i64 16, i1 false)
  invoke void @_RNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB2_18TelemetryCollector3new(ptr noalias nofree noundef nonnull sret([2104 x i8]) align 8 captures(none) dereferenceable(2104) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2048) %i.ej, ptr noundef nonnull %i.zz, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.br)
          to label %bb.lz unwind label %.split.thread

bb.ly:                                            ; preds = %bb.lw
  call void @llvm.trap()
  unreachable

bb.lz:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ek, i64 2064
  %i.aab = load ptr, ptr %i.aaa, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aac = atomicrmw add ptr %i.aab, i64 1 monotonic, align 8
  %i.aad = icmp slt i64 %i.aac, 0
  br i1 %i.aad, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  store ptr %i.aab, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  invoke void @_RNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorE3newBW_(ptr noalias nofree noundef nonnull sret([2144 x i8]) align 8 captures(none) dereferenceable(2144) %i.ei, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2104) %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
          to label %bb.mc unwind label %.split.thread

bb.mb:                                            ; preds = %bb.lz
  call void @llvm.trap()
  unreachable

bb.mc:                                            ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 1, ptr %i.by, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 1, ptr %i.aae, align 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2144) %i.aaf, ptr noundef nonnull align 8 dereferenceable(2144) %i.ei, i64 2144, i1 false)
  %i.aag = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 2160)
          to label %bb.mf unwind label %bb.md     ; 2 uses

bb.md:                                            ; preds = %bb.mc
  %i.aah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorEEEB22_(ptr noalias nofree noundef nonnull align 8 dereferenceable(2160) %i.by) #27
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsl8OoimOLbh_6qdrant6common6health13HealthCheckerEEEB1B_.exit.thread unwind label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.aai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.mf:                                            ; preds = %bb.mc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2160) %i.aag, ptr noundef nonnull align 8 dereferenceable(2160) %i.by, i64 2160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  store ptr %i.aag, ptr %i.fw, align 8
  store ptr null, ptr %i.ft, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  br label %bb.mg

bb.mg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit445, %bb.mf
  %.sroa.0104.12 = phi i8 [ %.sroa.0104.17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit445 ], [ 1, %bb.mf ] ; 42 uses
  %.sroa.092.6 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager17ConsensusStateRefECsl8OoimOLbh_6qdrant.exit445 ], [ 1, %bb.mf ] ; 78 uses
  %i.aaj = load atomic i64, ptr @_RNvCs7A8gjpeJ2x1_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aak = icmp ult i64 %i.aaj, 6
  call void @llvm.assume(i1 %i.aak)
  %i.aal = icmp samesign ugt i64 %i.aaj, 2        ; 2 uses
  br i1 %3, label %bb.qc, label %bb.qg

bb.mh:                                            ; preds = %bb.lo
  store ptr %i.yt, ptr %i.fo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  %.sroa.064.0.copyload = load i64, ptr %i.gi, align 8
  %i.aam = trunc nuw i64 %.sroa.064.0.copyload to i1
  br i1 %i.aam, label %bb.mj, label %bb.mk, !prof !19

bb.mi:                                            ; preds = %bb.lo
  call void @llvm.trap()
  unreachable

bb.mj:                                            ; preds = %bb.mh
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.465.0..sroa_idx, i64 24, i1 false)
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE3newCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([848 x i8]) align 8 captures(none) dereferenceable(848) %i.fq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(288) %i.fp, ptr noundef nonnull %i.yt, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.yz, i64 noundef %i.zb)
          to label %bb.mm unwind label %.thread686

.thread686:                                       ; preds = %bb.mj
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant.exit508.thread.thread1078

bb.mk:                                            ; preds = %bb.mh
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #32
          to label %bb.ml unwind label %bb.wn

bb.ml:                                            ; preds = %bb.vf, %bb.ti, %bb.sk, %bb.rs, %bb.mk
  unreachable

bb.mm:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  invoke fastcc void @_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBM_3toc14TableOfContentENtNtBM_6errors12StorageErrorE6expectCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dereferenceable(848) %i.fr, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(848) %i.fq)
          to label %bb.mn unwind label %.split.thread

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  %i.aao = invoke noundef nonnull ptr @_RNvXs2_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerNtB5_17ConsensusStateRefINtNtCskKLDkoKarTP_4core7convert4FromINtB5_16ConsensusManagerNtNtB7_3toc14TableOfContentEE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(848) %i.fr)
          to label %bb.mo unwind label %.split.thread ; 2 uses

bb.mo:                                            ; preds = %bb.mn
  store ptr %i.aao, ptr %i.fs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  invoke void @_RNvMs_NtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_managerINtB4_16ConsensusManagerNtNtB6_3toc14TableOfContentE10hard_stateCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noundef nonnull align 8 %i.aap)
          to label %bb.mr unwind label %bb.mq

.body:                                            ; preds = %bb.nj, %bb.mz, %bb.mq, %.critedge
  %.sroa.0162.3 = phi i1 [ false, %.critedge ], [ false, %bb.mz ], [ %.sroa.0162.4, %bb.mq ], [ false, %bb.nj ] ; 2 uses
  %.sroa.0161.3 = phi i1 [ true, %.critedge ], [ false, %bb.mz ], [ %.sroa.0161.4, %bb.mq ], [ false, %bb.nj ] ; 2 uses
  %.sroa.0160.3 = phi i1 [ %.sroa.0160.5, %.critedge ], [ false, %bb.mz ], [ %.sroa.0160.4, %bb.mq ], [ false, %bb.nj ]
  %.sroa.0110.17 = phi i8 [ %.sroa.0110.19, %.critedge ], [ 1, %bb.mz ], [ %.sroa.092.8, %bb.mq ], [ 1, %bb.nj ] ; 2 uses
  %.sroa.0104.13 = phi i8 [ %.sroa.0104.15, %.critedge ], [ 1, %bb.mz ], [ %.sroa.0104.14, %bb.mq ], [ 1, %bb.nj ] ; 2 uses
  %.sroa.092.7 = phi i8 [ %.sroa.092.9, %.critedge ], [ 1, %bb.mz ], [ %.sroa.092.8, %bb.mq ], [ 1, %bb.nj ] ; 2 uses
  %.sroa.089.3 = phi i8 [ 1, %.critedge ], [ 0, %bb.mz ], [ %.sroa.089.4, %bb.mq ], [ 1, %bb.nj ] ; 2 uses
  %.sroa.086.3 = phi i8 [ 1, %.critedge ], [ 0, %bb.mz ], [ %.sroa.086.4, %bb.mq ], [ 1, %bb.nj ] ; 2 uses
  %.pn259 = phi { ptr, i32 } [ %.pn257, %.critedge ], [ %i.abn, %bb.mz ], [ %i.aat, %bb.mq ], [ %i.aca, %bb.nj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.aaq = load ptr, ptr %i.fs, align 8, !alias.scope !1399, !nonnull !6, !noundef !6
  %i.aar = atomicrmw add ptr %i.aaq, i64 -1 release, align 8, !noalias !1399
  %i.aas = icmp eq i64 %i.aar, 1
  br i1 %i.aas, label %bb.mp, label %.critedge317

bb.mp:                                            ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgGgPqgSfnMH_7storage15content_manager17consensus_manager16ConsensusManagerNtNtBL_3toc14TableOfContentEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fs) #30
          to label %.critedge317 unwind label %bb.pu

bb.mq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit, %bb.nl, %bb.ng, %bb.nd, %bb.nb, %bb.mw, %bb.mu, %bb.ms, %bb.mo
  %.sroa.0162.4 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.nl ], [ true, %bb.mu ], [ true, %bb.mo ], [ false, %bb.ng ], [ false, %bb.nd ], [ false, %bb.nb ], [ false, %bb.ms ], [ true, %bb.mw ]
  %.sroa.0161.4 = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ true, %bb.nl ], [ false, %bb.mu ], [ false, %bb.mo ], [ false, %bb.ng ], [ false, %bb.nd ], [ false, %bb.nb ], [ false, %bb.ms ], [ false, %bb.mw ]
  %.sroa.0160.4 = phi i1 [ true, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ false, %bb.nl ], [ false, %bb.mu ], [ false, %bb.mo ], [ false, %bb.ng ], [ false, %bb.nd ], [ false, %bb.nb ], [ false, %bb.ms ], [ false, %bb.mw ]
  %.sroa.0104.14 = phi i8 [ %.sroa.0104.17, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nl ], [ 1, %bb.mu ], [ 1, %bb.mo ], [ 1, %bb.ng ], [ 1, %bb.nd ], [ 1, %bb.nb ], [ 1, %bb.ms ], [ 1, %bb.mw ]
  %.sroa.092.8 = phi i8 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nl ], [ 1, %bb.mu ], [ 1, %bb.mo ], [ 1, %bb.ng ], [ 1, %bb.nd ], [ 1, %bb.nb ], [ 1, %bb.ms ], [ 1, %bb.mw ] ; 2 uses
  %.sroa.089.4 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nl ], [ 0, %bb.mu ], [ 0, %bb.mo ], [ 1, %bb.ng ], [ 0, %bb.nd ], [ 0, %bb.nb ], [ 0, %bb.ms ], [ 0, %bb.mw ]
  %.sroa.086.4 = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio7runtime4task4join10JoinHandleuEECsl8OoimOLbh_6qdrant.exit ], [ 1, %bb.nl ], [ 0, %bb.mu ], [ 0, %bb.mo ], [ 1, %bb.ng ], [ 1, %bb.nd ], [ 1, %bb.nb ], [ 0, %bb.ms ], [ 0, %bb.mw ]
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mr:                                            ; preds = %bb.mo
  %i.aau = load i64, ptr %i.cg, align 8, !noundef !6
  %i.aav = icmp eq i64 %i.aau, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  %i.aaw = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.aax = atomicrmw add ptr %i.aaw, i64 1 monotonic, align 8
  %i.aay = icmp slt i64 %i.aax, 0
  br i1 %i.aay, label %bb.mt, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.aaz = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.aba = getelementptr inbounds nuw i8, ptr %i.hj, i64 1593
  %i.abb = load i8, ptr %i.aba, align 1, !range !21, !noundef !6
  %i.abc = trunc nuw i8 %i.abb to i1
  invoke void @_RNvMNtCsgGgPqgSfnMH_7storage10dispatcherNtB2_10Dispatcher14with_consensus(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.fl, ptr noundef nonnull %i.aaz, i1 noundef zeroext %i.abc)
          to label %bb.mu unwind label %bb.mq

bb.mt:                                            ; preds = %bb.mr
  call void @llvm.trap()
  unreachable

bb.mu:                                            ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  %i.abd = invoke noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc14TableOfContentE9downgradeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fz)
          to label %bb.mv unwind label %bb.mq

bb.mv:                                            ; preds = %bb.mu
  %i.abe = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.abf = atomicrmw add ptr %i.abe, i64 1 monotonic, align 8
  %i.abg = icmp slt i64 %i.abf, 0
  br i1 %i.abg, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.abh = load ptr, ptr %i.fs, align 8, !nonnull !6, !noundef !6
  %i.abi = load ptr, ptr %i.fz, align 8, !nonnull !6, !noundef !6
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  invoke void @_RNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtB2_14TableOfContent19with_toc_dispatcher(ptr noundef nonnull align 8 %i.abj, ptr noundef nonnull %i.abd, ptr noundef nonnull %i.abh)
          to label %bb.my unwind label %bb.mq

bb.mx:                                            ; preds = %bb.mv
  call void @llvm.trap()
  unreachable

bb.my:                                            ; preds = %bb.mw
  %i.abk = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abk, ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 24, i1 false)
  store i64 1, ptr %i.cf, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 1, ptr %i.abl, align 8
  %i.abm = invoke fastcc noundef ptr @_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit(i64 noundef 40)
          to label %bb.nb unwind label %bb.mz     ; 2 uses

bb.mz:                                            ; preds = %bb.my
  %i.abn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cf) #27
          to label %.body unwind label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.abo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.nb:                                            ; preds = %bb.my
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.abm, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  store ptr %i.abm, ptr %i.fu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  invoke fastcc void @_RNvXst_NtCsl8OoimOLbh_6qdrant8settingsNtB5_8SettingsNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(2048) %i.fj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2048) %i.hj)
          to label %bb.nc unwind label %bb.mq

bb.nc:                                            ; preds = %bb.nb
  %i.abp = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  %i.abq = atomicrmw add ptr %i.abp, i64 1 monotonic, align 8
  %i.abr = icmp slt i64 %i.abq, 0
  br i1 %i.abr, label %bb.ne, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.abs = load ptr, ptr %i.fu, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bq, ptr noundef nonnull align 1 dereferenceable(16) %i.hg, i64 16, i1 false)
  invoke void @_RNvMNtNtCsl8OoimOLbh_6qdrant6common9telemetryNtB2_18TelemetryCollector3new(ptr noalias nofree noundef nonnull sret([2104 x i8]) align 8 captures(none) dereferenceable(2104) %i.fk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2048) %i.fj, ptr noundef nonnull %i.abs, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %i.bq)
          to label %bb.nf unwind label %bb.mq

bb.ne:                                            ; preds = %bb.nc
  call void @llvm.trap()
  unreachable

bb.nf:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  %i.abt = getelementptr inbounds nuw i8, ptr %i.fk, i64 2064
  %i.abu = load ptr, ptr %i.abt, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.abv = atomicrmw add ptr %i.abu, i64 1 monotonic, align 8
  %i.abw = icmp slt i64 %i.abv, 0
  br i1 %i.abw, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  store ptr %i.abu, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  invoke void @_RNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_5MutexNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry18TelemetryCollectorE3newBW_(ptr noalias nofree noundef nonnull sret([2144 x i8]) align 8 captures(none) dereferenceable(2144) %i.fi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(2104) %i.fk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28)
          to label %bb.ni unwind label %bb.mq

bb.nh:                                            ; preds = %bb.nf
  call void @llvm.trap()
  unreachable

end_hunk_1

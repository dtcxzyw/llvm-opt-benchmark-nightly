Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.227?download=true
inline.NumInlined: 683
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMNtNtNtCs3WWrd2JY12C_5hyper5proto2h16encodeNtB3_7Encoder15encode_trailersNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant:bb.a
  %i.bz = load ptr, ptr %i.av, align 8, !alias.scope !84, !noundef !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !84, !nonnull !10, !noundef !10
  %i.cc = load ptr, ptr %i.aw, align 8, !alias.scope !84, !noundef !10
  %i.cd = load i64, ptr %i.ax, align 8, !alias.scope !84, !noundef !10
  invoke void %i.cb(ptr noundef %i.bz, ptr noundef %i.cc, i64 noundef %i.cd)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33 unwind label %bb.ag, !inline_history !60

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.i, %bb.h, %bb.j, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.ag ], [ %.pn.pn.pn.pn, %bb.j ], [ %.pn.pn.pn.pn, %bb.h ], [ %.pn.pn.pn.pn, %bb.i ] ; 2 uses
  %.sroa.016.4 = phi i1 [ false, %bb.ag ], [ %.sroa.016.2, %bb.j ], [ %.sroa.016.2, %bb.h ], [ %.sroa.016.2, %bb.i ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit unwind label %bb.am

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit
  br i1 %.sroa.016.4, label %.thread, label %bb.da

bb.ag:                                            ; preds = %bb.ak, %bb.af
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33: ; preds = %bb.ae, %bb.ad, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit33, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header3map9HeaderMapECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q)
          to label %bb.ai unwind label %bb.k

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.cf = load i64, ptr %i.r, align 8, !range !39, !alias.scope !85, !noundef !10
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ch = load ptr, ptr %i.au, align 8, !alias.scope !94, !noundef !10 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.cj = load ptr, ptr %i.av, align 8, !alias.scope !107, !noundef !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !107, !nonnull !10, !noundef !10
  %i.cm = load ptr, ptr %i.aw, align 8, !alias.scope !107, !noundef !10
  %i.cn = load i64, ptr %i.ax, align 8, !alias.scope !107, !noundef !10
  invoke void %i.cl(ptr noundef %i.cj, ptr noundef %i.cm, i64 noundef %i.cn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38 unwind label %bb.ag, !inline_history !60

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit38: ; preds = %bb.aj, %bb.ai, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ah

bb.al:                                            ; preds = %bb.u, %bb.t
  %lpad.thr_comm99 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #27
          to label %.body30 unwind label %bb.am

bb.am:                                            ; preds = %bb.cz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameEECsl8OoimOLbh_6qdrant.exit, %bb.j, %.thread, %bb.al, %.thread109, %.body30
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.an:                                            ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.cp = icmp eq i64 %.pre, 0
  br i1 %i.cp, label %.thread406, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.cq = load ptr, ptr %i.au, align 8, !alias.scope !117, !noundef !10 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.thread406, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.cs = load ptr, ptr %i.av, align 8, !alias.scope !130, !noundef !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !130, !nonnull !10, !noundef !10
  %i.cv = load ptr, ptr %i.aw, align 8, !alias.scope !130, !noundef !10
  %i.cw = load i64, ptr %i.ax, align 8, !alias.scope !130, !noundef !10
  invoke void %i.cu(ptr noundef %i.cs, ptr noundef %i.cv, i64 noundef %i.cw)
          to label %.thread406 unwind label %.thread105, !inline_history !60

bb.aq:                                            ; preds = %bb.q
  %i.cx = trunc nuw i64 %.pre to i1
  br i1 %i.cx, label %bb.ar, label %bb.as, !prof !131

.thread105:                                       ; preds = %bb.ap
  %i.cy = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  br label %bb.cz

.thread406:                                       ; preds = %bb.ap, %bb.an, %bb.ao
  store i64 1, ptr %i.r, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  br label %bb.ar

.thread116.loopexit:                              ; preds = %bb.cy
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109

.thread116.loopexit.split-lp:                     ; preds = %bb.bv, %bb.bp, %bb.az, %bb.cn, %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.thread
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109

.loopexit:                                        ; preds = %bb.ar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ar:                                            ; preds = %.thread406, %bb.aq
  %i.cz = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBP_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull align 8 %i.au)
          to label %bb.au unwind label %.loopexit

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %bb.at unwind label %.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  unreachable

bb.au:                                            ; preds = %bb.ar
  br i1 %i.cz, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload55) ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload55, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !132, !nonnull !10, !noundef !10
  invoke void %i.db(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.657.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.backedge unwind label %bb.o, !inline_history !139

bb.aw:                                            ; preds = %bb.au
  %i.dc = load ptr, ptr %i.au, align 8, !noundef !10
  %.not21 = icmp eq ptr %i.dc, null
  br i1 %.not21, label %bb.cx, label %bb.ax

bb.ax:                                            ; preds = %bb.cx, %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.dd = invoke noundef zeroext i1 @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %bb.ay unwind label %.loopexit142, !noalias !143

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.dd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload55) ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload55, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !146, !nonnull !10, !noundef !10
  invoke void %i.df(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.657.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.thread unwind label %.thread116.loopexit.split-lp, !inline_history !153

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.dg = load i64, ptr %i.q, align 8, !range !61, !alias.scope !157, !noalias !143, !noundef !10 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 2
  br i1 %i.dh, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !158
  %i.di = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !157, !noalias !143 ; 3 uses
  %i.dj = shufflevector <2 x i64> %i.di, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dk = xor <2 x i64> %i.dj, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.dk, ptr %i.f, align 16, !noalias !158
  %i.dl = shufflevector <2 x i64> %i.di, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.dm = xor <2 x i64> %i.dl, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.dm, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !noalias !158
  store <2 x i64> %i.di, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !158
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !158
  %i.dn = load ptr, ptr %i.au, align 8, !noalias !159, !noundef !10 ; 2 uses
  %i.do = icmp ne ptr %i.dn, null
  %i.dp = zext i1 %i.do to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !166
  store i64 %i.dp, ptr %i.e, align 8, !noalias !166
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8) #28, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !166
  %.not.i.i.i.i.i = icmp eq ptr %i.dn, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !159, !noundef !10 ; 2 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !159, !noundef !10
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val1.i.i.i.i.i) #28, !noalias !171
  %i.dq = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.dr = trunc i64 %i.dq to i8
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ds = load i8, ptr %i.aw, align 8, !range !172, !noalias !159, !noundef !10 ; 2 uses
  %i.dt = zext nneg i8 %i.ds to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !173
  store i64 %i.dt, ptr %i.d, align 8, !noalias !173
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #28, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !173
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.bd, %bb.bc
  %i.du = phi i8 [ %i.ds, %bb.bd ], [ %i.dr, %bb.bc ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !178, !noalias !158
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !158
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i, align 16, !alias.scope !178, !noalias !158 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !158
  %i.dv = load i64, ptr %.sroa.915.0..sroa_idx.i.i, align 16, !alias.scope !178, !noalias !158, !noundef !10
  %i.dw = shl i64 %i.dv, 56
  %i.dx = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !alias.scope !178, !noalias !158, !noundef !10
  %i.dy = or i64 %i.dw, %i.dx                     ; 2 uses
  %i.dz = xor i64 %i.dy, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.ea = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.eb = add i64 %i.dz, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.ed = xor i64 %i.ec, %i.ea                    ; 3 uses
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 16)
  %i.ef = xor i64 %i.ee, %i.eb                    ; 3 uses
  %i.eg = call noundef i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 32)
  %i.eh = add i64 %i.eb, %i.ed                    ; 3 uses
  %i.ei = add i64 %i.ef, %i.eg                    ; 2 uses
  %i.ej = call noundef i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 17)
  %i.ek = xor i64 %i.eh, %i.ej                    ; 3 uses
  %i.el = call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 21)
  %i.em = xor i64 %i.el, %i.ei                    ; 3 uses
  %i.en = call noundef i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.eh, i64 32)
  %i.eo = xor i64 %i.ei, %i.dy
  %i.ep = xor i64 %i.en, 255
  %i.eq = add i64 %i.eo, %i.ek                    ; 3 uses
  %i.er = add i64 %i.em, %i.ep                    ; 2 uses
  %i.es = call noundef i64 @llvm.fshl.i64(i64 %i.ek, i64 %i.ek, i64 13)
  %i.et = xor i64 %i.eq, %i.es                    ; 3 uses
  %i.eu = call noundef i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 16)
  %i.ev = xor i64 %i.eu, %i.er                    ; 3 uses
  %i.ew = call noundef i64 @llvm.fshl.i64(i64 %i.eq, i64 %i.eq, i64 32)
  %i.ex = add i64 %i.et, %i.er                    ; 3 uses
  %i.ey = add i64 %i.ev, %i.ew                    ; 2 uses
  %i.ez = call noundef i64 @llvm.fshl.i64(i64 %i.et, i64 %i.et, i64 17)
  %i.fa = xor i64 %i.ex, %i.ez                    ; 3 uses
  %i.fb = call noundef i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 21)
  %i.fc = xor i64 %i.fb, %i.ey                    ; 3 uses
  %i.fd = call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 32)
  %i.fe = add i64 %i.fa, %i.ey                    ; 3 uses
  %i.ff = add i64 %i.fc, %i.fd                    ; 2 uses
  %i.fg = call noundef i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 13)
  %i.fh = xor i64 %i.fg, %i.fe                    ; 3 uses
  %i.fi = call noundef i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 16)
  %i.fj = xor i64 %i.fi, %i.ff                    ; 3 uses
  %i.fk = call noundef i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 32)
  %i.fl = add i64 %i.fh, %i.ff                    ; 3 uses
  %i.fm = add i64 %i.fj, %i.fk                    ; 2 uses
  %i.fn = call noundef i64 @llvm.fshl.i64(i64 %i.fh, i64 %i.fh, i64 17)
  %i.fo = xor i64 %i.fn, %i.fl                    ; 3 uses
  %i.fp = call noundef i64 @llvm.fshl.i64(i64 %i.fj, i64 %i.fj, i64 21)
  %i.fq = xor i64 %i.fp, %i.fm                    ; 2 uses
  %i.fr = call noundef i64 @llvm.fshl.i64(i64 %i.fl, i64 %i.fl, i64 32)
  %i.fs = add i64 %i.fo, %i.fm
  %i.ft = add i64 %i.fq, %i.fr                    ; 2 uses
  %i.fu = call noundef i64 @llvm.fshl.i64(i64 %i.fo, i64 %i.fo, i64 13)
  %i.fv = xor i64 %i.fu, %i.fs                    ; 2 uses
  %i.fw = shl i64 %i.fq, 16
  %i.fx = xor i64 %i.fw, %i.ft
  %i.fy = add i64 %i.fv, %i.ft                    ; 2 uses
  %i.fz = lshr i64 %i.fv, 47
  %i.ga = lshr i64 %i.fx, 43
  %i.gb = lshr i64 %i.fy, 32
  %i.gc = xor i64 %i.ga, %i.fz
  %i.gd = xor i64 %i.gc, %i.gb
  %i.ge = xor i64 %i.gd, %i.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !158
  br label %.loopexit.i

bb.be:                                            ; preds = %bb.ba
  %i.gf = load ptr, ptr %i.au, align 8, !noalias !181, !noundef !10 ; 2 uses
  %i.gg = icmp ne ptr %i.gf, null
  %i.gh = zext i1 %i.gg to i64
  %i.gi = xor i64 %i.gh, -3750763034362895579
  %i.gj = mul i64 %i.gi, 2232315406967589409      ; 4 uses
  %.not.i.i.i21.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i21.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val.i.i.i22.i.i = load ptr, ptr %i.aw, align 8, !noalias !181, !noundef !10 ; 4 uses
  %.val1.i.i.i23.i.i = load i64, ptr %i.ax, align 8, !noalias !181, !noundef !10 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i.i, i64 %.val1.i.i.i23.i.i
  %i.gl = icmp samesign eq i64 %.val1.i.i.i23.i.i, 0
  %i.gm = ptrtoint ptr %.val.i.i.i22.i.i to i64
  %i.gn = trunc i64 %i.gm to i8                   ; 3 uses
  br i1 %i.gl, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bf
  %xtraiter = and i64 %.val1.i.i.i23.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.val.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.gp = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.prol, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.gq = zext i8 %i.gp to i64
  %i.gr = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, %i.gq
  %i.gs = mul i64 %i.gr, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !195

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.unr = phi ptr [ %.val.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.gt = icmp ult i64 %.val1.i.i.i23.i.i, 8
  br i1 %i.gt, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 1
  %i.gv = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.gw = zext i8 %i.gv to i64
  %i.gx = xor i64 %.sroa.0.06.i.i.i.i.i.i.i, %i.gw
  %i.gy = mul i64 %i.gx, 1099511628211
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 2
  %i.ha = load i8, ptr %i.gu, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.hb = zext i8 %i.ha to i64
  %i.hc = xor i64 %i.gy, %i.hb
  %i.hd = mul i64 %i.hc, 1099511628211
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 3
  %i.hf = load i8, ptr %i.gz, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.hg = zext i8 %i.hf to i64
  %i.hh = xor i64 %i.hd, %i.hg
  %i.hi = mul i64 %i.hh, 1099511628211
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 4
  %i.hk = load i8, ptr %i.he, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.hl = zext i8 %i.hk to i64
  %i.hm = xor i64 %i.hi, %i.hl
  %i.hn = mul i64 %i.hm, 1099511628211
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 5
  %i.hp = load i8, ptr %i.hj, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.hq = zext i8 %i.hp to i64
  %i.hr = xor i64 %i.hn, %i.hq
  %i.hs = mul i64 %i.hr, 1099511628211
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 6
  %i.hu = load i8, ptr %i.ho, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.hv = zext i8 %i.hu to i64
  %i.hw = xor i64 %i.hs, %i.hv
  %i.hx = mul i64 %i.hw, 1099511628211
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 7
  %i.hz = load i8, ptr %i.ht, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.ia = zext i8 %i.hz to i64
  %i.ib = xor i64 %i.hx, %i.ia
  %i.ic = mul i64 %i.ib, 1099511628211
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ie = load i8, ptr %i.hy, align 1, !alias.scope !188, !noalias !191, !noundef !10
  %i.if = zext i8 %i.ie to i64
  %i.ig = xor i64 %i.ic, %i.if
  %i.ih = mul i64 %i.ig, 1099511628211            ; 2 uses
  %i.ii = icmp eq ptr %i.id, %i.gk
  br i1 %i.ii, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ij = load i8, ptr %i.aw, align 8, !range !172, !noalias !181, !noundef !10 ; 2 uses
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = xor i64 %i.gj, %i.ik
  %i.im = mul i64 %i.il, 2232315406967589409
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.bg, %bb.bf, %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i
  %i.in = phi i8 [ %i.du, %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.ij, %bb.bg ], [ %i.gn, %bb.bf ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %4 = phi i1 [ %.not.i.i.i.i.i, %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i ], [ true, %bb.bg ], [ false, %bb.bf ], [ false, %.lr.ph.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ge, %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i.i ], [ %i.im, %bb.bg ], [ %i.gj, %bb.bf ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ih, %.lr.ph.i.i.i.i.i.i.i ]
  %i.io = trunc i64 %.sroa.0.0.i.i to i16
  %i.ip = and i16 %i.io, 32767                    ; 6 uses
  %i.iq = load i16, ptr %i.az, align 8, !alias.scope !140, !noalias !143, !noundef !10 ; 3 uses
  %i.ir = and i16 %i.ip, %i.iq
  %i.is = zext nneg i16 %i.ir to i64
  %i.it = load i64, ptr %i.bb, align 8, !alias.scope !140, !noalias !143, !noundef !10 ; 2 uses
  %i.iu = load ptr, ptr %i.ba, align 8, !alias.scope !140, !noalias !143, !nonnull !10
  %i.iv = zext i16 %i.iq to i64
  %i.iw = load i64, ptr %i.bc, align 8, !alias.scope !140, !noalias !143 ; 5 uses
  %i.ix = load ptr, ptr %i.bd, align 8, !alias.scope !140, !noalias !143, !nonnull !10
  %not..i.i.i = xor i1 %4, true
  %i.iy = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.iz = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = trunc i64 %i.ja to i8
  %.not = icmp eq i64 %i.it, 0
  br label %.outer603

.outer603:                                        ; preds = %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i, %.loopexit.i
  %.ph = phi i8 [ %i.lf, %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ %i.in, %.loopexit.i ] ; 5 uses
  %.sroa.08.0.i.ph = phi i64 [ %i.lg, %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ 0, %.loopexit.i ] ; 3 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.lh, %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i ], [ %i.is, %.loopexit.i ] ; 2 uses
  %i.jc = icmp ult i64 %.sroa.0.0.i.ph, %i.it     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.jc, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.jc, i64 %.sroa.0.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit704, label %infloop

.loopexit704:                                     ; preds = %.outer603
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.je = load i16, ptr %i.jd, align 2, !noalias !143, !noundef !10 ; 2 uses
  %.not.i = icmp eq i16 %i.je, -1
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %bb.cc
  unreachable

bb.bi:                                            ; preds = %.loopexit704
  %i.jf = zext i16 %i.je to i64                   ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 2
  %i.jh = load i16, ptr %i.jg, align 2, !noalias !143, !noundef !10 ; 2 uses
  %i.ji = and i16 %i.jh, %i.iq
  %i.jj = zext i16 %i.ji to i64
  %i.jk = sub i64 %.sroa.0.0.i.ph.mux, %i.jj
  %i.jl = and i64 %i.jk, %i.iv
  %i.jm = icmp samesign ult i64 %i.jl, %.sroa.08.0.i.ph
  br i1 %i.jm, label %bb.bx, label %bb.bw

bb.bj:                                            ; preds = %.loopexit704
  %i.jn = icmp ult i64 %i.iw, 88686269585142076
  call void @llvm.assume(i1 %i.jn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !197
  invoke void @_RNvXs7_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core7convert4FromRBE_E4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %i.au)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit.i unwind label %.loopexit142, !noalias !143

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.jo = load i64, ptr %i.bc, align 8, !alias.scope !203, !noalias !204, !noundef !10 ; 5 uses
  %i.jp = icmp ult i64 %i.jo, 88686269585142076
  call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp samesign ugt i64 %i.jo, 32767
  br i1 %i.jq, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !206
  store i16 %i.ip, ptr %i.bi, align 8, !noalias !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !207
  store ptr %.sroa.0.0.copyload55, ptr %i.bk, align 8, !noalias !208
  store ptr %.sroa.657.0.copyload, ptr %.sroa.581.0..sroa_idx82.i, align 8, !noalias !208
  store i64 %.sroa.8.0.copyload, ptr %.sroa.684.0..sroa_idx85.i, align 8, !noalias !208
  store ptr %.sroa.10.0.copyload, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !208
  store i64 %.sroa.12.0.copyload, ptr %.sroa.890.0..sroa_idx91.i, align 8, !noalias !208
  store i64 0, ptr %i.c, align 8, !noalias !206
  %i.jr = load i64, ptr %i.be, align 8, !range !209, !alias.scope !210, !noalias !213, !noundef !10
  %i.js = icmp eq i64 %i.jo, %i.jr
  br i1 %i.js, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs77NLLyX6U31_9axum_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.bt unwind label %bb.bm, !noalias !213

bb.bm:                                            ; preds = %bb.bl
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c) #27
          to label %.thread109 unwind label %bb.bn, !noalias !204

bb.bn:                                            ; preds = %bb.bm
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !213
  unreachable

bb.bo:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload55) ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload55, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !215, !nonnull !10, !noundef !10
  invoke void %i.jw(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.657.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.bq, !noalias !222, !inline_history !139

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.jx = load ptr, ptr %i.g, align 8, !alias.scope !229, !noalias !207, !noundef !10 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %.noexc45, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !242, !noalias !207, !noundef !10
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !243, !nonnull !10, !noundef !10
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !242, !noalias !207, !noundef !10
  %i.kf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !242, !noalias !207, !noundef !10
  invoke void %i.kc(ptr noundef %i.ka, ptr noundef %i.ke, i64 noundef %i.kg)
          to label %.noexc45 unwind label %.thread116.loopexit.split-lp, !inline_history !153

bb.bq:                                            ; preds = %bb.bo
  %i.kh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.ki = load ptr, ptr %i.g, align 8, !alias.scope !250, !noalias !207, !noundef !10 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %.thread109, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.kk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !alias.scope !263, !noalias !207, !noundef !10
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !264, !nonnull !10, !noundef !10
  %i.ko = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !263, !noalias !207, !noundef !10
  %i.kq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !263, !noalias !207, !noundef !10
  invoke void %i.kn(ptr noundef %i.kl, ptr noundef %i.kp, i64 noundef %i.kr)
          to label %.thread109 unwind label %bb.bs, !noalias !222, !inline_history !265

bb.bs:                                            ; preds = %bb.br
  %i.ks = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !222
  unreachable

.noexc45:                                         ; preds = %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !197
  br label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit.thread

bb.bt:                                            ; preds = %bb.bl, %bb.bk
  %i.kt = load ptr, ptr %i.bd, align 8, !alias.scope !210, !noalias !213, !nonnull !10, !noundef !10
  %i.ku = getelementptr inbounds nuw [104 x i8], ptr %i.kt, i64 %i.jo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ku, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false), !noalias !204
  %i.kv = add nuw nsw i64 %i.jo, 1
  store i64 %i.kv, ptr %i.bc, align 8, !alias.scope !210, !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !197
  %i.kw = load i64, ptr %i.bb, align 8, !alias.scope !140, !noalias !143, !noundef !10 ; 2 uses
  %i.kx = icmp ult i64 %.sroa.0.0.i.ph.mux, %i.kw
  br i1 %i.kx, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ky = load ptr, ptr %i.ba, align 8, !alias.scope !140, !noalias !143, !nonnull !10, !noundef !10
  %i.kz = trunc i64 %i.iw to i16
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  store i16 %i.kz, ptr %i.la, align 2, !noalias !143
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  store i16 %i.ip, ptr %i.lb, align 2, !noalias !143
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.backedge

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i.ph.mux, i64 noundef %i.kw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
          to label %.noexc46 unwind label %.thread116.loopexit.split-lp

.noexc46:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bi
  %i.lc = icmp eq i16 %i.jh, %i.ip
  br i1 %i.lc, label %bb.by, label %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.bx:                                            ; preds = %bb.bi
  %i.ld = icmp samesign ugt i64 %.sroa.08.0.i.ph, 511
  %i.le = icmp ne i64 %i.dg, 2
  %.sroa.013.0.i = and i1 %i.le, %i.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !197
  invoke void @_RNvXs7_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core7convert4FromRBE_E4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.au)
          to label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit36.i unwind label %.loopexit142, !noalias !143

_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i: ; preds = %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.i, %.split.i, %bb.cb, %bb.bz, %bb.bw
  %i.lf = phi i8 [ %.ph, %bb.cb ], [ %.ph, %bb.bz ], [ %i.jb, %.split.i ], [ %.ph, %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.i ], [ %.ph, %bb.bw ]
  %i.lg = add nuw nsw i64 %.sroa.08.0.i.ph, 1
  %i.lh = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer603

bb.by:                                            ; preds = %bb.bw
  %i.li = icmp ugt i64 %i.iw, %i.jf
  br i1 %i.li, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.lj = getelementptr inbounds nuw [104 x i8], ptr %i.ix, i64 %i.jf ; 6 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.ll = load ptr, ptr %i.lk, align 8, !noalias !143, !noundef !10
  %i.lm = icmp ne ptr %i.ll, null                 ; 2 uses
  %i.ln = xor i1 %4, %i.lm
  br i1 %i.ln, label %bb.ca, label %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.lm, label %bb.cb, label %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.i

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.assume(i1 %not..i.i.i)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 80
  %i.lp = load i64, ptr %i.lo, align 8, !noalias !143, !noundef !10
  %i.lq = icmp eq i64 %i.lp, %i.iy
  br i1 %i.lq, label %.split.i, label %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

.split.i:                                         ; preds = %bb.cb
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 72
  %i.ls = load ptr, ptr %i.lr, align 8, !noalias !143, !noundef !10
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ls, ptr %i.iz, i64 %i.iy), !noalias !143
  %i.lt = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.lt, label %bb.cd, label %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.cc:                                            ; preds = %bb.by
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jf, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #25
          to label %bb.bh unwind label %.loopexit.split-lp143, !noalias !143

_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.i: ; preds = %bb.ca
  call void @llvm.assume(i1 %4)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 72
  %i.lv = load i8, ptr %i.lu, align 8, !range !172, !noalias !143, !noundef !10
  %i.lw = icmp eq i8 %i.lv, %.ph
  br i1 %i.lw, label %bb.cd, label %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.thread.i

bb.cd:                                            ; preds = %_RNvXsh_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameINtNtCskKLDkoKarTP_4core3cmp9PartialEqRBE_E2eq.exit.i, %.split.i
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.lx = load i64, ptr %i.lj, align 8, !range !39, !noalias !269, !noundef !10
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.cf, label %bb.cg

.loopexit147:                                     ; preds = %bb.cf
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp148:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp148, %.loopexit147
  %lpad.phi151 = phi { ptr, i32 } [ %lpad.loopexit149, %.loopexit147 ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp148 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload55) ]
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload55, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !272, !nonnull !10, !noundef !10
  invoke void %i.ma(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.657.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.thread109 unwind label %bb.ch, !noalias !279, !inline_history !139

bb.cf:                                            ; preds = %bb.cd
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !269, !noundef !10
  invoke void @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.q, i64 noundef %i.mc)
          to label %._crit_edge.i.i unwind label %.loopexit147, !noalias !279

._crit_edge.i.i:                                  ; preds = %bb.cf
  %.pre.i.i = load i64, ptr %i.bc, align 8, !alias.scope !280, !noalias !279
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i.i, %bb.cd
  %i.md = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.iw, %bb.cd ] ; 2 uses
  %i.me = icmp ugt i64 %i.md, %i.jf
  br i1 %i.me, label %_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2RNtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.cg
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.jf, i64 noundef %i.md, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #25
          to label %.cont.i.i unwind label %.loopexit.split-lp148, !noalias !279

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ch:                                            ; preds = %bb.ce
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !279
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit36.i: ; preds = %bb.bx
  %i.mg = load i64, ptr %i.bc, align 8, !alias.scope !281, !noalias !284, !noundef !10 ; 6 uses
  %i.mh = icmp ult i64 %i.mg, 88686269585142076
  call void @llvm.assume(i1 %i.mh)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %i.mi = icmp samesign ugt i64 %i.mg, 32767
  br i1 %i.mi, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !292
  store i16 %i.ip, ptr %i.bf, align 8, !noalias !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !294
  store ptr %.sroa.0.0.copyload55, ptr %i.bh, align 8, !noalias !295
  store ptr %.sroa.657.0.copyload, ptr %.sroa.554.0..sroa_idx55.i, align 8, !noalias !295
  store i64 %.sroa.8.0.copyload, ptr %.sroa.6.0..sroa_idx57.i, align 8, !noalias !295
  store ptr %.sroa.10.0.copyload, ptr %.sroa.7.0..sroa_idx59.i, align 8, !noalias !295
  store i64 %.sroa.12.0.copyload, ptr %.sroa.8.0..sroa_idx61.i, align 8, !noalias !295
  store i64 0, ptr %i.b, align 8, !noalias !292
  %i.mj = load i64, ptr %i.be, align 8, !range !209, !alias.scope !296, !noalias !299, !noundef !10
  %i.mk = icmp eq i64 %i.mg, %i.mj
  br i1 %i.mk, label %bb.cj, label %bb.cr

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs77NLLyX6U31_9axum_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.cr unwind label %bb.ck, !noalias !299

bb.ck:                                            ; preds = %bb.cj
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #27
          to label %.thread109 unwind label %bb.cl, !noalias !301

bb.cl:                                            ; preds = %bb.ck
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !299
  unreachable

bb.cm:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant.exit36.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload55) ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload55, i64 32
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !302, !nonnull !10, !noundef !10
  invoke void %i.mo(ptr noundef %.sroa.10.0.copyload, ptr noundef %.sroa.657.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i46.i unwind label %bb.co, !noalias !309, !inline_history !139

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i46.i: ; preds = %bb.cm
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.mp = load ptr, ptr %i.h, align 8, !alias.scope !316, !noalias !294, !noundef !10 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %.noexc47, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i46.i
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !alias.scope !329, !noalias !294, !noundef !10
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !330, !nonnull !10, !noundef !10
  %i.mv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !329, !noalias !294, !noundef !10
  %i.mx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !329, !noalias !294, !noundef !10
  invoke void %i.mu(ptr noundef %i.ms, ptr noundef %i.mw, i64 noundef %i.my)
          to label %.noexc47 unwind label %.thread116.loopexit.split-lp, !inline_history !153

bb.co:                                            ; preds = %bb.cm
  %i.mz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.na = load ptr, ptr %i.h, align 8, !alias.scope !337, !noalias !294, !noundef !10 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %.thread109, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !350, !noalias !294, !noundef !10
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !351, !nonnull !10, !noundef !10
  %i.ng = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !alias.scope !350, !noalias !294, !noundef !10
  %i.ni = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !350, !noalias !294, !noundef !10
  invoke void %i.nf(ptr noundef %i.nd, ptr noundef %i.nh, i64 noundef %i.nj)
          to label %.thread109 unwind label %bb.cq, !noalias !309, !inline_history !265

bb.cq:                                            ; preds = %bb.cp
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !309
  unreachable

bb.cr:                                            ; preds = %bb.cj, %bb.ci
  %i.nl = load ptr, ptr %i.bd, align 8, !alias.scope !296, !noalias !299, !nonnull !10, !noundef !10
  %i.nm = getelementptr inbounds nuw [104 x i8], ptr %i.nl, i64 %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.nm, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !301
  %i.nn = add nuw nsw i64 %i.mg, 1
  store i64 %i.nn, ptr %i.bc, align 8, !alias.scope !296, !noalias !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !292
  %i.no = load ptr, ptr %i.ba, align 8, !alias.scope !281, !noalias !284, !nonnull !10, !noundef !10
  %i.np = load i64, ptr %i.bb, align 8, !alias.scope !281, !noalias !284, !noundef !10 ; 2 uses
  %i.nq = trunc nuw nsw i64 %i.mg to i16
  %.not709 = icmp eq i64 %i.np, 0
  br label %.outer

.outer:                                           ; preds = %bb.cs, %bb.cr
  %.sroa.6.0.i.i.ph = phi i16 [ %i.nx, %bb.cs ], [ %i.ip, %bb.cr ] ; 2 uses
  %.sroa.09.0.i.i.ph = phi i16 [ %i.nt, %bb.cs ], [ %i.nq, %bb.cr ] ; 2 uses
  %.sroa.07.0.i.i.ph = phi i64 [ %i.nw, %bb.cs ], [ 0, %bb.cr ] ; 2 uses
  %.sroa.0.0.i41.i.ph = phi i64 [ %i.ny, %bb.cs ], [ %.sroa.0.0.i.ph.mux, %bb.cr ] ; 2 uses
  %i.nr = icmp ult i64 %.sroa.0.0.i41.i.ph, %i.np ; 2 uses
  %.not709.not = xor i1 %.not709, true
  %brmerge813 = or i1 %i.nr, %.not709.not
  %.sroa.0.0.i41.i.ph.mux = select i1 %i.nr, i64 %.sroa.0.0.i41.i.ph, i64 0 ; 2 uses
  br i1 %brmerge813, label %.loopexit708, label %infloop812

.loopexit708:                                     ; preds = %.outer
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %.sroa.0.0.i41.i.ph.mux ; 4 uses
  %i.nt = load i16, ptr %i.ns, align 2, !noalias !284, !noundef !10 ; 2 uses
  %i.nu = icmp eq i16 %i.nt, -1
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 2 ; 3 uses
  br i1 %i.nu, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.loopexit708
  %i.nw = add i64 %.sroa.07.0.i.i.ph, 1
  %i.nx = load i16, ptr %i.nv, align 2, !noalias !284, !noundef !10
  store i16 %.sroa.09.0.i.i.ph, ptr %i.ns, align 2, !noalias !284
  store i16 %.sroa.6.0.i.i.ph, ptr %i.nv, align 2, !noalias !284
  %i.ny = add nuw i64 %.sroa.0.0.i41.i.ph.mux, 1
  br label %.outer

bb.ct:                                            ; preds = %.loopexit708
  store i16 %.sroa.09.0.i.i.ph, ptr %i.ns, align 2, !noalias !284
  store i16 %.sroa.6.0.i.i.ph, ptr %i.nv, align 2, !noalias !284
  %i.nz = icmp ugt i64 %.sroa.07.0.i.i.ph, 127
end_hunk_0
begin_hunk_1_@_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRtECsl8OoimOLbh_6qdrant:bb.a
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !2909
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2909
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !2909
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2909
  %.val.i = load i16, ptr %1, align 2, !noalias !2912, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2915
  store i16 %.val.i, ptr %i.a, align 2, !noalias !2915
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2915
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !2920
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2920
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2920 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2920
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !2920, !noundef !10
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2920, !noundef !10
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !2925
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2925
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !2925
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !2925
  %.val.i = load i64, ptr %1, align 8, !noalias !2928, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2931
  store i64 %.val.i, ptr %i.a, align 8, !noalias !2931
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2931
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !2936
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !2936
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !2936 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !2936
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !2936, !noundef !10
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !2936, !noundef !10
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_api20config_recommend_api(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgoPClq0H8JF_9actix_web6configNtB6_13ServiceConfig7serviceNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_api16recommend_pointsEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgoPClq0H8JF_9actix_web6configNtB6_13ServiceConfig7serviceNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_api22recommend_batch_pointsEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs1_NtCsgoPClq0H8JF_9actix_web6configNtB6_13ServiceConfig7serviceNtNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_api22recommend_point_groupsEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB2_10EquivalentRBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !align !31, !noundef !10 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !noundef !10
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val, align 8, !noundef !10
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %not..i.i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !172, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !172, !noundef !10
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !10
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !noundef !10
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %not..i.i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !172, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !172, !noundef !10
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsy_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10 ; 4 uses
  %.val1 = load ptr, ptr %1, align 8, !nonnull !10, !align !31, !noundef !10 ; 4 uses
  %i.a = load ptr, ptr %.val, align 8, !noundef !10
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  %i.c = load ptr, ptr %.val1, align 8, !noundef !10
  %i.d = icmp eq ptr %i.c, null                   ; 3 uses
  %not..i.i.i = xor i1 %i.d, true
  %i.e = xor i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !10
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noundef !10
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.n, ptr %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !172, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i8, ptr %i.r, align 8, !range !172, !noundef !10
  %i.t = icmp eq i8 %i.q, %i.s
  br label %_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit

_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameNtB7_9PartialEq2eqCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.shrunk.i.i.i = phi i1 [ false, %bb.a ], [ %i.t, %bb.e ], [ %i.o, %bb.d ], [ false, %bb.c ]
  ret i1 %.sroa.0.0.shrunk.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtNtCsjZG7hsAZr3B_5tokio2io4util5writeINtB2_5WriteINtNtNtCsPYQCUnoTxQ_10collection6common14timeout_writer13TimeoutWriterNtNtB4_3mem12DuplexStreamEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsl8OoimOLbh_6qdrant(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.f = tail call { i64, ptr } @_RNvXs_NtNtCsPYQCUnoTxQ_10collection6common14timeout_writerINtB4_13TimeoutWriterNtNtNtNtCsjZG7hsAZr3B_5tokio2io4util3mem12DuplexStreamENtNtB1l_11async_write10AsyncWrite10poll_writeCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB2_16recommend_pointsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 47)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXNtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB10_16recommend_pointsNtNtB7_7service18HttpServiceFactory8register16recommend_pointsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB12_14CollectionPathEINtNtB4q_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendRequestEINtNtB4q_5query5QueryNtNtB12_11read_params10ReadParamsEIB3f_NtNtB16_8settings13ServiceConfigENtNtB14_4auth9ActixAuthNtNtB12_13routing_token17ActixRoutingTokenEEB16_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB5_22recommend_point_groupsNtNtCsgoPClq0H8JF_9actix_web7service18HttpServiceFactory8register(ptr noalias nofree noundef align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [168 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [168 x i8], align 8               ; 4 uses
  %i.e = alloca [168 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCsgoPClq0H8JF_9actix_web8resourceNtB3_8Resource3newReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 54)
  call void @_RNvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB4_8Resource4nameCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 2, i64 24, i1 false)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource5guardNtNtB7_5guard11MethodGuardECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8Resource2toNvNvXs0_NtNtNtCsl8OoimOLbh_6qdrant5actix3api13recommend_apiNtB13_22recommend_point_groupsNtNtB7_7service18HttpServiceFactory8register22recommend_point_groupsTINtNtB7_4data4DataNtNtCsgGgPqgSfnMH_7storage10dispatcher10DispatcherEINtNtCs93fV3EiCHxi_19actix_web_validator4path4PathNtB15_14CollectionPathEINtNtB4F_4json4JsonNtNtNtCsPYQCUnoTxQ_10collection10operations5types22RecommendGroupsRequestEINtNtB4F_5query5QueryNtNtB15_11read_params10ReadParamsEIB3u_NtNtB19_8settings13ServiceConfigENtNtB17_4auth9ActixAuthNtNtB15_13routing_token17ActixRoutingTokenEEB19_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(none) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvXs1_NtCsgoPClq0H8JF_9actix_web8resourceNtB5_8ResourceNtNtB7_7service18HttpServiceFactory8registerCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(168) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXs1_NtNtCs3WWrd2JY12C_5hyper5proto2h2INtB5_7SendBufNtNtCs14kzo5Se9zC_5bytes5bytes5BytesENtNtNtBU_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !61, !noundef !10
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i64 @_RNvYNtNtCs14kzo5Se9zC_5bytes5bytes5BytesNtNtNtB6_3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = tail call noundef i64 @_RNvYINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEENtNtNtCs14kzo5Se9zC_5bytes3buf8buf_impl3Buf15chunks_vectoredCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs577yCKf7gy3_4http6header5valueNtB5_11HeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs577yCKf7gy3_4http6header5value18InvalidHeaderValueNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs9_NtNtCs577yCKf7gy3_4http6header5valueNtB5_18InvalidHeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtNtCsliWsDkOzYJy_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueNtB6_5Debug3fmtCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !align !31, !noundef !10
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCsliWsDkOzYJy_4http6header5valueNtB5_11HeaderValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs6EFb6a2W5dE_10actix_http6header9into_pairTReNtNtNtCsliWsDkOzYJy_4http6header5value11HeaderValueENtB5_17TryIntoHeaderPair13try_into_pairCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 5 uses
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.745.0.copyload = load ptr, ptr %.sroa.745.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtCsliWsDkOzYJy_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !39, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 2, ptr %i.h, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2941, !nonnull !10, !noundef !10
  tail call void %i.j(ptr noundef %.sroa.11.0.copyload, ptr noundef %.sroa.745.0.copyload, i64 noundef %.sroa.9.0.copyload), !noalias !2941, !inline_history !2948
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsliWsDkOzYJy_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit41

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.088.0.copyload = load ptr, ptr %i.k, align 8 ; 3 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.489.0.copyload = load ptr, ptr %.sroa.489.0..sroa_idx, align 8 ; 2 uses
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.590.0.copyload = load i64, ptr %.sroa.590.0..sroa_idx, align 8 ; 2 uses
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.191?download=true
inline.NumInlined: 401
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsl8OoimOLbh_6qdrant8greeting7welcome:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i24.i unwind label %bb.ah, !noalias !467

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %.body25.i unwind label %bb.ai, !noalias !467

bb.ai:                                            ; preds = %bb.ah
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !467
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i24.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit28.i unwind label %bb.v, !noalias !467

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit28.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i24.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !467
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNCNvNtCsl8OoimOLbh_6qdrant8greeting7welcome0B5_.exit unwind label %bb.aj, !noalias !468

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit28.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.ak, !noalias !468

bb.ak:                                            ; preds = %bb.aj
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !468
  unreachable

bb.al:                                            ; preds = %bb.ae, %.body.i, %.body25.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !468
  unreachable

_RNCNvNtCsl8OoimOLbh_6qdrant8greeting7welcome0B5_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit28.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.an

bb.am:                                            ; preds = %.split231.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 0, ptr %i.ah, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %.sroa.577.0..sroa_idx, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_RNCNvNtCsl8OoimOLbh_6qdrant8greeting7welcome0B5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvXs4_Cshi8S0dlpned_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 8, i32 %.pre252)
          to label %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit unwind label %bb.ao

.body153:                                         ; preds = %bb.bv, %bb.aw, %bb.ao, %.body175, %.body148
  %.pn133 = phi { ptr, i32 } [ %.pn, %.body148 ], [ %.pn131, %.body175 ], [ %i.db, %bb.aw ], [ %i.cu, %bb.ao ], [ %i.es, %bb.bv ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #25
          to label %common.resume unwind label %bb.m

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i200, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit156, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i152, %bb.an
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body153

_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit: ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  br i1 %i.bz, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !471
  invoke void @_RNvXs4_Cshi8S0dlpned_7coloredReNtB5_8Colorize4bold(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 6)
          to label %.noexc144 unwind label %bb.ar

.noexc144:                                        ; preds = %bb.ap
  invoke void @_RINvXs3_Cshi8S0dlpned_7coloredNtB6_13ColoredStringNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f, i32 4)
          to label %.noexc145 unwind label %bb.ar

.noexc145:                                        ; preds = %.noexc144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !471
  br label %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit

bb.aq:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !471
  invoke void @_RNvXs4_Cshi8S0dlpned_7coloredReNtB5_8Colorize4bold(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 6)
          to label %.noexc146 unwind label %bb.ar

.noexc146:                                        ; preds = %bb.aq
  invoke void @_RINvXs3_Cshi8S0dlpned_7coloredNtB6_13ColoredStringNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.g, i32 -1215606255)
          to label %.noexc147 unwind label %bb.ar

.noexc147:                                        ; preds = %.noexc146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !471
  br label %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit

.body148:                                         ; preds = %bb.au, %bb.ar, %bb.as
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.as ], [ %i.cv, %bb.ar ], [ %i.cz, %bb.au ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.af) #25
          to label %.body153 unwind label %bb.m

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i, %.noexc146, %bb.aq, %.noexc144, %bb.ap
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body148

_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit: ; preds = %.noexc147, %.noexc145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.af, ptr %i.ad, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXs5_Cshi8S0dlpned_7coloredNtB5_13ColoredStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.481.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.ae, ptr %i.cw, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr @_RNvXs5_Cshi8S0dlpned_7coloredNtB5_13ColoredStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.485.0..sroa_idx, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %i.ah, ptr %i.cx, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.489.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @78, ptr noundef nonnull %i.ad)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ae) #25
          to label %.body148 unwind label %bb.m

bb.at:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %.body148 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit unwind label %bb.ar

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i152 unwind label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %.body153 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i152: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit156 unwind label %bb.ao

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit156: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1491
  %i.de = load i8, ptr %i.dd, align 1, !range !16, !noundef !8 ; 2 uses
  %i.df = trunc nuw i8 %i.de to i1
  %spec.select = select i1 %i.df, ptr @79, ptr inttoptr (i64 1 to ptr)
  %spec.select260 = zext nneg i8 %i.de to i64
  store ptr %spec.select, ptr %i.aa, align 8, !captures !27
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %spec.select260, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !472
  invoke void @_RNvXs0_NtNtCskKLDkoKarTP_4core3net6parserNtNtB7_7ip_addr6IpAddrNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([17 x i8]) align 1 captures(address) dereferenceable(17) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.di, i64 noundef %i.dk)
          to label %.noexc157 unwind label %bb.ao

.noexc157:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit156
  %i.dl = load i8, ptr %i.e, align 1, !range !18, !noalias !472, !noundef !8 ; 2 uses
  %i.dm = icmp eq i8 %i.dl, 2
  br i1 %i.dm, label %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit.thread, label %bb.ay

_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit.thread: ; preds = %.noexc157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !472
  br label %bb.ba

bb.ay:                                            ; preds = %.noexc157
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.5.0.copyload.i = load i128, ptr %.sroa.5.0..sroa_idx.i, align 1, !noalias !472 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !472
  %i.dn = trunc nuw i8 %i.dl to i1
  br i1 %i.dn, label %.split, label %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit

.split:                                           ; preds = %bb.ay
  %i.do = icmp eq i128 %.sroa.5.0.copyload.i, 0
  br i1 %i.do, label %bb.az, label %bb.ba

_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit: ; preds = %bb.ay
  %.sroa.5.1.extract.trunc.i = trunc i128 %.sroa.5.0.copyload.i to i32
  switch i32 %.sroa.5.1.extract.trunc.i, label %bb.ba [
    i32 16777343, label %bb.az
    i32 0, label %bb.az
  ]

bb.az:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit, %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit, %.split
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit.thread, %.split, %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit, %bb.az
  %.sink262 = phi ptr [ @80, %bb.az ], [ %i.di, %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit ], [ %i.di, %.split ], [ %i.di, %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit.thread ]
  %.sink = phi i64 [ 9, %bb.az ], [ %i.dk, %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit ], [ %i.dk, %.split ], [ %i.dk, %_RNvNtCsl8OoimOLbh_6qdrant8greeting15is_localhost_ip.exit.thread ]
  store ptr %.sink262, ptr %i.z, align 8, !captures !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sink, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.aa, ptr %i.y, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.493.0..sroa_idx, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.dr, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsl8OoimOLbh_6qdrant, ptr %.sroa.497.0..sroa_idx, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.dq, ptr %i.ds, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr @_RNvXs3_NtNtNtCskKLDkoKarTP_4core3fmt3num3imptNtB9_7Display3fmt, ptr %.sroa.4101.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @81, ptr noundef nonnull %i.y)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit unwind label %bb.ao

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvXs4_Cshi8S0dlpned_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 16, i32 %.pre252)
          to label %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit161 unwind label %bb.bb

.body175:                                         ; preds = %bb.bs, %bb.bj, %bb.bb, %.body189, %.body169
  %.pn131 = phi { ptr, i32 } [ %.pn127, %.body169 ], [ %.pn129, %.body189 ], [ %i.eg, %bb.bj ], [ %i.dt, %bb.bb ], [ %i.eq, %bb.bs ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #25
          to label %.body153 unwind label %bb.m

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i194, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit178, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i174, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit198
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body175

_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit161: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsl8OoimOLbh_6qdrant.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !8 ; 2 uses
  br i1 %i.bz, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !473
  invoke void @_RNvXs4_Cshi8S0dlpned_7coloredReNtB5_8Colorize4bold(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dx)
          to label %.noexc162 unwind label %bb.be

.noexc162:                                        ; preds = %bb.bc
  invoke void @_RINvXs3_Cshi8S0dlpned_7coloredNtB6_13ColoredStringNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, i32 4)
          to label %.noexc163 unwind label %bb.be

.noexc163:                                        ; preds = %.noexc162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !473
  br label %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit166

bb.bd:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !473
  invoke void @_RNvXs4_Cshi8S0dlpned_7coloredReNtB5_8Colorize4bold(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dx)
          to label %.noexc164 unwind label %bb.be

.noexc164:                                        ; preds = %bb.bd
  invoke void @_RINvXs3_Cshi8S0dlpned_7coloredNtB6_13ColoredStringNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, i32 -1215606255)
          to label %.noexc165 unwind label %bb.be

.noexc165:                                        ; preds = %.noexc164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !473
  br label %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit166

.body169:                                         ; preds = %bb.bh, %bb.be, %bb.bf
  %.pn127 = phi { ptr, i32 } [ %i.ed, %bb.bf ], [ %i.dy, %bb.be ], [ %i.ee, %bb.bh ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.x) #25
          to label %.body175 unwind label %bb.m

bb.be:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i168, %.noexc164, %bb.bd, %.noexc162, %bb.bc
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body169

_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit166: ; preds = %.noexc165, %.noexc163
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !noundef !8
  %i.eb = or i8 %i.ea, 2
  store i8 %i.eb, ptr %i.dz, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.x, ptr %i.u, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs5_Cshi8S0dlpned_7coloredNtB5_13ColoredStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4107.0..sroa_idx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.w, ptr %i.ec, align 8
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs5_Cshi8S0dlpned_7coloredNtB5_13ColoredStringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.4111.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio6__print(ptr noundef nonnull @83, ptr noundef nonnull %i.u)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit166
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(40) %i.w) #25
          to label %.body169 unwind label %bb.m

bb.bg:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i168 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %.body169 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i168: ; preds = %bb.bg
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit172 unwind label %bb.be

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit172: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i174 unwind label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit172
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body175 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i174: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit172
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit178 unwind label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit178: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvXs4_Cshi8S0dlpned_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 15, i32 %.pre252)
          to label %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit181 unwind label %bb.bb

_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit181: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCshi8S0dlpned_7colored13ColoredStringECsl8OoimOLbh_6qdrant.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  br i1 %i.bz, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !474
  invoke void @_RNvXs4_Cshi8S0dlpned_7coloredReNtB5_8Colorize4bold(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 27)
          to label %.noexc182 unwind label %bb.bn

.noexc182:                                        ; preds = %bb.bl
  invoke void @_RINvXs3_Cshi8S0dlpned_7coloredNtB6_13ColoredStringNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i32 4)
          to label %.noexc183 unwind label %bb.bn

.noexc183:                                        ; preds = %.noexc182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !474
  br label %_RNvNtCsl8OoimOLbh_6qdrant8greeting10paint_blue.exit186

bb.bm:                                            ; preds = %_RNvNtCsl8OoimOLbh_6qdrant8greeting11paint_green.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !474
  invoke void @_RNvXs4_Cshi8S0dlpned_7coloredReNtB5_8Colorize4bold(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 27)
          to label %.noexc184 unwind label %bb.bn

.noexc184:                                        ; preds = %bb.bm
  invoke void @_RINvXs3_Cshi8S0dlpned_7coloredNtB6_13ColoredStringNtB6_8Colorize5colorNtNtB6_5color5ColorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, i32 -1215606255)
          to label %.noexc185 unwind label %bb.bn

.noexc185:                                        ; preds = %.noexc184
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Jpeg2000ImageLoader?download=true
inline.NumInlined: 7231
inline.NumDeleted: 2820
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 53
begin_hunk_0_@"_ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_":.from.
  %i.fj = zext nneg i32 %switch.tableidx to i64
  %switch.gep1056 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZZNK3tev19Jpeg2000ImageLoader4loadENSt3__14spanIKhLm18446744073709551615EEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcNS1_11char_traitsIcEEEERKNS_19ImageLoaderSettingsEibPmPNS_10EPixelTypeEENK3$_0clES4_.13", i64 %i.fj
  %switch.load1057 = load ptr, ptr %switch.gep1056, align 8
  br label %.from.587

.from.587:                                        ; preds = %.from.556, %switch.lookup
  %.sroa.9.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 7, %.from.556 ]
  %.sroa.0.0.i = phi ptr [ %switch.load1057, %switch.lookup ], [ @.str.139, %.from.556 ]
  store ptr %.sroa.0.0.i, ptr %10, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %.sroa.9.0.i, ptr %i.fk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  %i.fl = icmp eq i64 %.sroa.7.0, 0
  %i.fm = select i1 %i.fl, ptr @.str.122, ptr @.str.121
  store ptr %i.fm, ptr %i.d, align 8, !tbaa !93
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc138 unwind label %.from.749

.noexc138:                                        ; preds = %.from.587
  %i.fo = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJRKN7nanogui5ArrayIiLm2EEES6_RjNSt3__117basic_string_viewIcNS8_11char_traitsIcEEEEPKcEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSJ_(ptr noundef nonnull align 8 dereferenceable(56) %i.fp, i32 noundef 4, ptr nonnull @.str.120, i64 64, ptr noundef nonnull align 4 dereferenceable(8) %.reload.addr850, ptr noundef nonnull align 4 dereferenceable(8) %i.fe, ptr noundef nonnull align 4 dereferenceable(4) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit unwind label %.from.749

_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit: ; preds = %.noexc138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.fq = load ptr, ptr %.reload.addr851, align 8, !tbaa !234 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !644 ; 5 uses
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store i64 0, ptr %i.e, align 8, !tbaa !95
  %.not417 = icmp eq i32 %i.fs, 0
  br i1 %.not417, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.fu = load i32, ptr %.reload.addr861, align 4, !tbaa !238
  %i.fv = add i32 %i.fu, 1
  %or.cond8 = icmp ult i32 %i.fv, 2
  br i1 %or.cond8, label %.sink.split.from., label %bb.ap

._crit_edge.thread:                               ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  %i.fw = load i32, ptr %.reload.addr861, align 4, !tbaa !238
  %i.fx = add i32 %i.fw, 1
  %or.cond8477 = icmp ult i32 %i.fx, 2
  br i1 %or.cond8477, label %.sink.split, label %bb.ap

.from.749:                                        ; preds = %.from.587, %.noexc138
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  %.6 = extractvalue { ptr, i32 } %i.fy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %.from..split347760

.lr.ph:                                           ; preds = %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.fz = phi ptr [ %i.gy, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit ], [ %i.fq, %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit ]
  %storemerge412 = phi i64 [ %i.ha, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit ], [ 0, %_ZN4tlog5debugIJRKN7nanogui5ArrayIiLm2EEES5_RjNSt3__117basic_string_viewIcNS7_11char_traitsIcEEEEPKcEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSH_.exit ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !240
  %i.gc = getelementptr inbounds nuw [64 x i8], ptr %i.gb, i64 %storemerge412 ; 11 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56 ; 2 uses
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc140 unwind label %.from.744

.noexc140:                                        ; preds = %.lr.ph
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 36
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.go = load ptr, ptr %i.ge, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJRmRKjS4_S4_S4_S4_S4_S4_S4_S4_S4_RKtEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(56) %i.go, i32 noundef 4, ptr nonnull @.str.123, i64 101, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.gn, ptr noundef nonnull align 4 dereferenceable(4) %i.gm, ptr noundef nonnull align 4 dereferenceable(4) %i.gc, ptr noundef nonnull align 4 dereferenceable(4) %i.gl, ptr noundef nonnull align 4 dereferenceable(4) %i.gk, ptr noundef nonnull align 4 dereferenceable(4) %i.gj, ptr noundef nonnull align 4 dereferenceable(4) %i.gi, ptr noundef nonnull align 4 dereferenceable(4) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.gg, ptr noundef nonnull align 4 dereferenceable(4) %i.gf, ptr noundef nonnull align 2 dereferenceable(2) %i.gd)
          to label %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit unwind label %.from.744

_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit: ; preds = %.noexc140
  %i.gp = load i16, ptr %i.gd, align 8, !tbaa !645
  %.not107 = icmp eq i16 %i.gp, 0
  %.pre423 = load i64, ptr %i.e, align 8, !tbaa !95 ; 3 uses
  %.pre425 = load ptr, ptr %.reload.addr851, align 8, !tbaa !234 ; 3 uses
  br i1 %.not107, label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %.pre425, i64 16
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !644
  %i.gs = add i32 %i.gr, -1
  %i.gt = zext i32 %i.gs to i64
  %.not108 = icmp eq i64 %.pre423, %i.gt
  br i1 %.not108, label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc142 unwind label %.from.744

.noexc142:                                        ; preds = %bb.ao
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !116
  invoke void @_ZN4tlog6Logger3logIJRmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.gv, i32 noundef 8, ptr nonnull @.str.124, i64 89, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge unwind label %.from.744

_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge: ; preds = %.noexc142
  %.pre422 = load i64, ptr %i.e, align 8, !tbaa !95
  %.pre424 = load ptr, ptr %.reload.addr851, align 8, !tbaa !234
  br label %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit

.from.744:                                        ; preds = %.lr.ph, %.noexc140, %bb.ao, %.noexc142
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %.from..split347760

_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %bb.an, %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge
  %i.gy = phi ptr [ %.pre424, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge ], [ %.pre425, %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit ], [ %.pre425, %bb.an ] ; 2 uses
  %i.gz = phi i64 [ %.pre422, %_ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit.from..noexc142._ZN4tlog7warningIJRmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit_crit_edge ], [ %.pre423, %_ZN4tlog5debugIJRmRKjS3_S3_S3_S3_S3_S3_S3_S3_S3_RKtEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS9_.exit ], [ %.pre423, %bb.an ]
  %i.ha = add i64 %i.gz, 1                        ; 3 uses
  store i64 %i.ha, ptr %i.e, align 8, !tbaa !95
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !644
  %i.hd = zext i32 %i.hc to i64
  %i.he = icmp ult i64 %i.ha, %i.hd
  br i1 %i.he, label %.lr.ph, label %._crit_edge, !llvm.loop !613

.sink.split.from.:                                ; preds = %._crit_edge
  %.inv = icmp ugt i32 %i.fs, 2
  %spec.select = select i1 %.inv, i32 1, i32 2
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge.thread, %.sink.split.from.
  %.sink = phi i32 [ %spec.select, %.sink.split.from. ], [ 2, %._crit_edge.thread ]
  store i32 %.sink, ptr %.reload.addr861, align 4, !tbaa !238
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %._crit_edge.thread, %._crit_edge
  %i.hf = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.reload.addr831, i8 0, i64 48, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hf, align 8, !tbaa !74
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.hg, align 8, !tbaa !74
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store float 1.000000e+00, ptr %i.hh, align 8, !tbaa !74
  %i.hi = getelementptr inbounds nuw i8, ptr %i.i, i64 124 ; 3 uses
  store i8 0, ptr %i.hi, align 4, !tbaa !243
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i32 0, ptr %i.hj, align 8, !tbaa !218
  %i.hk = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, i8 0, i64 40, i1 false)
  invoke void @_ZN3tev10zeroChromaEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::__1::array") align 4 %i.hl)
          to label %bb.aq unwind label %.from..body144

.from..body144:                                   ; preds = %bb.ap
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hk) #37
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hn) #37
  call void @_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(280) %.reload.addr831) #37
  %i.ho = extractvalue { ptr, i32 } %i.hm, 0
  br label %.from..split347760

bb.aq:                                            ; preds = %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  store float 8.000000e+01, ptr %i.hp, align 8, !tbaa !646
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 212 ; 2 uses
  store i8 0, ptr %i.hq, align 4, !tbaa !75
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 244 ; 3 uses
  store i8 0, ptr %i.hr, align 4, !tbaa !244
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 248 ; 2 uses
  store i8 0, ptr %i.hs, align 8, !tbaa !75
  %i.ht = getelementptr inbounds nuw i8, ptr %i.i, i64 249
  store i8 0, ptr %i.ht, align 1, !tbaa !647
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 252
  store i8 0, ptr %i.hu, align 4, !tbaa !75
  %i.hv = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  store i8 0, ptr %i.hv, align 8, !tbaa !648
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 260
  store i32 1, ptr %i.hw, align 4, !tbaa !649
  %i.hx = getelementptr inbounds nuw i8, ptr %i.i, i64 264
  %i.hy = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr850, i64 16, i1 false), !tbaa.struct !650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 4 dereferenceable(16) %.reload.addr850, i64 16, i1 false)
  %i.ia = icmp eq i32 %i.fs, 2
  %i.ib = icmp ugt i32 %i.fs, 3
  %i.ic = or i1 %i.ia, %i.ib                      ; 3 uses
  %i.id = zext i1 %i.ic to i8
  store i8 %i.id, ptr %.reload.addr862, align 1, !tbaa !78
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ft, i64 4) ; 4 uses
  store i64 %.sroa.speculated, ptr %.reload.addr859, align 8, !tbaa !95
  %.neg = sext i1 %i.ic to i64
  %i.ie = add nsw i64 %.sroa.speculated, %.neg
  store i64 %i.ie, ptr %.reload.addr858, align 8, !tbaa !95
  %15 = call i64 @llvm.usub.sat.i64(i64 %i.ft, i64 %.sroa.speculated)
  store i64 %15, ptr %.reload.addr857, align 8, !tbaa !95
  %.sroa.020.0.copyload = load i64, ptr %.reload.addr860, align 4, !tbaa !75
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 297
  store ptr %i.if, ptr %11, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !245, !nonnull !136, !align !230
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !76
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.354") align 8 %.reload.addr832, i64 noundef %.sroa.speculated, i1 noundef zeroext %i.ic, i64 %.sroa.020.0.copyload, i32 noundef 7, i32 noundef 6, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %11, i32 noundef %i.ij)
          to label %bb.ar unwind label %.from.605

bb.ar:                                            ; preds = %bb.aq
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 14 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !90
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load atomic i32, ptr %i.im acquire, align 4
  %i.io = icmp slt i32 %i.in, 2
  br i1 %i.io, label %bb.as, label %AfterCoroSave

bb.as:                                            ; preds = %bb.ar
  %i.ip = load ptr, ptr %i.ik, align 8, !tbaa !90
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = atomicrmw add ptr %i.iq, i32 -1 acq_rel, align 4
  %i.is = icmp slt i32 %i.ir, 1
  br i1 %i.is, label %bb.at, label %.thread.sink.split

bb.at:                                            ; preds = %bb.as
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.at
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !116 ; 7 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !127
  %i.iw = and i32 %i.iv, 8
  %.not.i.i.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.i.i, label %bb.au, label %.thread.sink.split

bb.au:                                            ; preds = %.noexc.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !128 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !129 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.iy, %i.ja
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iu, i64 48
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iu, i64 33
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.iy, %.from..lr.ph.i.i.i.i.i ], [ %i.jq, %.noexc2.i.i ] ; 2 uses
  %i.jf = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !132 ; 2 uses
  %i.jg = load i8, ptr %i.jb, align 8             ; 2 uses
  %i.jh = trunc i8 %i.jg to i1                    ; 2 uses
  %i.ji = load ptr, ptr %i.jc, align 8
  %i.jj = select i1 %i.jh, ptr %i.ji, ptr %i.jd
  %i.jk = load i64, ptr %i.je, align 8
  %i.jl = lshr i8 %i.jg, 1
  %i.jm = zext nneg i8 %i.jl to i64
  %i.jn = select i1 %i.jh, i64 %i.jk, i64 %i.jm
  %i.jo = load ptr, ptr %i.jf, align 8, !tbaa !80
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr %i.jj, i64 %i.jn, i32 noundef 8, ptr nonnull @.str.140, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !2

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jq, %i.ja
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.av

.from..loopexit.split-lp.i.i:                     ; preds = %bb.at
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.av

bb.av:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.jr = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.jr) #42
  unreachable

AfterCoroSave:                                    ; preds = %bb.ar
  %index.addr864 = getelementptr inbounds nuw i8, ptr %i.i, i64 9400
  store i3 0, ptr %index.addr864, align 8
  %i.js = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr832, ptr nonnull %i.i) #37
  br i1 %i.js, label %AfterCoroEnd, label %bb.aw

.from.605:                                        ; preds = %bb.aq
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.739

bb.aw:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr832, align 8, !tbaa !247, !noalias !651 ; 3 uses
  %.not.i148 = icmp eq ptr %.pr, null
  br i1 %.not.i148, label %.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ju = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body150.from.602, !inline_history !7

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.ax, %bb.au, %.noexc.i.i, %bb.as
  store ptr null, ptr %.reload.addr832, align 8, !tbaa !247
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.aw
  %i.jw = getelementptr inbounds nuw i8, ptr %i.i, i64 408 ; 11 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !250, !noalias !652 ; 7 uses
  store ptr null, ptr %i.jw, align 8, !tbaa !250, !noalias !652
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.90") align 8 %.reload.addr834, ptr noundef nonnull align 8 dereferenceable(144) %i.jx)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %.thread
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = atomicrmw add ptr %i.jy, i64 -1 acq_rel, align 8
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %bb.az, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.az:                                            ; preds = %bb.ay
  %i.kb = load ptr, ptr %i.jx, align 8, !tbaa !80
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #37, !inline_history !8
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.ba:                                            ; preds = %.thread
  %i.ke = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kg = atomicrmw add ptr %i.kf, i64 -1 acq_rel, align 8
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %.body150.from.599, label %.from..body150

.body150.from.599:                                ; preds = %bb.ba
  %i.ki = load ptr, ptr %i.jx, align 8, !tbaa !80
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #37, !inline_history !8
  br label %.from..body150

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.az, %bb.ay
  %i.kl = load ptr, ptr %.reload.addr831, align 8, !tbaa !251 ; 5 uses
  %.not.i.i269 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i269, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.km = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !252 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.kl, %i.kn
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i270

.lr.ph.i.i.i.i.i270:                              ; preds = %bb.bb, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.ko, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.kn, %bb.bb ] ; 3 uses
  %i.ko = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.kp = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !255 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i.i.i270
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = atomicrmw add ptr %i.kr, i64 -1 acq_rel, align 8
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %bb.bd, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.ku = load ptr, ptr %i.kq, align 8, !tbaa !80
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(24) %i.kq) #37, !inline_history !9
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq) #37
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i.i.i.i270
  %i.kx = load i8, ptr %i.ko, align 8
  %i.ky = trunc i8 %i.kx to i1
  br i1 %i.ky, label %bb.be, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.be:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.kz = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !75
  %i.lb = load i64, ptr %i.ko, align 8
  %i.lc = and i64 %i.lb, -2
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.lc) #41
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.be, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i271 = icmp eq ptr %i.kl, %i.ko
  br i1 %.not.i.i.i.i.i271, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i270
end_hunk_0

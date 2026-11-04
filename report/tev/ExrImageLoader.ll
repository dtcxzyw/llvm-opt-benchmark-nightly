Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ExrImageLoader?download=true
inline.NumInlined: 7920
inline.NumDeleted: 3043
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
bb.i:                                             ; preds = %bb.h
  %i.bd = load i8, ptr %11, align 8
  %i.be = trunc i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.bi = select i1 %i.be, ptr %i.bg, ptr %i.bh
  invoke void @_ZN7Imf_3_47IStreamC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr1215, ptr noundef %i.bi)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN3tev10StdIStreamE, i64 16), ptr %.reload.addr1215, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %2, ptr %i.bj, align 8, !tbaa !756
  %i.bk = load i8, ptr %11, align 8
  %i.bl = trunc i8 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !77
  %i.bn = load i64, ptr %11, align 8
  %i.bo = and i64 %i.bn, -2
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bo) #34
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.bp = invoke noundef i32 @_ZN7Imf_3_417globalThreadCountEv()
          to label %bb.l unwind label %.from.1163

bb.l:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275
  invoke void @_ZN7Imf_3_418MultiPartInputFileC1ERNS_7IStreamEib(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1218, ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1215, i32 noundef %i.bp, i1 noundef zeroext true)
          to label %bb.m unwind label %.from.1163

bb.m:                                             ; preds = %bb.l
  %i.bq = invoke noundef i32 @_ZNK7Imf_3_418MultiPartInputFile5partsEv(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1218)
          to label %bb.n unwind label %.from.1157 ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.o, label %.from.902

bb.o:                                             ; preds = %bb.n
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull @.str.65)
          to label %bb.p unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit278.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.bs, align 8, !tbaa !106
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.gr unwind label %.thread1261

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from.895: ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277

bb.r:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null                          ; 2 uses
  %i.bv = load i8, ptr %11, align 8
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from., label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from.: ; preds = %bb.r
  %i.bx = load ptr, ptr %i.bf, align 8, !tbaa !77
  %i.by = load i64, ptr %11, align 8
  %i.bz = and i64 %i.by, -2
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.bz) #34
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from.895, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from., %bb.r
  %.pn204 = phi { ptr, i32 } [ %i.bt, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from.895 ], [ %i.bu, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit277.from. ], [ %i.bu, %bb.r ] ; 2 uses
  %.1133 = extractvalue { ptr, i32 } %.pn204, 0
  %.1135 = extractvalue { ptr, i32 } %.pn204, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %.from..split1168

.from.1163:                                       ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit275, %bb.l
  %i.ca = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null                          ; 2 uses
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  %i.cc = extractvalue { ptr, i32 } %i.ca, 1
  br label %.from.1167

.from.1157:                                       ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null                          ; 2 uses
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = extractvalue { ptr, i32 } %i.cd, 1
  br label %.from.1161

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit278.thread: ; preds = %bb.o
  %i.cg = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null
  br label %.from.1155.sink.split

bb.s:                                             ; preds = %bb.p
  %i.ch = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null                          ; 2 uses
  %i.ci = load i8, ptr %12, align 8
  %i.cj = trunc i8 %i.ci to i1
  br i1 %i.cj, label %.split521, label %.from.1155.sink.split

.thread1261:                                      ; preds = %bb.q
  %i.ck = landingpad { ptr, i32 }
          catch ptr @_ZTIN7Iex_3_47BaseExcE
          catch ptr null                          ; 3 uses
  %i.cl = load i8, ptr %12, align 8
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %.split521, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit2781151

.split521:                                        ; preds = %.thread1261, %bb.s
  %i.cn = phi { ptr, i32 } [ %i.ck, %.thread1261 ], [ %i.ch, %bb.s ] ; 2 uses
  %.01861263 = phi i1 [ false, %.thread1261 ], [ true, %bb.s ]
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !77
  %i.cq = load i64, ptr %12, align 8
  %i.cr = and i64 %i.cq, -2
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cr) #34
  %.2522 = extractvalue { ptr, i32 } %i.cn, 0     ; 2 uses
  %.2136523 = extractvalue { ptr, i32 } %i.cn, 1  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br i1 %.01861263, label %.from.1155, label %.from.1161

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit2781151: ; preds = %.thread1261
  %.21267 = extractvalue { ptr, i32 } %i.ck, 0
  %.21361268 = extractvalue { ptr, i32 } %i.ck, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.from.1161

.from.1155.sink.split:                            ; preds = %bb.s, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit278.thread
  %.sink1608 = phi { ptr, i32 } [ %i.cg, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit278.thread ], [ %i.ch, %bb.s ] ; 2 uses
  %.2517 = extractvalue { ptr, i32 } %.sink1608, 0
  %.2136518 = extractvalue { ptr, i32 } %.sink1608, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %.from.1155

.from.1155:                                       ; preds = %.from.1155.sink.split, %.split521
  %.2136520 = phi i32 [ %.2136523, %.split521 ], [ %.2136518, %.from.1155.sink.split ]
  %.2519 = phi ptr [ %.2522, %.split521 ], [ %.2517, %.from.1155.sink.split ]
  call void @__cxa_free_exception(ptr %i.bs) #32
  br label %.from.1161

.from.902:                                        ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 81 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 10 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 328 ; 12 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 288 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.reload.addr1223, i8 0, i64 72, i1 false)
  br label %bb.u

bb.t:                                             ; preds = %_ZN4tlog7warningIJRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit
  %i.db = load ptr, ptr %.reload.addr1225, align 8, !tbaa !170 ; 2 uses
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !171 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %.noexc, label %.preheader

bb.u:                                             ; preds = %_ZN4tlog7warningIJRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit, %.from.902
  %.0188651 = phi i32 [ 0, %.from.902 ], [ %i.jw, %_ZN4tlog7warningIJRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit ] ; 2 uses
  invoke void @_ZN7Imf_3_49InputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1221, ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr1218, i32 noundef %.0188651)
          to label %bb.v unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.de = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1221)
          to label %bb.w unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.df = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(25) %i.de)
          to label %bb.x unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.dg = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1221)
          to label %bb.y unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.dh = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK7Imf_3_46Header10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(25) %i.dg)
          to label %bb.z unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load <2 x i32>, ptr %i.dh, align 4, !tbaa !104
  %i.dk = load <2 x i32>, ptr %i.di, align 4, !tbaa !104
  %i.dl = sub nsw <2 x i32> %i.dk, %i.dj
  %.fr1688 = freeze <2 x i32> %i.dl
  %i.dm = add <2 x i32> %.fr1688, splat (i32 1)   ; 2 uses
  store <2 x i32> %i.dm, ptr %.reload.addr1217, align 8, !tbaa !104
  %i.dn = icmp eq <2 x i32> %i.dm, zeroinitializer
  %25 = bitcast <2 x i1> %i.dn to i2
  %or.cond.not = icmp eq i2 %25, 0
  br i1 %or.cond.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1221)
          to label %bb.ab unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.dp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7Imf_3_46Header4nameEv(ptr noundef nonnull align 8 dereferenceable(25) %i.do)
          to label %bb.ac unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc279 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc279:                                        ; preds = %bb.ac
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !173
  invoke void @_ZN4tlog6Logger3logIJRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSF_(ptr noundef nonnull align 8 dereferenceable(56) %i.dr, i32 noundef 8, ptr nonnull @.str.66, i64 30, ptr noundef nonnull align 8 dereferenceable(24) %i.dp)
          to label %_ZN4tlog7warningIJRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.z
  %i.ds = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %.preheader594 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader594:                                    ; preds = %bb.ad, %.preheader594.from._ZN7Imf_3_411ChannelList13ConstIteratorppEv.exit
  %.sroa.0490.0 = phi ptr [ %.06.i.i.i.i, %.preheader594.from._ZN7Imf_3_411ChannelList13ConstIteratorppEv.exit ], [ %i.ds, %bb.ad ] ; 7 uses
  %.0189 = phi i1 [ %.1190, %.preheader594.from._ZN7Imf_3_411ChannelList13ConstIteratorppEv.exit ], [ false, %bb.ad ] ; 2 uses
  %i.dt = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(24) %i.df)
          to label %bb.ae unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.preheader594
  %.not571 = icmp eq ptr %.sroa.0490.0, %i.dt
  br i1 %.not571, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %.0189, label %bb.bb, label %_ZN4tlog7warningIJRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSD_.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.du = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1221)
          to label %.noexc281 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc281:                                        ; preds = %bb.ag
  %i.dv = invoke noundef zeroext i1 @_ZNK7Imf_3_46Header7hasNameEv(ptr noundef nonnull align 8 dereferenceable(25) %i.du)
          to label %.noexc282 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc282:                                        ; preds = %.noexc281
  br i1 %i.dv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc282
  %i.dw = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNK7Imf_3_49InputPart6headerEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr1221)
          to label %.noexc283 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc283:                                        ; preds = %bb.ah
  %i.dx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7Imf_3_46Header4nameEv(ptr noundef nonnull align 8 dereferenceable(25) %i.dw)
          to label %.noexc284 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc284:                                        ; preds = %.noexc283
  %i.dy = load i8, ptr %i.dx, align 8, !noalias !757 ; 2 uses
  %i.dz = trunc i8 %i.dy to i1                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !757
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.ed = select i1 %i.dz, ptr %i.eb, ptr %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !757
  %i.eg = lshr i8 %i.dy, 1
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = select i1 %i.dz, i64 %i.ef, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0490.0, i64 28 ; 2 uses
  %i.ek = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ej) #32, !noalias !757
  invoke void @_ZN3tev7Channel4joinENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %.reload.addr1216, ptr %i.ed, i64 %i.ei, ptr nonnull %i.ej, i64 %i.ek)
          to label %"_ZZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEN7Imf_3_411ChannelList13ConstIteratorE.exit" unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %.noexc282
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0490.0, i64 28 ; 2 uses
  %i.em = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.el) #32, !noalias !757 ; 8 uses
  %i.en = icmp ugt i64 %i.em, -9
  br i1 %i.en, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr1216) #35
          to label %.noexc286 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc286:                                        ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.eo = icmp ult i64 %i.em, 23
  br i1 %i.eo, label %bb.al, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ak
  %i.ep = or i64 %i.em, 7                         ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 23
  %i.er = add nuw i64 %i.ep, 1
  %i.es = select i1 %i.eq, i64 25, i64 %i.er      ; 2 uses
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #33
          to label %.from..noexc287 unwind label %.loopexit.split-lp596.loopexit.split-lp.from..loopexit.split-lp596.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.from..noexc287:                                  ; preds = %.thread.i.i.i
  store ptr %i.et, ptr %i.cs, align 8, !tbaa !77, !alias.scope !757
  %i.eu = or i64 %i.es, 1
  store i64 %i.eu, ptr %.reload.addr1216, align 8, !alias.scope !757
  store i64 %i.em, ptr %i.ct, align 8, !tbaa !77, !alias.scope !757
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i.from.

bb.al:                                            ; preds = %bb.ak
  %i.ev = trunc nuw nsw i64 %i.em to i8
  %i.ew = shl nuw nsw i8 %i.ev, 1
  store i8 %i.ew, ptr %.reload.addr1216, align 8, !alias.scope !757
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i.from.

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i.from.: ; preds = %.from..noexc287, %bb.al
  %.017.i.i.i = phi ptr [ %i.et, %.from..noexc287 ], [ %i.cu, %bb.al ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i, ptr nonnull align 1 %i.el, i64 %i.em, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i: ; preds = %bb.al, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i.from.
  %.018.i.i.i = phi ptr [ %.017.i.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i.from. ], [ %i.cu, %bb.al ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 %i.em
  store i8 0, ptr %i.ex, align 1, !tbaa !77
  br label %"_ZZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEN7Imf_3_411ChannelList13ConstIteratorE.exit"

"_ZZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEN7Imf_3_411ChannelList13ConstIteratorE.exit": ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit.i, %.noexc284
  %i.ey = load i8, ptr %.reload.addr1216, align 8 ; 2 uses
  %i.ez = trunc i8 %i.ey to i1                    ; 2 uses
  %i.fa = load ptr, ptr %i.cs, align 8
  %i.fb = select i1 %i.ez, ptr %i.fa, ptr %i.cu
  %i.fc = load i64, ptr %i.ct, align 8
  %i.fd = lshr i8 %i.ey, 1
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = select i1 %i.ez, i64 %i.fc, i64 %i.fe
  %i.fg = invoke noundef zeroext i1 @_ZN3tev12matchesFuzzyENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEES4_Pm(ptr %i.fb, i64 %i.ff, ptr %4, i64 %5, ptr noundef null)
          to label %bb.am unwind label %.from.927

bb.am:                                            ; preds = %"_ZZNK3tev14ExrImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiENK3$_3clEN7Imf_3_411ChannelList13ConstIteratorE.exit"
  br i1 %i.fg, label %bb.an, label %.from.924

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.fh = load ptr, ptr %i.cv, align 8, !tbaa !178
  %i.fi = load ptr, ptr %.reload.addr1223, align 8, !tbaa !179
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 3                 ; 2 uses
  store i64 %i.fm, ptr %i.a, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0490.0, i64 28 ; 3 uses
  store ptr %i.fn, ptr %i.b, align 8, !tbaa !85
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0490.0, i64 284 ; 3 uses
  %i.fp = load ptr, ptr %i.cw, align 8, !tbaa !171 ; 16 uses
  %i.fq = load ptr, ptr %i.cx, align 8, !tbaa !180
  %i.fr = icmp ult ptr %i.fp, %i.fq
  br i1 %i.fr, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  %i.fs = load i8, ptr %.reload.addr1216, align 8 ; 2 uses
  %i.ft = trunc i8 %i.fs to i1                    ; 2 uses
  %i.fu = load ptr, ptr %i.cs, align 8
  %i.fv = select i1 %i.ft, ptr %i.fu, ptr %i.cu
  %i.fw = load i64, ptr %i.ct, align 8
  %i.fx = lshr i8 %i.fs, 1
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = select i1 %i.ft, i64 %i.fw, i64 %i.fy   ; 8 uses
  %i.ga = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #32 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr1219, ptr noundef nonnull align 4 dereferenceable(16) %i.fo, i64 16, i1 false), !tbaa.struct !183
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.reload.addr1217, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %.reload.addr12301241)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr12301241, ptr noundef nonnull align 4 dereferenceable(16) %i.fo, i64 16, i1 false)
  store i64 %i.fm, ptr %i.fp, align 8, !tbaa !193
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 5 uses
  %i.gc = icmp ugt i64 %i.fz, -9
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.gb) #35
          to label %.noexc1248 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1248:                                       ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.gd = icmp ult i64 %i.fz, 23
  br i1 %i.gd, label %bb.ar, label %.thread.i.i.i1242

.thread.i.i.i1242:                                ; preds = %bb.aq
  %i.ge = or i64 %i.fz, 7                         ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 23
  %i.gg = add nuw i64 %i.ge, 1
  %i.gh = select i1 %i.gf, i64 25, i64 %i.gg      ; 2 uses
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #33
          to label %.noexc1249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1249:                                       ; preds = %.thread.i.i.i1242
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !77
  %i.gk = or i64 %i.gh, 1
  store i64 %i.gk, ptr %i.gb, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 %i.fz, ptr %i.gl, align 8, !tbaa !77
end_hunk_0

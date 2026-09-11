Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/StbiImageLoader?download=true
inline.NumInlined: 6547
inline.NumDeleted: 2302
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi:.from.
  %i.do = trunc i8 %i.dn to i1
  br i1 %i.do, label %.split246, label %.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101

.thread718:                                       ; preds = %bb.w
  %i.dp = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.dq = load i8, ptr %11, align 8
  %i.dr = trunc i8 %i.dq to i1
  br i1 %i.dr, label %.split246, label %.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101

.split246:                                        ; preds = %.thread718, %bb.x
  %i.ds = phi { ptr, i32 } [ %i.dp, %.thread718 ], [ %i.dm, %bb.x ] ; 2 uses
  %.058720 = phi i1 [ false, %.thread718 ], [ true, %bb.x ]
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !84
  %i.dv = load i64, ptr %11, align 8
  %i.dw = and i64 %i.dv, -2
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dw) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br i1 %.058720, label %.thread273.from..thread273.sink.split, label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273

.thread273.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101: ; preds = %.thread718
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273

.thread273.sink.split.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit101: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #53
  br label %.thread273.from..thread273.sink.split

bb.y:                                             ; preds = %bb.t
  %i.dx = load i32, ptr %.reload.addr700.a, align 8, !tbaa !72
  %.spill.addr623 = getelementptr inbounds nuw i8, ptr %i.b, i64 1612 ; 5 uses
  store i32 %i.dx, ptr %.spill.addr623, align 4
  %i.dy = sext i32 %i.cq to i64
  invoke void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr682.a, i64 noundef %i.dy)
          to label %.preheader unwind label %.thread273.from..thread286

.preheader:                                       ; preds = %bb.y
  %i.dz = icmp sgt i32 %i.cq, 0
  br i1 %i.dz, label %.from..lr.ph.preheader, label %._crit_edge

.from..lr.ph.preheader:                           ; preds = %.preheader
  %indvars.iv.spill.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 1576 ; 9 uses
  %.spill.addr656 = getelementptr inbounds nuw i8, ptr %i.b, i64 1584 ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 1520
  %.sroa.2.0..sroa_idx.i17.i606 = getelementptr inbounds nuw i8, ptr %i.b, i64 1512
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 1496
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 1488
  %.sroa.2.0..sroa_idx.i16.i605 = getelementptr inbounds nuw i8, ptr %i.b, i64 1480
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 1536
  %index.addr702 = getelementptr inbounds nuw i8, ptr %i.b, i64 1616 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 608 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 1552
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 1056
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 1048 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 1208 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 1192 ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  br label %.from..lr.ph

.from.474:                                        ; preds = %bb.cd, %bb.ce
  %indvars.iv.reload655 = phi i64 [ %indvars.iv.reload, %bb.cd ], [ %indvars.iv.reload655.pre, %bb.ce ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload655, 1 ; 2 uses
  %i.ex = load i32, ptr %.reload.addr698, align 8, !tbaa !72 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = icmp slt i64 %indvars.iv.next, %i.ey
  br i1 %i.ez, label %.from..lr.ph, label %._crit_edge, !llvm.loop !612

.thread273.from..thread286:                       ; preds = %bb.y
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178.from..thread273

.from..lr.ph:                                     ; preds = %.from.474, %.from..lr.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.from.474 ], [ 0, %.from..lr.ph.preheader ] ; 3 uses
  %i.fb = phi i32 [ %i.ex, %.from.474 ], [ %i.cq, %.from..lr.ph.preheader ]
  store i64 %indvars.iv, ptr %indvars.iv.spill.addr, align 8
  %i.fc = load ptr, ptr %.reload.addr682.a, align 8, !tbaa !153 ; 2 uses
  store ptr %i.fc, ptr %.spill.addr656, align 8
  %i.fd = getelementptr inbounds nuw [280 x i8], ptr %i.fc, i64 %indvars.iv ; 6 uses
  %i.fe = icmp sgt i32 %i.fb, 1
  br i1 %i.fe, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %.from..lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #53
  %i.ff = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ff, ptr %.reload.addr695.a, align 16, !tbaa !84, !noalias !627
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  store i64 0, ptr %i.ef, align 16, !noalias !628
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.eg, align 16, !tbaa !156, !noalias !628
  store ptr %i.ee, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !628
  store i64 500, ptr %i.eh, align 8, !tbaa !158, !noalias !628
  store ptr @.str.7, ptr %.reload.addr687, align 16, !tbaa !71, !noalias !628
  store i64 9, ptr %.sroa.2.0..sroa_idx.i16.i605, align 8, !tbaa !159, !noalias !628
  store i32 0, ptr %i.ed, align 16, !tbaa !162, !noalias !628
  store ptr %.reload.addr679, ptr %i.ec, align 8, !tbaa !164, !noalias !628
  store i64 1, ptr %i.eb, align 16, !tbaa !166, !noalias !628
  store ptr %.reload.addr695.a, ptr %.sroa.2.0..sroa_idx.i17.i606, align 8, !tbaa !84, !noalias !628
  store ptr null, ptr %i.ea, align 16, !tbaa !73, !noalias !628
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.7, i64 9, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr687)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.fg = load i64, ptr %i.ef, align 16, !tbaa !167, !noalias !630 ; 8 uses
  %i.fh = icmp ult i64 %i.fg, -9
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !630
  %i.fj = icmp ult i64 %i.fg, 23
  br i1 %i.fj, label %bb.ab, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.aa
  %i.fk = or i64 %i.fg, 7                         ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 23
  %i.fm = add nuw i64 %i.fk, 1
  %i.fn = select i1 %i.fl, i64 25, i64 %i.fm      ; 2 uses
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #57
          to label %.from..noexc.i unwind label %bb.ad, !noalias !628 ; 2 uses

.from..noexc.i:                                   ; preds = %.thread.i.i.i.i
  store ptr %i.fo, ptr %i.ej, align 8, !tbaa !84, !alias.scope !630
  %i.fp = or i64 %i.fn, 1
  store i64 %i.fp, ptr %12, align 8, !alias.scope !630
  store i64 %i.fg, ptr %i.ei, align 8, !tbaa !84, !alias.scope !630
  br label %.from.481

bb.ab:                                            ; preds = %bb.aa
  %i.fq = trunc nuw nsw i64 %i.fg to i8
  %i.fr = shl nuw nsw i8 %i.fq, 1
  store i8 %i.fr, ptr %12, align 8, !alias.scope !630
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.from.483, label %.from.481

.from.481:                                        ; preds = %bb.ab, %.from..noexc.i
  %.017.i.i.i.i = phi ptr [ %i.fo, %.from..noexc.i ], [ %i.ek, %bb.ab ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.fi, i64 %i.fg, i1 false)
  br label %.from.483

.from.483:                                        ; preds = %bb.ab, %.from.481
  %.018.i.i.i.i = phi ptr [ %.017.i.i.i.i, %.from.481 ], [ %i.ek, %bb.ab ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.fg
  store i8 0, ptr %i.fs, align 1, !tbaa !84
  %i.ft = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !628 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ft, %i.ee
  br i1 %.not.i.i.i102, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.from.483
  call void @free(ptr noundef %i.ft) #53, !noalias !628
  br label %bb.af

bb.ad:                                            ; preds = %bb.z, %.thread.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !628 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.fv, %i.ee
  br i1 %.not.i.i7.i, label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.fv) #53, !noalias !628
  br label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #53
  br label %.thread273.from.

bb.af:                                            ; preds = %.from.483, %bb.ac
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fd, i64 256 ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 8
  %i.fy = trunc i8 %i.fx to i1
  br i1 %i.fy, label %bb.ag, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

bb.ag:                                            ; preds = %bb.af
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !84
  %i.gb = load i64, ptr %i.fw, align 8
  %i.gc = and i64 %i.gb, -2
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gc) #59
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %bb.ag, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #53
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %.from..lr.ph
  %.reload631 = load i32, ptr %.spill.addr623, align 4, !tbaa !170
  %.reload614 = load i32, ptr %.spill.addr612, align 8, !tbaa !170
  %.reload610 = load i32, ptr %.spill.addr, align 4, !tbaa !170
  %13 = icmp eq i32 %.reload631, 4
  %.not604 = icmp eq i32 %.reload614, 0
  %14 = select i1 %.not604, i32 6, i32 7
  %i.gd = load i32, ptr %.reload.addr700.a, align 8, !tbaa !72
  %i.ge = sext i32 %i.gd to i64
  %.sroa.013.0.copyload = load i64, ptr %.reload.addr697.a, align 8, !tbaa !84
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fd, i64 256
  %i.gg = load i8, ptr %i.gf, align 8             ; 2 uses
  %i.gh = trunc i8 %i.gg to i1                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fd, i64 257
  %i.gl = select i1 %i.gh, ptr %i.gj, ptr %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fd, i64 264
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = lshr i8 %i.gg, 1
  %i.gp = zext nneg i8 %i.go to i64
  %i.gq = select i1 %i.gh, i64 %i.gn, i64 %i.gp
  store ptr %i.gl, ptr %.reload.addr694.a, align 8
  store i64 %i.gq, ptr %i.el, align 8
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.61") align 8 %.reload.addr679, i64 noundef %i.ge, i1 noundef zeroext %13, i64 %.sroa.013.0.copyload, i32 noundef 7, i32 noundef %14, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %.reload.addr694.a, i32 noundef %.reload610)
          to label %bb.ai unwind label %.from.504

bb.ai:                                            ; preds = %bb.ah
  %i.gr = load ptr, ptr %i.eh, align 8, !tbaa !134
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load atomic i32, ptr %i.gs acquire, align 4
  %i.gu = icmp slt i32 %i.gt, 2
  br i1 %i.gu, label %bb.aj, label %AfterCoroSave

bb.aj:                                            ; preds = %bb.ai
  %i.gv = load ptr, ptr %i.eh, align 8, !tbaa !134
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = atomicrmw add ptr %i.gw, i32 -1 acq_rel, align 4
  %i.gy = icmp slt i32 %i.gx, 1
  br i1 %i.gy, label %bb.ak, label %.thread.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.ak
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !172 ; 7 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !179
  %i.hc = and i32 %i.hb, 8
  %.not.i.i.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i.i, label %bb.al, label %.thread.sink.split

bb.al:                                            ; preds = %.noexc.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !180 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.he, %i.hg
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.al
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 33
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.he, %.from..lr.ph.i.i.i.i.i ], [ %i.hw, %.noexc2.i.i ] ; 2 uses
  %i.hl = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.hm = load i8, ptr %i.hh, align 8             ; 2 uses
  %i.hn = trunc i8 %i.hm to i1                    ; 2 uses
  %i.ho = load ptr, ptr %i.hi, align 8
  %i.hp = select i1 %i.hn, ptr %i.ho, ptr %i.hj
  %i.hq = load i64, ptr %i.hk, align 8
  %i.hr = lshr i8 %i.hm, 1
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = select i1 %i.hn, i64 %i.hq, i64 %i.hs
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !125
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr %i.hp, i64 %i.ht, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hw, %i.hg
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

.from..loopexit.split-lp.i.i:                     ; preds = %bb.ak
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.am

bb.am:                                            ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.hx = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.hx) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.ai
  store i8 0, ptr %index.addr702, align 8
  %i.hy = call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr679, ptr nonnull %i.b) #53
  br i1 %i.hy, label %AfterCoroEnd, label %bb.an

.from.504:                                        ; preds = %bb.ah
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  br label %.thread273.from.

bb.an:                                            ; preds = %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr679, align 8, !tbaa !186, !noalias !631 ; 3 uses
  %.not.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i108, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ia = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  invoke void %i.ib(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body110.from.501, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.ao, %bb.al, %.noexc.i.i, %bb.aj
  store ptr null, ptr %.reload.addr679, align 8, !tbaa !186
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.an
  %i.ic = load ptr, ptr %i.ef, align 8, !tbaa !189, !noalias !632 ; 7 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !189, !noalias !632
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.14") align 8 %.reload.addr681.a, ptr noundef nonnull align 8 dereferenceable(144) %i.ic)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %.thread
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = atomicrmw add ptr %i.id, i64 -1 acq_rel, align 8
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.aq, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !125
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #53, !inline_history !6
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.ar:                                            ; preds = %.thread
  %i.ij = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.il = atomicrmw add ptr %i.ik, i64 -1 acq_rel, align 8
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %.body110.from.498, label %.from..body110

.body110.from.498:                                ; preds = %bb.ar
  %i.in = load ptr, ptr %i.ic, align 8, !tbaa !125
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #53, !inline_history !6
  br label %.from..body110

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.aq, %bb.ap
  %.reload668 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170 ; 3 uses
  %indvars.iv.reload641 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170 ; 3 uses
  %i.iq = getelementptr inbounds nuw [280 x i8], ptr %.reload668, i64 %indvars.iv.reload641 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !194 ; 5 uses
  %.not.i.i196 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i196, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !195 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.ir, %i.it
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i197

.lr.ph.i.i.i.i.i197:                              ; preds = %bb.as, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.iu, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.it, %bb.as ] ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.iv = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !198 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i197
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = atomicrmw add ptr %i.ix, i64 -1 acq_rel, align 8
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.au, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.ja = load ptr, ptr %i.iw, align 8, !tbaa !125
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(24) %i.iw) #53, !inline_history !7
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.iw) #53
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %.lr.ph.i.i.i.i.i197
  %i.jd = load i8, ptr %i.iu, align 8
  %i.je = trunc i8 %i.jd to i1
  br i1 %i.je, label %bb.av, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.av:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.jf = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !84
  %i.jh = load i64, ptr %i.iu, align 8
  %i.ji = and i64 %i.jh, -2
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.ji) #59
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.av, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i198 = icmp eq ptr %i.ir, %i.iu
  br i1 %.not.i.i.i.i.i198, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i197

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload672 = load ptr, ptr %.spill.addr656, align 8, !tbaa !170 ; 2 uses
  %indvars.iv.reload645 = load i64, ptr %indvars.iv.spill.addr, align 8, !tbaa !170 ; 2 uses
  %i.jj = getelementptr inbounds nuw [280 x i8], ptr %.reload672, i64 %indvars.iv.reload645
  %.pre.i.i = load ptr, ptr %i.jj, align 8, !tbaa !194
  br label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i: ; preds = %bb.as, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i
  %indvars.iv.reload647 = phi i64 [ %indvars.iv.reload645, %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i ], [ %indvars.iv.reload641, %bb.as ]
end_hunk_0
begin_hunk_1_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %.sink.i.i = phi ptr [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.d, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ai = phi ptr [ %i.e, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.aj = phi ptr [ %i.g, %bb.b ], [ %i.ah, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.c, %bb.c ] ; 4 uses
  %.0.i = phi i8 [ %i.h, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ] ; 3 uses
  %i.ak = zext i8 %.0.i to i32                    ; 2 uses
  %i.al = icmp ult ptr %i.aj, %i.ai
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !82
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit226

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !79
  %.not.i221 = icmp eq i32 %i.ap, 0
  br i1 %.not.i221, label %_ZL10stbi__get8P13stbi__context.exit226, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !78
  %i.ax = tail call noundef i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.au, i32 noundef %i.aw), !inline_history !12 ; 2 uses
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !81
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !80
  %i.bh = add nsw i32 %i.bg, %i.be
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !80
  %i.bi = icmp eq i32 %i.ax, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !79
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.au, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i223

bb.k:                                             ; preds = %bb.i
  %i.bk = sext i32 %i.ax to i64
  %i.bl = getelementptr inbounds i8, ptr %i.au, i64 %i.bk
  %.pre.i222 = load i8, ptr %i.au, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i223

_ZL19stbi__refill_bufferP13stbi__context.exit.i223: ; preds = %bb.k, %bb.j
  %i.bm = phi i8 [ 0, %bb.j ], [ %.pre.i222, %bb.k ]
  %.sink.i.i224 = phi ptr [ %i.bj, %bb.j ], [ %i.bl, %bb.k ] ; 2 uses
  store ptr %.sink.i.i224, ptr %i.d, align 8, !tbaa !85
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit226

_ZL10stbi__get8P13stbi__context.exit226:          ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223
  %i.bo = phi ptr [ %i.ai, %bb.g ], [ %.sink.i.i224, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223 ], [ %i.ai, %bb.h ]
  %i.bp = phi ptr [ %i.am, %bb.g ], [ %i.bn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223 ], [ %i.aj, %bb.h ] ; 3 uses
  %.0.i225 = phi i8 [ %i.an, %bb.g ], [ %i.bm, %_ZL19stbi__refill_bufferP13stbi__context.exit.i223 ], [ 0, %bb.h ]
  %i.bq = icmp ult ptr %i.bp, %i.bo
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit226
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.br, ptr %i.b, align 8, !tbaa !82
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit232

bb.m:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit226
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !79
  %.not.i227 = icmp eq i32 %i.bu, 0
  br i1 %.not.i227, label %_ZL10stbi__get8P13stbi__context.exit232, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !83
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !77
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !78
  %i.cc = tail call noundef i32 %i.bw(ptr noundef %i.by, ptr noundef nonnull %i.bz, i32 noundef %i.cb), !inline_history !12 ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !81
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !80
  %i.cm = add nsw i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !80
  %i.cn = icmp eq i32 %i.cc, 0
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bt, align 8, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.bz, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i229

bb.p:                                             ; preds = %bb.n
  %i.cp = sext i32 %i.cc to i64
  %i.cq = getelementptr inbounds i8, ptr %i.bz, i64 %i.cp
  %.pre.i228 = load i8, ptr %i.bz, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i229

_ZL19stbi__refill_bufferP13stbi__context.exit.i229: ; preds = %bb.p, %bb.o
  %i.cr = phi i8 [ 0, %bb.o ], [ %.pre.i228, %bb.p ]
  %.sink.i.i230 = phi ptr [ %i.co, %bb.o ], [ %i.cq, %bb.p ]
  store ptr %.sink.i.i230, ptr %i.d, align 8, !tbaa !85
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit232

_ZL10stbi__get8P13stbi__context.exit232:          ; preds = %bb.l, %bb.m, %_ZL19stbi__refill_bufferP13stbi__context.exit.i229
  %.0.i231 = phi i8 [ %i.bs, %bb.l ], [ %i.cr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i229 ], [ 0, %bb.m ] ; 2 uses
  %i.ct = zext i8 %.0.i231 to i32                 ; 2 uses
  %i.cu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 4 uses
  %i.cv = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 4 uses
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.cy = icmp ult ptr %i.cw, %i.cx
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit232
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cz, ptr %i.b, align 8, !tbaa !82
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit238

bb.r:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit232
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !79
  %.not.i233 = icmp eq i32 %i.dc, 0
  br i1 %.not.i233, label %_ZL10stbi__get8P13stbi__context.exit238, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !83
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !77
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !78
  %i.dk = tail call noundef i32 %i.de(ptr noundef %i.dg, ptr noundef nonnull %i.dh, i32 noundef %i.dj), !inline_history !12 ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !81
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !80
  %i.du = add nsw i32 %i.dt, %i.dr
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !80
  %i.dv = icmp eq i32 %i.dk, 0
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.db, align 8, !tbaa !79
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.dh, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i235

bb.u:                                             ; preds = %bb.s
  %i.dx = sext i32 %i.dk to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dh, i64 %i.dx
  %.pre.i234 = load i8, ptr %i.dh, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i235

_ZL19stbi__refill_bufferP13stbi__context.exit.i235: ; preds = %bb.u, %bb.t
  %i.dz = phi i8 [ 0, %bb.t ], [ %.pre.i234, %bb.u ]
  %.sink.i.i236 = phi ptr [ %i.dw, %bb.t ], [ %i.dy, %bb.u ]
  store ptr %.sink.i.i236, ptr %i.d, align 8, !tbaa !85
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ea, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit238

_ZL10stbi__get8P13stbi__context.exit238:          ; preds = %bb.q, %bb.r, %_ZL19stbi__refill_bufferP13stbi__context.exit.i235
  %.0.i237 = phi i8 [ %i.da, %bb.q ], [ %i.dz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i235 ], [ 0, %bb.r ] ; 2 uses
  %i.eb = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ec = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ed = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 10 uses
  %i.ee = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 19 uses
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !82  ; 4 uses
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.eh = icmp ult ptr %i.ef, %i.eg
  br i1 %i.eh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit238
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store ptr %i.ei, ptr %i.b, align 8, !tbaa !82
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit244

bb.w:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit238
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !79
  %.not.i239 = icmp eq i32 %i.el, 0
  br i1 %.not.i239, label %_ZL10stbi__get8P13stbi__context.exit244, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !83
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !77
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.es = load i32, ptr %i.er, align 4, !tbaa !78
  %i.et = tail call noundef i32 %i.en(ptr noundef %i.ep, ptr noundef nonnull %i.eq, i32 noundef %i.es), !inline_history !12 ; 2 uses
  %i.eu = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !81
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !80
  %i.fd = add nsw i32 %i.fc, %i.fa
  store i32 %i.fd, ptr %i.fb, align 8, !tbaa !80
  %i.fe = icmp eq i32 %i.et, 0
  br i1 %i.fe, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ek, align 8, !tbaa !79
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.eq, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i241

bb.z:                                             ; preds = %bb.x
  %i.fg = sext i32 %i.et to i64
  %i.fh = getelementptr inbounds i8, ptr %i.eq, i64 %i.fg
  %.pre.i240 = load i8, ptr %i.eq, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i241

_ZL19stbi__refill_bufferP13stbi__context.exit.i241: ; preds = %bb.z, %bb.y
  %i.fi = phi i8 [ 0, %bb.y ], [ %.pre.i240, %bb.z ]
  %.sink.i.i242 = phi ptr [ %i.ff, %bb.y ], [ %i.fh, %bb.z ] ; 2 uses
  store ptr %.sink.i.i242, ptr %i.d, align 8, !tbaa !85
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.fj, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit244

_ZL10stbi__get8P13stbi__context.exit244:          ; preds = %bb.v, %bb.w, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241
  %i.fk = phi ptr [ %i.eg, %bb.v ], [ %.sink.i.i242, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241 ], [ %i.eg, %bb.w ] ; 3 uses
  %i.fl = phi ptr [ %i.ei, %bb.v ], [ %i.fj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241 ], [ %i.ef, %bb.w ] ; 4 uses
  %.0.i243 = phi i8 [ %i.ej, %bb.v ], [ %i.fi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i241 ], [ 0, %bb.w ] ; 3 uses
  %i.fm = icmp ult ptr %i.fl, %i.fk
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit244
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 1 ; 2 uses
  store ptr %i.fn, ptr %i.b, align 8, !tbaa !82
  %i.fo = load i8, ptr %i.fl, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit250

bb.ab:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit244
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !79
  %.not.i245 = icmp eq i32 %i.fq, 0
  br i1 %.not.i245, label %_ZL10stbi__get8P13stbi__context.exit250, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !77
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !78
  %i.fy = tail call noundef i32 %i.fs(ptr noundef %i.fu, ptr noundef nonnull %i.fv, i32 noundef %i.fx), !inline_history !12 ; 2 uses
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !81
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !80
  %i.gi = add nsw i32 %i.gh, %i.gf
  store i32 %i.gi, ptr %i.gg, align 8, !tbaa !80
  %i.gj = icmp eq i32 %i.fy, 0
  br i1 %i.gj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.fp, align 8, !tbaa !79
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.fv, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i247

bb.ae:                                            ; preds = %bb.ac
  %i.gl = sext i32 %i.fy to i64
  %i.gm = getelementptr inbounds i8, ptr %i.fv, i64 %i.gl
  %.pre.i246 = load i8, ptr %i.fv, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i247

_ZL19stbi__refill_bufferP13stbi__context.exit.i247: ; preds = %bb.ae, %bb.ad
  %i.gn = phi i8 [ 0, %bb.ad ], [ %.pre.i246, %bb.ae ]
  %.sink.i.i248 = phi ptr [ %i.gk, %bb.ad ], [ %i.gm, %bb.ae ] ; 2 uses
  store ptr %.sink.i.i248, ptr %i.d, align 8, !tbaa !85
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.go, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit250

_ZL10stbi__get8P13stbi__context.exit250:          ; preds = %bb.aa, %bb.ab, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247
  %.pre.i259 = phi ptr [ %i.fn, %bb.aa ], [ %i.go, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247 ], [ %i.fl, %bb.ab ] ; 2 uses
  %i.gp = phi ptr [ %i.fk, %bb.aa ], [ %.sink.i.i248, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247 ], [ %i.fk, %bb.ab ] ; 2 uses
  %.0.i249 = phi i8 [ %i.fo, %bb.aa ], [ %i.gn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i247 ], [ 0, %bb.ab ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  store i32 0, ptr %i.a, align 4
  %i.gq = icmp ugt i8 %.0.i231, 7                 ; 3 uses
  %.0.i249.fr = freeze i8 %.0.i249
  %i.gr = lshr i8 %.0.i249.fr, 5
  %i.gs = and i8 %i.gr, 1                         ; 2 uses
  %i.gt = icmp ne i8 %.0.i225, 0                  ; 4 uses
  br i1 %i.gt, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit250
  switch i8 %.0.i237, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.al
    i8 16, label %bb.ag
    i8 15, label %bb.ag
    i8 24, label %bb.ah
    i8 32, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.aj, %bb.ai, %bb.af, %bb.af
  br label %bb.al

bb.ah:                                            ; preds = %bb.af, %bb.af
  %i.gu = lshr i8 %.0.i237, 3
  br label %bb.al

bb.ai:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit250
  switch i8 %.0.i243, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.al
    i8 16, label %bb.aj
    i8 15, label %bb.ag
    i8 24, label %bb.ak
    i8 32, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.gv = add nsw i32 %i.ct, -8
  %.0178 = select i1 %i.gq, i32 %i.gv, i32 %i.ct
  %i.gw = icmp eq i32 %.0178, 3
  br i1 %i.gw, label %bb.al, label %bb.ag

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %i.gx = lshr i8 %.0.i243, 3
  br label %bb.al

_ZL18stbi__tga_get_compiiPi.exit:                 ; preds = %bb.ai, %bb.af
  %i.gy = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.63, ptr %i.gy, align 8, !tbaa !71
  br label %bb.cp

bb.al:                                            ; preds = %bb.ag, %bb.ah, %bb.af, %bb.ak, %bb.ai, %bb.aj
  %i.gz = phi i1 [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ true, %bb.ag ], [ false, %bb.af ] ; 2 uses
  %.not209 = phi i1 [ true, %bb.ak ], [ true, %bb.ah ], [ true, %bb.aj ], [ true, %bb.ai ], [ false, %bb.ag ], [ true, %bb.af ] ; 2 uses
  %.0193.ph.shrunk = phi i8 [ %i.gx, %bb.ak ], [ %i.gu, %bb.ah ], [ 2, %bb.aj ], [ 1, %bb.ai ], [ 3, %bb.ag ], [ 1, %bb.af ] ; 6 uses
  %.0193.ph = zext nneg i8 %.0193.ph.shrunk to i32 ; 11 uses
  store i32 %i.ed, ptr %1, align 4, !tbaa !72
  store i32 %i.ee, ptr %2, align 4, !tbaa !72
  %.not204 = icmp eq ptr %3, null
  br i1 %.not204, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 %.0193.ph, ptr %3, align 4, !tbaa !72
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ha = icmp eq i32 %i.ee, 0                    ; 2 uses
  br i1 %i.ha, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.an
  %i.hb = udiv i32 2147483647, %i.ee
  %.not23.i = icmp samesign ugt i32 %i.ed, %i.hb
  br i1 %.not23.i, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %bb.an
  %i.hc = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hd = udiv i32 2147483647, %.0193.ph
  %.not.i256 = icmp samesign ugt i32 %i.hc, %i.hd
  br i1 %.not.i256, label %bb.ao, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i
  %i.he = mul nuw nsw i32 %i.ee, %i.ed            ; 2 uses
  %i.hf = udiv i32 2147483647, %.0193.ph
  %.not.i256160 = icmp samesign ugt i32 %i.he, %i.hf
  br i1 %.not.i256160, label %bb.ao, label %_ZL21stbi__mul2sizes_validii.exit.i.i

bb.ao:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL21stbi__mul2sizes_validii.exit.i
  %i.hg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.14, ptr %i.hg, align 8, !tbaa !71
  br label %bb.cp

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread
  %i.hh = udiv i32 2147483647, %i.ee
  %.not23.i.i = icmp samesign ugt i32 %i.ed, %i.hh
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.hi = phi i32 [ %i.he, %_ZL21stbi__mul2sizes_validii.exit.i.i ], [ %i.hc, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ] ; 7 uses
  %i.hj = mul nuw nsw i32 %i.hi, %.0193.ph
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.hk) #54 ; 26 uses
  %.not206 = icmp eq ptr %i.hl, null
  br i1 %.not206, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.ap

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  %i.hm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.hm, align 8, !tbaa !71
  br label %bb.cp

bb.ap:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.hn = icmp eq i8 %.0.i, 0
  br i1 %i.hn, label %_ZL10stbi__skipP13stbi__contexti.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !83
  %.not.i258 = icmp eq ptr %i.hp, null
  br i1 %.not.i258, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hq = ptrtoint ptr %i.gp to i64
  %i.hr = ptrtoint ptr %.pre.i259 to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = trunc i64 %i.hs to i32                  ; 2 uses
  %i.hu = icmp sgt i32 %i.ak, %i.ht
  br i1 %i.hu, label %bb.as, label %.thread.i

bb.as:                                            ; preds = %bb.ar
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !82
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !123
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !77
  %i.hz = sub nsw i32 %i.ak, %i.ht
  tail call void %i.hw(ptr noundef %i.hy, i32 noundef %i.hz), !inline_history !326
  br label %_ZL10stbi__skipP13stbi__contexti.exit

.thread.i:                                        ; preds = %bb.aq, %bb.ar
  %i.ia = zext i8 %.0.i to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre.i259, i64 %i.ia
  store ptr %i.ib, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__skipP13stbi__contexti.exit

_ZL10stbi__skipP13stbi__contexti.exit:            ; preds = %bb.ap, %bb.as, %.thread.i
  %or.cond = or i1 %i.gt, %i.gq
  %or.cond3 = or i1 %or.cond, %i.gz
  br i1 %or.cond3, label %bb.ba, label %.preheader32

.preheader32:                                     ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.ha, label %.loopexit33, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader32
  %.not207.not = icmp eq i8 %i.gs, 0              ; 2 uses
  %i.ic = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.if = zext nneg i32 %i.ic to i64              ; 14 uses
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !83
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !85 ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !82 ; 4 uses
  %wide.trip.count69 = zext nneg i32 %i.ee to i64 ; 4 uses
  br i1 %.not207.not, label %..thread_crit_edge.i262.us.us.preheader, label %..thread_crit_edge.i262.us.preheader

..thread_crit_edge.i262.us.preheader:             ; preds = %.lr.ph.split.us
  %xtraiter = and i64 %wide.trip.count69, 1
  %i.ii = icmp eq i32 %i.ee, 1
  br i1 %i.ii, label %..thread_crit_edge.i262.us.epil.preheader, label %..thread_crit_edge.i262.us.preheader.new

..thread_crit_edge.i262.us.preheader.new:         ; preds = %..thread_crit_edge.i262.us.preheader
  %unroll_iter = and i64 %wide.trip.count69, 65534
  br label %..thread_crit_edge.i262.us

..thread_crit_edge.i262.us.us.preheader:          ; preds = %.lr.ph.split.us
  %xtraiter195 = and i64 %wide.trip.count69, 1
  %i.ij = icmp eq i32 %i.ee, 1
  br i1 %i.ij, label %..thread_crit_edge.i262.us.us.epil.preheader, label %..thread_crit_edge.i262.us.us.preheader.new

..thread_crit_edge.i262.us.us.preheader.new:      ; preds = %..thread_crit_edge.i262.us.us.preheader
  %unroll_iter200 = and i64 %wide.trip.count69, 65534
  br label %..thread_crit_edge.i262.us.us

..thread_crit_edge.i262.us.us:                    ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, %..thread_crit_edge.i262.us.us.preheader.new
  %indvars.iv66 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %indvars.iv.next67.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %i.ik = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader.new ], [ %i.ja, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %niter201 = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader.new ], [ %niter201.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.if ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.il, %.pre35.i.us
  br i1 %.not32.i.us.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us, label %bb.at

bb.at:                                            ; preds = %..thread_crit_edge.i262.us.us
  %i.im = trunc i64 %indvars.iv66 to i32
  %i.in = xor i32 %i.im, -1
  %i.io = add i32 %i.ee, %i.in
  %i.ip = mul i32 %i.ic, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds i8, ptr %i.hl, i64 %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ir, ptr align 1 %i.ik, i64 %i.if, i1 false)
  store ptr %i.il, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us:    ; preds = %..thread_crit_edge.i262.us.us, %bb.at
  %i.is = phi ptr [ %i.il, %bb.at ], [ %i.ik, %..thread_crit_edge.i262.us.us ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.if ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.it, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, label %bb.au

bb.au:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.iu = trunc i64 %indvars.iv66 to i32
  %i.iv = xor i32 %i.iu, -2
  %i.iw = add i32 %i.ee, %i.iv
  %i.ix = mul i32 %i.ic, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr %i.hl, i64 %i.iy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr align 1 %i.is, i64 %i.if, i1 false)
  store ptr %i.it, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.au, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.ja = phi ptr [ %i.it, %bb.au ], [ %i.is, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter201.next.1 = add i64 %niter201, 2         ; 2 uses
  %niter201.ncmp.1 = icmp eq i64 %niter201.next.1, %unroll_iter200
  br i1 %niter201.ncmp.1, label %.loopexit33.loopexit.unr-lcssa, label %..thread_crit_edge.i262.us.us, !llvm.loop !830

..thread_crit_edge.i262.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, %..thread_crit_edge.i262.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %indvars.iv.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.jb = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader.new ], [ %i.jo, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader.new ], [ %niter.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.if ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.jc, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.av

bb.av:                                            ; preds = %..thread_crit_edge.i262.us
  %i.jd = trunc nuw nsw i64 %indvars.iv to i32
  %i.je = mul i32 %i.ic, %i.jd
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.hl, i64 %i.jf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jg, ptr align 1 %i.jb, i64 %i.if, i1 false)
  store ptr %i.jc, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.av, %..thread_crit_edge.i262.us
  %i.jh = phi ptr [ %i.jc, %bb.av ], [ %i.jb, %..thread_crit_edge.i262.us ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.if ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.ji, %.pre35.i.us
  br i1 %.not32.i.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, label %bb.aw

bb.aw:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jj = trunc i64 %indvars.iv to i32
  %i.jk = or disjoint i32 %i.jj, 1
  %i.jl = mul i32 %i.ic, %i.jk
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr %i.hl, i64 %i.jm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jn, ptr align 1 %i.jh, i64 %i.if, i1 false)
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.aw, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.jo = phi ptr [ %i.ji, %bb.aw ], [ %i.jh, %_ZL10stbi__getnP13stbi__contextPhi.exit.us ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit33.loopexit192.unr-lcssa, label %..thread_crit_edge.i262.us, !llvm.loop !830

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.018734 = phi i32 [ %i.km, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.jp = xor i32 %.018734, -1
  %i.jq = add nsw i32 %i.ee, %i.jp
  %i.jr = select i1 %.not207.not, i32 %i.jq, i32 %.018734
  %i.js = mul i32 %i.ic, %i.jr
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %i.hl, i64 %i.jt ; 3 uses
  %i.jv = load ptr, ptr %i.id, align 8, !tbaa !83 ; 2 uses
  %.not.i260 = icmp eq ptr %i.jv, null
  br i1 %.not.i260, label %..thread_crit_edge.i262, label %bb.ax

..thread_crit_edge.i262:                          ; preds = %.lr.ph.split
  %.pre.i264 = load ptr, ptr %i.b, align 8, !tbaa !82
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %.thread.i261

bb.ax:                                            ; preds = %.lr.ph.split
  %i.jw = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 2 uses
  %i.kb = trunc i64 %i.ka to i32                  ; 2 uses
  %i.kc = icmp sgt i32 %i.ic, %i.kb
  br i1 %i.kc, label %bb.ay, label %.thread.i261

bb.ay:                                            ; preds = %bb.ax
  %sext.i = shl i64 %i.ka, 32
  %i.kd = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.jx, i64 %i.kd, i1 false)
  %i.ke = load ptr, ptr %i.ie, align 8, !tbaa !77
  %i.kf = getelementptr inbounds i8, ptr %i.ju, i64 %i.kd
  %i.kg = sub nsw i32 %i.ic, %i.kb
  %i.kh = tail call noundef i32 %i.jv(ptr noundef %i.ke, ptr noundef nonnull %i.kf, i32 noundef %i.kg), !inline_history !325 ; 0 uses
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

.thread.i261:                                     ; preds = %bb.ax, %..thread_crit_edge.i262
  %i.kj = phi ptr [ %.pre35.i, %..thread_crit_edge.i262 ], [ %i.jw, %bb.ax ]
  %i.kk = phi ptr [ %.pre.i264, %..thread_crit_edge.i262 ], [ %i.jx, %bb.ax ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.if ; 2 uses
  %.not32.i = icmp ugt ptr %i.kl, %i.kj
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.az

bb.az:                                            ; preds = %.thread.i261
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.kk, i64 %i.if, i1 false)
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split: ; preds = %bb.az, %bb.ay
  %.sink = phi ptr [ %i.ki, %bb.ay ], [ %i.kl, %bb.az ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split, %.thread.i261
  %i.km = add nuw nsw i32 %.018734, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.km, %i.ee
  br i1 %exitcond.not, label %.loopexit33, label %.lr.ph.split, !llvm.loop !831

bb.ba:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.gt, label %bb.bb, label %.loopexit31

bb.bb:                                            ; preds = %bb.ba
  %i.kn = icmp eq i32 %i.cv, 0
  br i1 %i.kn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.hl) #53
  %i.ko = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.107, ptr %i.ko, align 8, !tbaa !71
  br label %bb.cp

bb.bd:                                            ; preds = %bb.bb
  %i.kp = icmp eq i32 %i.cu, 0
  br i1 %i.kp, label %_ZL10stbi__skipP13stbi__contexti.exit270, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !83
  %.not.i265 = icmp eq ptr %i.kr, null
  br i1 %.not.i265, label %..thread_crit_edge.i267, label %bb.bf

..thread_crit_edge.i267:                          ; preds = %bb.be
  %.pre.i269 = load ptr, ptr %i.b, align 8, !tbaa !82
  br label %.thread.i266

bb.bf:                                            ; preds = %bb.be
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.kt = load ptr, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = trunc i64 %i.kw to i32                  ; 2 uses
  %i.ky = icmp sgt i32 %i.cu, %i.kx
  br i1 %i.ky, label %bb.bg, label %.thread.i266

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ks, ptr %i.b, align 8, !tbaa !82
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !123
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !77
  %i.ld = sub nsw i32 %i.cu, %i.kx
  tail call void %i.la(ptr noundef %i.lc, i32 noundef %i.ld), !inline_history !326
  br label %_ZL10stbi__skipP13stbi__contexti.exit270

.thread.i266:                                     ; preds = %bb.bf, %..thread_crit_edge.i267
  %i.le = phi ptr [ %.pre.i269, %..thread_crit_edge.i267 ], [ %i.kt, %bb.bf ]
  %i.lf = zext nneg i32 %i.cu to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lf
  store ptr %i.lg, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__skipP13stbi__contexti.exit270

_ZL10stbi__skipP13stbi__contexti.exit270:         ; preds = %bb.bd, %bb.bg, %.thread.i266
  %i.lh = mul nuw nsw i32 %i.cv, %.0193.ph        ; 2 uses
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.li) #54 ; 6 uses
  %.not208 = icmp eq ptr %i.lj, null
  br i1 %.not208, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %bb.bh

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit270
  tail call void @free(ptr noundef nonnull %i.hl) #53
  %i.lk = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.29, ptr %i.lk, align 8, !tbaa !71
  br label %bb.cp

bb.bh:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit270
  br i1 %.not209, label %bb.bj, label %.preheader30

.preheader30:                                     ; preds = %bb.bh
  %i.ll = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.preheader30, %bb.bi
  %.017736 = phi ptr [ %i.lj, %.preheader30 ], [ %i.md, %bb.bi ] ; 4 uses
  %.118835 = phi i32 [ 0, %.preheader30 ], [ %i.me, %bb.bi ]
  %i.lm = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.ln = trunc nuw i32 %i.lm to i16              ; 3 uses
  %i.lo = lshr i16 %i.ln, 10
  %i.lp = and i16 %i.lo, 31
  %.lhs.trunc.i = mul nuw nsw i16 %i.lp, 255
  %i.lq = udiv i16 %.lhs.trunc.i, 31
  %i.lr = trunc nuw i16 %i.lq to i8
  store i8 %i.lr, ptr %.017736, align 1, !tbaa !84
  %i.ls = lshr i16 %i.ln, 5
  %i.lt = getelementptr inbounds nuw i8, ptr %.017736, i64 1
  %i.lu = insertelement <2 x i16> poison, i16 %i.ls, i64 0
  %i.lv = insertelement <2 x i16> %i.lu, i16 %i.ln, i64 1
  %i.lw = and <2 x i16> %i.lv, splat (i16 31)
  %i.lx = mul nuw nsw <2 x i16> %i.lw, splat (i16 255)
  %i.ly = udiv <2 x i16> %i.lx, splat (i16 31)
  %i.lz = trunc <2 x i16> %i.ly to <2 x i8>       ; 2 uses
  %i.ma = extractelement <2 x i8> %i.lz, i64 0
  store i8 %i.ma, ptr %i.lt, align 1, !tbaa !84
  %i.mb = getelementptr inbounds nuw i8, ptr %.017736, i64 2
  %i.mc = extractelement <2 x i8> %i.lz, i64 1
  store i8 %i.mc, ptr %i.mb, align 1, !tbaa !84
  %i.md = getelementptr inbounds nuw i8, ptr %.017736, i64 %i.ll
  %i.me = add nuw nsw i32 %.118835, 1             ; 2 uses
  %exitcond71.not = icmp eq i32 %i.me, %i.cv
  br i1 %exitcond71.not, label %.loopexit31, label %bb.bi, !llvm.loop !832

bb.bj:                                            ; preds = %bb.bh
  %i.mf = tail call fastcc noundef i32 @_ZL10stbi__getnP13stbi__contextPhi(ptr noundef nonnull %0, ptr noundef nonnull %i.lj, i32 noundef %i.lh)
  %.not210 = icmp eq i32 %i.mf, 0
  br i1 %.not210, label %bb.bk, label %.loopexit31

bb.bk:                                            ; preds = %bb.bj
  tail call void @free(ptr noundef nonnull %i.hl) #53
  tail call void @free(ptr noundef nonnull %i.lj) #53
  %i.mg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.107, ptr %i.mg, align 8, !tbaa !71
  br label %bb.cp

.loopexit31:                                      ; preds = %bb.bi, %bb.bj, %bb.ba
  %.0191 = phi ptr [ null, %bb.ba ], [ %i.lj, %bb.bj ], [ %i.lj, %bb.bi ] ; 3 uses
  %.not58 = icmp eq i32 %i.hi, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.loopexit31
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 7 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mr = icmp eq i8 %.0.i243, 8
  %i.ms = zext nneg i8 %.0193.ph.shrunk to i64    ; 3 uses
  %wide.trip.count89 = zext nneg i32 %i.hi to i64
  %wide.trip.count76 = zext nneg i8 %.0193.ph.shrunk to i64
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph44, %.loopexit27
  %indvars.iv87 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next88, %.loopexit27 ] ; 2 uses
  %.not216.not = phi i1 [ true, %.lr.ph44 ], [ false, %.loopexit27 ]
  %.018042 = phi i32 [ 0, %.lr.ph44 ], [ %.118124, %.loopexit27 ] ; 2 uses
  %.018241 = phi i32 [ 0, %.lr.ph44 ], [ %i.qm, %.loopexit27 ] ; 4 uses
  %i.mt = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.mu = mul i32 %.0193.ph, %i.mt
  %i.mv = zext i32 %i.mu to i64
  %scevgep82 = getelementptr i8, ptr %i.hl, i64 %i.mv
  br i1 %i.gq, label %bb.bm, label %.thread

bb.bm:                                            ; preds = %bb.bl
  %i.mw = icmp eq i32 %.018241, 0
  br i1 %i.mw, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.mx = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.my = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.mz = icmp ult ptr %i.mx, %i.my
  br i1 %i.mz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  store ptr %i.na, ptr %i.b, align 8, !tbaa !82
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit278

bb.bp:                                            ; preds = %bb.bn
  %i.nc = load i32, ptr %i.mh, align 8, !tbaa !79
  %.not.i273 = icmp eq i32 %i.nc, 0
  br i1 %.not.i273, label %_ZL10stbi__get8P13stbi__context.exit278, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nd = load ptr, ptr %i.mi, align 8, !tbaa !83
  %i.ne = load ptr, ptr %i.mj, align 8, !tbaa !77
  %i.nf = load i32, ptr %i.ml, align 4, !tbaa !78
  %i.ng = tail call noundef i32 %i.nd(ptr noundef %i.ne, ptr noundef nonnull %i.mk, i32 noundef %i.nf), !inline_history !12 ; 2 uses
  %i.nh = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.ni = load ptr, ptr %i.mm, align 8, !tbaa !81
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = load i32, ptr %i.mn, align 8, !tbaa !80
  %i.no = add nsw i32 %i.nn, %i.nm
  store i32 %i.no, ptr %i.mn, align 8, !tbaa !80
  %i.np = icmp eq i32 %i.ng, 0
  br i1 %i.np, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.mh, align 8, !tbaa !79
  store i8 0, ptr %i.mk, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i275

bb.bs:                                            ; preds = %bb.bq
  %i.nq = sext i32 %i.ng to i64
  %i.nr = getelementptr inbounds i8, ptr %i.mk, i64 %i.nq
  %.pre.i274 = load i8, ptr %i.mk, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i275

_ZL19stbi__refill_bufferP13stbi__context.exit.i275: ; preds = %bb.bs, %bb.br
  %i.ns = phi i8 [ 0, %bb.br ], [ %.pre.i274, %bb.bs ]
  %.sink.i.i276 = phi ptr [ %i.mo, %bb.br ], [ %i.nr, %bb.bs ]
  store ptr %.sink.i.i276, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit278

_ZL10stbi__get8P13stbi__context.exit278:          ; preds = %bb.bo, %bb.bp, %_ZL19stbi__refill_bufferP13stbi__context.exit.i275
  %.0.i277 = phi i8 [ %i.nb, %bb.bo ], [ %i.ns, %_ZL19stbi__refill_bufferP13stbi__context.exit.i275 ], [ 0, %bb.bp ]
  %i.nt = zext i8 %.0.i277 to i32                 ; 2 uses
  %i.nu = and i32 %i.nt, 127
  %i.nv = add nuw nsw i32 %i.nu, 1
  %i.nw = lshr i32 %i.nt, 7
  br label %.thread

bb.bt:                                            ; preds = %bb.bm
  %.not215 = icmp eq i32 %.018042, 0              ; 2 uses
  %brmerge = or i1 %.not215, %.not216.not
  %not..not215 = xor i1 %.not215, true
  %.mux = zext i1 %not..not215 to i32
  br i1 %brmerge, label %.thread, label %.loopexit27

.thread:                                          ; preds = %bb.bt, %bb.bl, %_ZL10stbi__get8P13stbi__context.exit278
  %.118123 = phi i32 [ %.mux, %bb.bt ], [ %i.nw, %_ZL10stbi__get8P13stbi__context.exit278 ], [ %.018042, %bb.bl ] ; 3 uses
  %.118321 = phi i32 [ %.018241, %bb.bt ], [ %i.nv, %_ZL10stbi__get8P13stbi__context.exit278 ], [ %.018241, %bb.bl ] ; 3 uses
  br i1 %i.gt, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %.thread
  br i1 %i.mr, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  %i.nx = load ptr, ptr %i.b, align 8, !tbaa !82  ; 3 uses
  %i.ny = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.nz = icmp ult ptr %i.nx, %i.ny
  br i1 %i.nz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 1
  store ptr %i.oa, ptr %i.b, align 8, !tbaa !82
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit284

bb.bx:                                            ; preds = %bb.bv
  %i.oc = load i32, ptr %i.mh, align 8, !tbaa !79
  %.not.i279 = icmp eq i32 %i.oc, 0
  br i1 %.not.i279, label %_ZL10stbi__get8P13stbi__context.exit284, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.od = load ptr, ptr %i.mi, align 8, !tbaa !83
  %i.oe = load ptr, ptr %i.mj, align 8, !tbaa !77
  %i.of = load i32, ptr %i.ml, align 4, !tbaa !78
  %i.og = tail call noundef i32 %i.od(ptr noundef %i.oe, ptr noundef nonnull %i.mk, i32 noundef %i.of), !inline_history !12 ; 2 uses
  %i.oh = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.oi = load ptr, ptr %i.mm, align 8, !tbaa !81
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = trunc i64 %i.ol to i32
  %i.on = load i32, ptr %i.mn, align 8, !tbaa !80
  %i.oo = add nsw i32 %i.on, %i.om
  store i32 %i.oo, ptr %i.mn, align 8, !tbaa !80
  %i.op = icmp eq i32 %i.og, 0
  br i1 %i.op, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %i.mh, align 8, !tbaa !79
  store i8 0, ptr %i.mk, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i281

bb.ca:                                            ; preds = %bb.by
  %i.oq = sext i32 %i.og to i64
  %i.or = getelementptr inbounds i8, ptr %i.mk, i64 %i.oq
  %.pre.i280 = load i8, ptr %i.mk, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i281

_ZL19stbi__refill_bufferP13stbi__context.exit.i281: ; preds = %bb.ca, %bb.bz
  %i.os = phi i8 [ 0, %bb.bz ], [ %.pre.i280, %bb.ca ]
  %.sink.i.i282 = phi ptr [ %i.mo, %bb.bz ], [ %i.or, %bb.ca ]
  store ptr %.sink.i.i282, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit284

_ZL10stbi__get8P13stbi__context.exit284:          ; preds = %bb.bw, %bb.bx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i281
  %.0.i283 = phi i8 [ %i.ob, %bb.bw ], [ %i.os, %_ZL19stbi__refill_bufferP13stbi__context.exit.i281 ], [ 0, %bb.bx ]
  %i.ot = zext i8 %.0.i283 to i32
  br label %.loopexit27.loopexit

bb.cb:                                            ; preds = %bb.bu
  %i.ou = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0)
  br label %.loopexit27.loopexit

.loopexit27.loopexit:                             ; preds = %bb.cb, %_ZL10stbi__get8P13stbi__context.exit284
  %i.ov = phi i32 [ %i.ot, %_ZL10stbi__get8P13stbi__context.exit284 ], [ %i.ou, %bb.cb ] ; 2 uses
  %.not218 = icmp samesign ult i32 %i.ov, %i.cv
  %spec.store.select = select i1 %.not218, i32 %i.ov, i32 0
  %i.ow = zext nneg i32 %spec.store.select to i64
  %i.ox = mul nuw nsw i64 %i.ms, %i.ow
  %scevgep = getelementptr nuw i8, ptr %.0191, i64 %i.ox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.ms, i1 false), !tbaa !84
  br label %.loopexit27

bb.cc:                                            ; preds = %.thread
  br i1 %.not209, label %.preheader28.preheader, label %bb.cd

.preheader28.preheader:                           ; preds = %bb.cc
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !82
  %.pre106 = load ptr, ptr %i.d, align 8, !tbaa !85
  br label %.preheader28

bb.cd:                                            ; preds = %bb.cc
  %i.oy = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef nonnull %0)
  %i.oz = trunc nuw i32 %i.oy to i16              ; 3 uses
  %i.pa = lshr i16 %i.oz, 10
  %i.pb = and i16 %i.pa, 31
  %.lhs.trunc.i285 = mul nuw nsw i16 %i.pb, 255
  %i.pc = udiv i16 %.lhs.trunc.i285, 31
  %i.pd = trunc nuw i16 %i.pc to i8
  store i8 %i.pd, ptr %i.a, align 4, !tbaa !84
  %i.pe = lshr i16 %i.oz, 5
  %i.pf = insertelement <2 x i16> poison, i16 %i.pe, i64 0
  %i.pg = insertelement <2 x i16> %i.pf, i16 %i.oz, i64 1
  %i.ph = and <2 x i16> %i.pg, splat (i16 31)
  %i.pi = mul nuw nsw <2 x i16> %i.ph, splat (i16 255)
  %i.pj = udiv <2 x i16> %i.pi, splat (i16 31)
  %i.pk = trunc <2 x i16> %i.pj to <2 x i8>       ; 2 uses
  %i.pl = extractelement <2 x i8> %i.pk, i64 0
  store i8 %i.pl, ptr %i.mp, align 1, !tbaa !84
  %i.pm = extractelement <2 x i8> %i.pk, i64 1
  store i8 %i.pm, ptr %i.mq, align 2, !tbaa !84
  br label %.loopexit27

.preheader28:                                     ; preds = %.preheader28.preheader, %_ZL10stbi__get8P13stbi__context.exit293
  %i.pn = phi ptr [ %.pre106, %.preheader28.preheader ], [ %i.qj, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 3 uses
  %i.po = phi ptr [ %.pre, %.preheader28.preheader ], [ %i.qk, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 4 uses
  %indvars.iv72 = phi i64 [ 0, %.preheader28.preheader ], [ %indvars.iv.next73, %_ZL10stbi__get8P13stbi__context.exit293 ] ; 2 uses
  %i.pp = icmp ult ptr %i.po, %i.pn
  br i1 %i.pp, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.preheader28
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 1 ; 2 uses
  store ptr %i.pq, ptr %i.b, align 8, !tbaa !82
  %i.pr = load i8, ptr %i.po, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit293

bb.cf:                                            ; preds = %.preheader28
  %i.ps = load i32, ptr %i.mh, align 8, !tbaa !79
  %.not.i288 = icmp eq i32 %i.ps, 0
  br i1 %.not.i288, label %_ZL10stbi__get8P13stbi__context.exit293, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.pt = load ptr, ptr %i.mi, align 8, !tbaa !83
  %i.pu = load ptr, ptr %i.mj, align 8, !tbaa !77
  %i.pv = load i32, ptr %i.ml, align 4, !tbaa !78
  %i.pw = tail call noundef i32 %i.pt(ptr noundef %i.pu, ptr noundef nonnull %i.mk, i32 noundef %i.pv), !inline_history !12 ; 2 uses
  %i.px = load ptr, ptr %i.b, align 8, !tbaa !82
  %i.py = load ptr, ptr %i.mm, align 8, !tbaa !81
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = load i32, ptr %i.mn, align 8, !tbaa !80
  %i.qe = add nsw i32 %i.qd, %i.qc
  store i32 %i.qe, ptr %i.mn, align 8, !tbaa !80
  %i.qf = icmp eq i32 %i.pw, 0
  br i1 %i.qf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.mh, align 8, !tbaa !79
  store i8 0, ptr %i.mk, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i290

bb.ci:                                            ; preds = %bb.cg
  %i.qg = sext i32 %i.pw to i64
  %i.qh = getelementptr inbounds i8, ptr %i.mk, i64 %i.qg
  %.pre.i289 = load i8, ptr %i.mk, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i290

_ZL19stbi__refill_bufferP13stbi__context.exit.i290: ; preds = %bb.ci, %bb.ch
  %i.qi = phi i8 [ 0, %bb.ch ], [ %.pre.i289, %bb.ci ]
  %.sink.i.i291 = phi ptr [ %i.mo, %bb.ch ], [ %i.qh, %bb.ci ] ; 2 uses
  store ptr %.sink.i.i291, ptr %i.d, align 8, !tbaa !85
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit293

_ZL10stbi__get8P13stbi__context.exit293:          ; preds = %bb.ce, %bb.cf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290
  %i.qj = phi ptr [ %i.pn, %bb.ce ], [ %.sink.i.i291, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ %i.pn, %bb.cf ]
  %i.qk = phi ptr [ %i.pq, %bb.ce ], [ %i.mo, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ %i.po, %bb.cf ]
  %.0.i292 = phi i8 [ %i.pr, %bb.ce ], [ %i.qi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i290 ], [ 0, %bb.cf ]
  %i.ql = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv72
  store i8 %.0.i292, ptr %i.ql, align 1, !tbaa !84
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count76
  br i1 %exitcond77.not, label %.loopexit27, label %.preheader28, !llvm.loop !833

.loopexit27:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit293, %.loopexit27.loopexit, %bb.bt, %bb.cd
  %.118124 = phi i32 [ %.118123, %.loopexit27.loopexit ], [ %.118123, %bb.cd ], [ 1, %bb.bt ], [ %.118123, %_ZL10stbi__get8P13stbi__context.exit293 ]
  %.118322 = phi i32 [ %.118321, %.loopexit27.loopexit ], [ %.118321, %bb.cd ], [ %.018241, %bb.bt ], [ %.118321, %_ZL10stbi__get8P13stbi__context.exit293 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep82, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.ms, i1 false), !tbaa !84
  %i.qm = add nsw i32 %.118322, -1
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge, label %bb.bl, !llvm.loop !834

._crit_edge:                                      ; preds = %.loopexit27, %.loopexit31
  %.not211.not = icmp eq i8 %i.gs, 0
  %i.qn = icmp ne i32 %i.ee, 0
  %or.cond56 = and i1 %.not211.not, %i.qn
  br i1 %or.cond56, label %.lr.ph52, label %.loopexit26

.lr.ph52:                                         ; preds = %._crit_edge
  %i.qo = mul nuw nsw i32 %i.ed, %.0193.ph        ; 10 uses
  %.not59 = icmp eq i32 %i.ed, 0
  br i1 %.not59, label %.loopexit26, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.lr.ph52
  %i.qp = add nsw i32 %i.ee, -1                   ; 2 uses
  %5 = mul i32 %i.ed, %i.qp
  %i.qq = mul i32 %5, %.0193.ph
  %i.qr = lshr i32 %i.qp, 1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.qo, i32 1)
  %6 = sub nsw i32 %i.qo, %smin
  %narrow = add nuw nsw i32 %6, 1
  %i.qs = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep169.a = getelementptr i8, ptr %i.hl, i64 %i.qs
  %scevgep172.a = getelementptr i8, ptr %i.hl, i64 %i.qs
  %smin174 = tail call i32 @llvm.smin.i32(i32 %i.qo, i32 1)
  %7 = sub nsw i32 %i.qo, %smin174                ; 3 uses
  %narrow190 = add nuw nsw i32 %7, 1
  %i.qt = zext nneg i32 %narrow190 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %7, 3
  %min.iters.check175 = icmp ult i32 %7, 31
  %i.qu = and i64 %i.qt, 28
  %n.vec = and i64 %i.qt, 2147483616              ; 6 uses
  %i.qv = trunc nuw nsw i64 %n.vec to i32
  %i.qw = sub nsw i32 %i.qo, %i.qv
  %cmp.n = icmp eq i64 %n.vec, %i.qt
  %min.epilog.iters.check = icmp eq i64 %i.qu, 0
  %n.vec181 = and i64 %i.qt, 2147483644           ; 5 uses
  %i.qx = trunc nuw nsw i64 %n.vec181 to i32
  %i.qy = sub nsw i32 %i.qo, %i.qx
  %cmp.n186 = icmp eq i64 %n.vec181, %i.qt
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph49.preheader, %._crit_edge50
  %indvars.iv97 = phi i32 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next98, %._crit_edge50 ] ; 3 uses
  %indvars.iv93 = phi i32 [ %i.qq, %.lr.ph49.preheader ], [ %indvars.iv.next94, %._crit_edge50 ] ; 3 uses
  %.351 = phi i32 [ 0, %.lr.ph49.preheader ], [ %i.rr, %._crit_edge50 ] ; 2 uses
  %i.qz = sext i32 %indvars.iv93 to i64           ; 6 uses
  %i.ra = zext i32 %indvars.iv97 to i64           ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.rb = sext i32 %indvars.iv93 to i64           ; 2 uses
  %scevgep173 = getelementptr i8, ptr %scevgep172.a, i64 %i.rb
  %scevgep171 = getelementptr i8, ptr %i.hl, i64 %i.rb
  %i.rc = zext i32 %indvars.iv97 to i64           ; 2 uses
  %scevgep170 = getelementptr i8, ptr %scevgep169.a, i64 %i.rc
  %scevgep168 = getelementptr nuw i8, ptr %i.hl, i64 %i.rc
  %bound0 = icmp ult ptr %scevgep168, %scevgep173
  %bound1 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check175, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rd = add nuw nsw i64 %n.vec, %i.ra
  %i.re = add nsw i64 %n.vec, %i.qz
  %invariant.gep = getelementptr i8, ptr %i.hl, i64 %i.ra
  %invariant.gep209 = getelementptr i8, ptr %i.hl, i64 %i.qz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !84, !alias.scope !844, !noalias !845
  %wide.load176.a = load <16 x i8>, ptr %i.rf, align 1, !tbaa !84, !alias.scope !844, !noalias !845
  %gep210 = getelementptr i8, ptr %invariant.gep209, i64 %index ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %gep210, i64 16 ; 2 uses
  %wide.load177 = load <16 x i8>, ptr %gep210, align 1, !tbaa !84, !alias.scope !845
  %wide.load178 = load <16 x i8>, ptr %i.rg, align 1, !tbaa !84, !alias.scope !845
  store <16 x i8> %wide.load177, ptr %gep, align 1, !tbaa !84, !alias.scope !844, !noalias !845
  store <16 x i8> %wide.load178, ptr %i.rf, align 1, !tbaa !84, !alias.scope !844, !noalias !845
  store <16 x i8> %wide.load, ptr %gep210, align 1, !tbaa !84, !alias.scope !845
  store <16 x i8> %wide.load176.a, ptr %i.rg, align 1, !tbaa !84, !alias.scope !845
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rh = icmp eq i64 %index.next, %n.vec
  br i1 %i.rh, label %middle.block, label %vector.body, !llvm.loop !838

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge50, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !112

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ri = add nuw nsw i64 %n.vec181, %i.ra
  %i.rj = add nsw i64 %n.vec181, %i.qz
  %invariant.gep211 = getelementptr i8, ptr %i.hl, i64 %i.ra
  %invariant.gep213 = getelementptr i8, ptr %i.hl, i64 %i.qz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ] ; 3 uses
  %gep212 = getelementptr i8, ptr %invariant.gep211, i64 %index182 ; 2 uses
  %wide.load183 = load <4 x i8>, ptr %gep212, align 1, !tbaa !84, !alias.scope !844, !noalias !845
  %gep214 = getelementptr i8, ptr %invariant.gep213, i64 %index182 ; 2 uses
  %wide.load184 = load <4 x i8>, ptr %gep214, align 1, !tbaa !84, !alias.scope !845
  store <4 x i8> %wide.load184, ptr %gep212, align 1, !tbaa !84, !alias.scope !844, !noalias !845
  store <4 x i8> %wide.load183, ptr %gep214, align 1, !tbaa !84, !alias.scope !845
  %index.next185 = add nuw i64 %index182, 4       ; 2 uses
  %i.rk = icmp eq i64 %index.next185, %n.vec181
  br i1 %i.rk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !839

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n186, label %._crit_edge50, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv99.ph = phi i64 [ %i.ra, %iter.check ], [ %i.ra, %vector.memcheck ], [ %i.rd, %vec.epilog.iter.check ], [ %i.ri, %vec.epilog.middle.block ]
  %indvars.iv95.ph = phi i64 [ %i.qz, %iter.check ], [ %i.qz, %vector.memcheck ], [ %i.re, %vec.epilog.iter.check ], [ %i.rj, %vec.epilog.middle.block ]
  %.319045.ph = phi i32 [ %i.qo, %iter.check ], [ %i.qo, %vector.memcheck ], [ %i.qw, %vec.epilog.iter.check ], [ %i.qy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %vec.epilog.scalar.ph ], [ %indvars.iv99.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %vec.epilog.scalar.ph ], [ %indvars.iv95.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.319045 = phi i32 [ %i.rp, %vec.epilog.scalar.ph ], [ %.319045.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv99 ; 2 uses
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !84
  %i.rn = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv95 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !84
  store i8 %i.ro, ptr %i.rl, align 1, !tbaa !84
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !84
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %i.rp = add nsw i32 %.319045, -1
  %i.rq = icmp sgt i32 %.319045, 1
  br i1 %i.rq, label %vec.epilog.scalar.ph, label %._crit_edge50, !llvm.loop !840

._crit_edge50:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.rr = add nuw nsw i32 %.351, 1
  %indvars.iv.next94 = sub i32 %indvars.iv93, %i.qo
  %indvars.iv.next98 = add i32 %indvars.iv97, %i.qo
  %exitcond104.not = icmp eq i32 %.351, %i.qr
  br i1 %exitcond104.not, label %.loopexit26, label %iter.check, !llvm.loop !841

.loopexit26:                                      ; preds = %._crit_edge50, %.lr.ph52, %._crit_edge
  %.not212 = icmp eq ptr %.0191, null
  br i1 %.not212, label %.loopexit33, label %bb.cj

bb.cj:                                            ; preds = %.loopexit26
  tail call void @free(ptr noundef nonnull %.0191) #53
  br label %.loopexit33

.loopexit33.loopexit.unr-lcssa:                   ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1
  %lcmp.mod198.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod198.not, label %.loopexit33, label %..thread_crit_edge.i262.us.us.epil.preheader

..thread_crit_edge.i262.us.us.epil.preheader:     ; preds = %.loopexit33.loopexit.unr-lcssa, %..thread_crit_edge.i262.us.us.preheader
  %indvars.iv66.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.us.preheader ], [ %indvars.iv.next67.1, %.loopexit33.loopexit.unr-lcssa ]
  %.epil.init197 = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.us.preheader ], [ %i.ja, %.loopexit33.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod199)
  %i.rs = getelementptr inbounds nuw i8, ptr %.epil.init197, i64 %i.if ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.rs, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit33, label %bb.ck

bb.ck:                                            ; preds = %..thread_crit_edge.i262.us.us.epil.preheader
  %i.rt = trunc i64 %indvars.iv66.epil.init to i32
  %i.ru = xor i32 %i.rt, -1
  %i.rv = add i32 %i.ee, %i.ru
  %i.rw = mul i32 %i.ic, %i.rv
  %i.rx = sext i32 %i.rw to i64
  %i.ry = getelementptr inbounds i8, ptr %i.hl, i64 %i.rx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ry, ptr align 1 %.epil.init197, i64 %i.if, i1 false)
  store ptr %i.rs, ptr %i.b, align 8, !tbaa !82
  br label %.loopexit33

.loopexit33.loopexit192.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit33, label %..thread_crit_edge.i262.us.epil.preheader

..thread_crit_edge.i262.us.epil.preheader:        ; preds = %.loopexit33.loopexit192.unr-lcssa, %..thread_crit_edge.i262.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i262.us.preheader ], [ %indvars.iv.next.1, %.loopexit33.loopexit192.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i262.us.preheader ], [ %i.jo, %.loopexit33.loopexit192.unr-lcssa ] ; 2 uses
  %lcmp.mod194 = trunc i32 %i.ee to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.rz = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %i.if ; 2 uses
  %.not32.i.us.epil = icmp ugt ptr %i.rz, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %.loopexit33, label %bb.cl

bb.cl:                                            ; preds = %..thread_crit_edge.i262.us.epil.preheader
  %i.sa = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.sb = mul i32 %i.ic, %i.sa
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %i.hl, i64 %i.sc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sd, ptr align 1 %.epil.init, i64 %i.if, i1 false)
  store ptr %i.rz, ptr %i.b, align 8, !tbaa !82
  br label %.loopexit33

.loopexit33:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit33.loopexit192.unr-lcssa, %bb.cl, %..thread_crit_edge.i262.us.epil.preheader, %.loopexit33.loopexit.unr-lcssa, %bb.ck, %..thread_crit_edge.i262.us.us.epil.preheader, %.preheader32, %.loopexit26, %bb.cj
  %i.se = icmp samesign ult i8 %.0193.ph.shrunk, 3
  %.not60 = icmp eq i32 %i.hi, 0
  %i.sf = or i1 %i.se, %.not60
  %or.cond164 = or i1 %i.sf, %i.gz
  br i1 %or.cond164, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.loopexit33
  %i.sg = zext nneg i8 %.0193.ph.shrunk to i64    ; 5 uses
  %i.sh = add i32 %i.hi, -1
  %xtraiter202 = and i32 %i.hi, 3                 ; 3 uses
  %i.si = icmp ult i32 %i.sh, 3
  br i1 %i.si, label %.epil.preheader, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter205 = and i32 %i.hi, -4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.lr.ph55.new
  %.017454 = phi ptr [ %i.hl, %.lr.ph55.new ], [ %i.sy, %bb.cm ] ; 4 uses
  %niter206 = phi i32 [ 0, %.lr.ph55.new ], [ %niter206.next.3, %bb.cm ]
  %i.sj = load i8, ptr %.017454, align 1, !tbaa !84
  %i.sk = getelementptr inbounds nuw i8, ptr %.017454, i64 2 ; 2 uses
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !84
  store i8 %i.sl, ptr %.017454, align 1, !tbaa !84
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !84
  %i.sm = getelementptr inbounds nuw i8, ptr %.017454, i64 %i.sg ; 4 uses
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !84
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 2 ; 2 uses
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !84
  store i8 %i.sp, ptr %i.sm, align 1, !tbaa !84
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !84
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sg ; 4 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !84
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 2 ; 2 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !84
  store i8 %i.st, ptr %i.sq, align 1, !tbaa !84
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !84
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.sg ; 4 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !84
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 2 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !84
  store i8 %i.sx, ptr %i.su, align 1, !tbaa !84
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !84
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sg ; 2 uses
  %niter206.next.3 = add i32 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i32 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !842

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.cm
  %lcmp.mod203.not = icmp eq i32 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55
  %.017454.epil.init = phi ptr [ %i.hl, %.lr.ph55 ], [ %i.sy, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i32 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cn, %.epil.preheader
  %.017454.epil = phi ptr [ %.017454.epil.init, %.epil.preheader ], [ %i.tc, %bb.cn ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cn ]
  %i.sz = load i8, ptr %.017454.epil, align 1, !tbaa !84
  %i.ta = getelementptr inbounds nuw i8, ptr %.017454.epil, i64 2 ; 2 uses
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !84
  store i8 %i.tb, ptr %.017454.epil, align 1, !tbaa !84
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !84
  %i.tc = getelementptr inbounds nuw i8, ptr %.017454.epil, i64 %i.sg
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.cn, !llvm.loop !843

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.cn, %.loopexit33
  %.not213 = icmp eq i32 %4, 0
  %.not214 = icmp eq i32 %4, %.0193.ph
  %or.cond220 = or i1 %.not213, %.not214
  br i1 %or.cond220, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.loopexit
  %i.td = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.hl, i32 noundef %.0193.ph, i32 noundef %4, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %bb.cp

bb.cp:                                            ; preds = %.loopexit, %bb.co, %bb.bk, %_ZL17stbi__malloc_mad2iii.exit.thread, %bb.bc, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.ao, %_ZL18stbi__tga_get_compiiPi.exit
  %.0 = phi ptr [ null, %_ZL18stbi__tga_get_compiiPi.exit ], [ null, %bb.ao ], [ null, %bb.bc ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.bk ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ %i.td, %bb.co ], [ %i.hl, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #53
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i8 @_ZL10stbi__get8P13stbi__context(ptr noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !82
  %i.g = load i8, ptr %i.b, align 1, !tbaa !84
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !846 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !81
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !80
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !80
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre = load i8, ptr %i.n, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit

_ZL19stbi__refill_bufferP13stbi__context.exit:    ; preds = %bb.e, %bb.f
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre, %bb.f ]
  %.sink.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit, %bb.b
  %.0 = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit ], [ 0, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL20stbi__parse_png_fileP9stbi__pngii(ptr nofree noundef nonnull captures(none) initializes((8, 32)) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  %i.a = alloca [1024 x i8], align 16             ; 12 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #53
  %i.d = load ptr, ptr %0, align 8, !tbaa !119    ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 61 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 25 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 28 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 56 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 57 ; 40 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !82 ; 3 uses
  %.pre7.i = load ptr, ptr %i.i, align 8, !tbaa !85 ; 2 uses
  %i.r = icmp ult ptr %.pre.i, %.pre7.i
  br i1 %i.r, label %bb.ar, label %bb.as

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i
  %i.s = icmp ult ptr %i.gj, %i.gi
  br i1 %i.s, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.j, align 8, !tbaa !79
  %.not.i.i.1 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.1, label %_ZL22stbi__check_png_headerP13stbi__context.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !77
  %i.w = load i32, ptr %i.n, align 4, !tbaa !78
  %i.x = tail call noundef i32 %i.u(ptr noundef %i.v, ptr noundef nonnull %i.m, i32 noundef %i.w), !inline_history !847 ; 2 uses
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
end_hunk_1
begin_hunk_2_@_ZL14stbi__tga_infoP13stbi__contextPiS1_S1_:bb.a
  %i.fk = ptrtoint ptr %.pre.i111 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 9
  br i1 %i.fn, label %bb.ai, label %.thread.i108

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !82
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !123
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !77
  %i.fs = sub nsw i32 9, %i.fm
  tail call void %i.fp(ptr noundef %i.fr, i32 noundef %i.fs), !inline_history !326
  br label %_ZL10stbi__skipP13stbi__contexti.exit106

.thread.i108:                                     ; preds = %bb.ag, %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %.pre.i111, i64 9
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__skipP13stbi__contexti.exit106

_ZL10stbi__skipP13stbi__contexti.exit106:         ; preds = %.thread.i108, %bb.ai, %.thread.i102, %bb.ad
  %.0.shrunk = phi i8 [ %.0.i99, %.thread.i102 ], [ %.0.i99, %bb.ad ], [ 0, %bb.ai ], [ 0, %.thread.i108 ] ; 2 uses
  %i.fu = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit106
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fx = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !71
  store <2 x ptr> %i.fx, ptr %i.a, align 8, !tbaa !71
  br label %bb.bj

bb.ak:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit106
  %i.fy = tail call fastcc noundef i32 @_ZL13stbi__get16leP13stbi__context(ptr noundef %0) ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gb = load <2 x ptr>, ptr %i.ga, align 8, !tbaa !71
  store <2 x ptr> %i.gb, ptr %i.a, align 8, !tbaa !71
  br label %bb.bj

bb.am:                                            ; preds = %bb.ak
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !82  ; 4 uses
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !85  ; 3 uses
  %i.ge = icmp ult ptr %i.gc, %i.gd
  br i1 %i.ge, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  store ptr %i.gf, ptr %i.a, align 8, !tbaa !82
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !84
  br label %_ZL10stbi__get8P13stbi__context.exit118

bb.ao:                                            ; preds = %bb.am
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !79
  %.not.i113 = icmp eq i32 %i.gi, 0
  br i1 %.not.i113, label %_ZL10stbi__get8P13stbi__context.exit118, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !83
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !77
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !78
  %i.gq = tail call noundef i32 %i.gk(ptr noundef %i.gm, ptr noundef nonnull %i.gn, i32 noundef %i.gp), !inline_history !12 ; 2 uses
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !81
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !80
  %i.ha = add nsw i32 %i.gz, %i.gx
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !80
  %i.hb = icmp eq i32 %i.gq, 0
  br i1 %i.hb, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.gh, align 8, !tbaa !79
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.gn, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i115

bb.ar:                                            ; preds = %bb.ap
  %i.hd = sext i32 %i.gq to i64
  %i.he = getelementptr inbounds i8, ptr %i.gn, i64 %i.hd
  %.pre.i114 = load i8, ptr %i.gn, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i115

_ZL19stbi__refill_bufferP13stbi__context.exit.i115: ; preds = %bb.ar, %bb.aq
  %i.hf = phi i8 [ 0, %bb.aq ], [ %.pre.i114, %bb.ar ]
  %.sink.i.i116 = phi ptr [ %i.hc, %bb.aq ], [ %i.he, %bb.ar ] ; 2 uses
  store ptr %.sink.i.i116, ptr %i.c, align 8, !tbaa !85
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.hg, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit118

_ZL10stbi__get8P13stbi__context.exit118:          ; preds = %bb.an, %bb.ao, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115
  %i.hh = phi ptr [ %i.gd, %bb.an ], [ %.sink.i.i116, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115 ], [ %i.gd, %bb.ao ]
  %i.hi = phi ptr [ %i.gf, %bb.an ], [ %i.hg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115 ], [ %i.gc, %bb.ao ] ; 2 uses
  %.0.i117 = phi i8 [ %i.gg, %bb.an ], [ %i.hf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i115 ], [ 0, %bb.ao ] ; 3 uses
  %i.hj = icmp ult ptr %i.hi, %i.hh
  br i1 %i.hj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit118
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit124.sink.split

bb.at:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit118
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !79
  %.not.i119 = icmp eq i32 %i.hm, 0
  br i1 %.not.i119, label %_ZL10stbi__get8P13stbi__context.exit124, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !83
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !77
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !78
  %i.hu = tail call noundef i32 %i.ho(ptr noundef %i.hq, ptr noundef nonnull %i.hr, i32 noundef %i.ht), !inline_history !12 ; 2 uses
  %i.hv = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !81
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !80
  %i.ie = add nsw i32 %i.id, %i.ib
  store i32 %i.ie, ptr %i.ic, align 8, !tbaa !80
  %i.if = icmp eq i32 %i.hu, 0
  br i1 %i.if, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.hl, align 8, !tbaa !79
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.hr, align 8, !tbaa !84
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i121

bb.aw:                                            ; preds = %bb.au
  %i.ih = sext i32 %i.hu to i64
  %i.ii = getelementptr inbounds i8, ptr %i.hr, i64 %i.ih
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i121

_ZL19stbi__refill_bufferP13stbi__context.exit.i121: ; preds = %bb.aw, %bb.av
  %.sink.i.i122 = phi ptr [ %i.ig, %bb.av ], [ %i.ii, %bb.aw ]
  store ptr %.sink.i.i122, ptr %i.c, align 8, !tbaa !85
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL10stbi__get8P13stbi__context.exit124.sink.split

_ZL10stbi__get8P13stbi__context.exit124.sink.split: ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i121, %bb.as
  %.sink173 = phi ptr [ %i.hk, %bb.as ], [ %i.ij, %_ZL19stbi__refill_bufferP13stbi__context.exit.i121 ]
  store ptr %.sink173, ptr %i.a, align 8, !tbaa !82
  br label %_ZL10stbi__get8P13stbi__context.exit124

_ZL10stbi__get8P13stbi__context.exit124:          ; preds = %_ZL10stbi__get8P13stbi__context.exit124.sink.split, %bb.at
  %.not = icmp eq i8 %.0.shrunk, 0
  br i1 %.not, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit124
  switch i8 %.0.i117, label %bb.ay [
    i8 16, label %bb.az
    i8 8, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.il = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !71
  store <2 x ptr> %i.il, ptr %i.a, align 8, !tbaa !71
  br label %bb.bj

bb.az:                                            ; preds = %bb.ax, %bb.ax
  %switch.tableidx = add i8 %.0.shrunk, -8        ; 3 uses
  %i.im = icmp ult i8 %switch.tableidx, 25
  br i1 %i.im, label %switch.hole_check, label %_ZL18stbi__tga_get_compiiPi.exit.thread136

bb.ba:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit124
  switch i8 %.0.i117, label %_ZL18stbi__tga_get_compiiPi.exit.thread136 [
    i8 8, label %_ZL18stbi__tga_get_compiiPi.exit.thread
    i8 16, label %bb.bb
    i8 15, label %bb.bc
    i8 24, label %bb.bd
    i8 32, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.in = and i8 %.0.i91, -9
  %i.io = icmp eq i8 %i.in, 3
  %.mux.i = select i1 %i.io, i32 2, i32 3
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

bb.bc:                                            ; preds = %bb.ba
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

bb.bd:                                            ; preds = %bb.ba, %bb.ba
  %i.ip = lshr i8 %.0.i117, 3
  %i.iq = zext nneg i8 %i.ip to i32
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

_ZL18stbi__tga_get_compiiPi.exit.thread136:       ; preds = %switch.hole_check, %bb.az, %bb.ba
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.is = load <2 x ptr>, ptr %i.ir, align 8, !tbaa !71
  store <2 x ptr> %i.is, ptr %i.a, align 8, !tbaa !71
  br label %bb.bj

switch.hole_check:                                ; preds = %bb.az
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 16843137, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZL18stbi__tga_get_compiiPi.exit.thread136

switch.lookup:                                    ; preds = %switch.hole_check
  %i.it = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL14stbi__tga_infoP13stbi__contextPiS1_S1_, i64 %i.it
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

_ZL18stbi__tga_get_compiiPi.exit.thread:          ; preds = %switch.lookup, %bb.bc, %bb.bb, %bb.ba, %bb.bd
  %.069134 = phi i32 [ %switch.ext, %switch.lookup ], [ 3, %bb.bc ], [ %.mux.i, %bb.bb ], [ 1, %bb.ba ], [ %i.iq, %bb.bd ]
  %.not78 = icmp eq ptr %1, null
  br i1 %.not78, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZL18stbi__tga_get_compiiPi.exit.thread
  store i32 %i.fu, ptr %1, align 4, !tbaa !72
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZL18stbi__tga_get_compiiPi.exit.thread
  %.not79 = icmp eq ptr %2, null
  br i1 %.not79, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 %i.fy, ptr %2, align 4, !tbaa !72
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.not80 = icmp eq ptr %3, null
  br i1 %.not80, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 %.069134, ptr %3, align 4, !tbaa !72
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %_ZL18stbi__tga_get_compiiPi.exit.thread136, %bb.ay, %bb.al, %bb.aj, %bb.af, %_ZL10stbi__get8P13stbi__context.exit100.thread, %bb.s, %bb.l
  %.070 = phi i32 [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %_ZL10stbi__get8P13stbi__context.exit100.thread ], [ 0, %bb.aj ], [ 0, %bb.al ], [ 0, %bb.ay ], [ 0, %bb.af ], [ 0, %_ZL18stbi__tga_get_compiiPi.exit.thread136 ], [ 1, %bb.bi ], [ 1, %bb.bh ]
  ret i32 %.070
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__117__assoc_sub_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__117__assoc_sub_stateE, i64 16), ptr %0, align 8, !tbaa !125
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #53
  tail call void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #53
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__117__assoc_sub_stateE, i64 16), ptr %0, align 8, !tbaa !125
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #53
  tail call void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(144) %0) #53
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 5 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.h) #53
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.h
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.d, align 8, !tbaa !153
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.c
  %i.i = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.e, %bb.c ] ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !251
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.n) #59
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i.i, %bb.b, %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(144) %0) #53
  ret void
}

declare void @_ZNSt3__117__assoc_sub_state9__executeEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt3__118condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZNSt3__114__shared_countD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #35

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() local_unnamed_addr #39 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #53 ; 2 uses
  tail call void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #53
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt20bad_array_new_length, ptr nonnull @_ZNSt20bad_array_new_lengthD1Ev) #58
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #35

; Function Attrs: nounwind
declare void @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #40

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !125
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #53
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %0, align 8, !tbaa !125
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %0) #53, !inline_history !1053
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #59
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #35

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #59
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #35

end_hunk_2
begin_hunk_3_@_ZN3tev9toFloat32ILNS_8ituth2739ETransferE13ELb1EKhEENS_4TaskIvEENSt3__14spanIT1_Lm18446744073709551615EEEmNS_16MultiChannelViewIfEENS_10EAlphaKindEiffm.destroy:resume.entry
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !135 ; 5 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #53, !inline_history !11
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #53
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %bb.b, %bb.a, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr142) #53
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 16, !tbaa !247 ; 2 uses
  %i.l = icmp ugt i64 %i.k, 5
  br i1 %i.l, label %bb.c, label %_ZN3tev16MultiChannelViewIfED2Ev.exit

bb.c:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit
  %i.m = load ptr, ptr %.reload.addr, align 8, !tbaa !245
  %i.n = mul i64 %i.k, 24
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.n) #59
  br label %_ZN3tev16MultiChannelViewIfED2Ev.exit

_ZN3tev16MultiChannelViewIfED2Ev.exit:            ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK3tev15StbiImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume(ptr noundef nonnull align 16 dereferenceable(1632) %0) #9 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %.reload.addr679 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %.reload.addr683.a = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %.reload.addr684.a = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 5 uses
  %.reload.addr685 = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 5 uses
  %.reload.addr687.a = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %.reload.addr688 = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 15 uses
  %.reload.addr692 = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 5 uses
  %.reload.addr694.a = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %.reload.addr695.a = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %.reload.addr696.a = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %.reload.addr697.a = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 2 uses
  %.reload.addr698 = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  %.reload.addr700.a = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %.reload.addr701 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 6 uses
  %index = load i8, ptr %index.addr, align 16
  switch i8 %index, label %unreachable [
    i8 0, label %AfterCoroSuspend
    i8 1, label %AfterCoroSuspend414
    i8 2, label %AfterCoroSuspend418
  ], !prof !2014

bb.a:                                             ; preds = %bb.bd, %bb.be
  %indvars.iv.reload655 = phi i64 [ %indvars.iv.reload, %bb.bd ], [ %indvars.iv.reload655.pre, %bb.be ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload655, 1 ; 4 uses
  %i.a = load i32, ptr %.reload.addr698, align 8, !tbaa !72 ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp slt i64 %indvars.iv.next, %i.b
  br i1 %i.c, label %bb.b, label %._crit_edge, !llvm.loop !2003

bb.b:                                             ; preds = %bb.a
  store i64 %indvars.iv.next, ptr %indvars.iv.reload.addr, align 8
  %i.d = load ptr, ptr %.reload.addr692, align 16, !tbaa !153 ; 2 uses
  store ptr %i.d, ptr %.reload.addr657, align 16
  %i.e = getelementptr inbounds nuw [280 x i8], ptr %i.d, i64 %indvars.iv.next ; 6 uses
  %i.f = icmp sgt i32 %i.a, 1
  br i1 %i.f, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %.sroa.2.0..sroa_idx.i17.i606 = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %.sroa.2.0..sroa_idx.i16.i605 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #53
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %.reload.addr695.a, align 16, !tbaa !84, !noalias !2015
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  store i64 0, ptr %i.kz, align 16, !noalias !2016
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.l, align 16, !tbaa !156, !noalias !2016
  store ptr %i.k, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2016
  store i64 500, ptr %i.m, align 8, !tbaa !158, !noalias !2016
  store ptr @.str.7, ptr %.reload.addr687.a, align 16, !tbaa !71, !noalias !2016
  store i64 9, ptr %.sroa.2.0..sroa_idx.i16.i605, align 8, !tbaa !159, !noalias !2016
  store i32 0, ptr %i.j, align 16, !tbaa !162, !noalias !2016
  store ptr %.reload.addr679, ptr %i.i, align 8, !tbaa !164, !noalias !2016
  store i64 1, ptr %i.h, align 16, !tbaa !166, !noalias !2016
  store ptr %.reload.addr695.a, ptr %.sroa.2.0..sroa_idx.i17.i606, align 8, !tbaa !84, !noalias !2016
  store ptr null, ptr %i.g, align 16, !tbaa !73, !noalias !2016
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.7, i64 9, ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr687.a)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  %i.o = load i64, ptr %i.kz, align 16, !tbaa !167, !noalias !2018 ; 8 uses
  %i.p = icmp ult i64 %i.o, -9
  tail call void @llvm.assume(i1 %i.p)
  %i.q = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2018
  %i.r = icmp ult i64 %i.o, 23
  br i1 %i.r, label %bb.e, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.d
  %i.s = or i64 %i.o, 7                           ; 2 uses
  %i.t = icmp eq i64 %i.s, 23
  %i.u = add nuw i64 %i.s, 1
  %i.v = select i1 %i.t, i64 25, i64 %i.u         ; 2 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #57
          to label %.from..noexc.i unwind label %bb.g, !noalias !2016 ; 2 uses

.from..noexc.i:                                   ; preds = %.thread.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !84, !alias.scope !2018
  %i.z = or i64 %i.v, 1
  store i64 %i.z, ptr %1, align 8, !alias.scope !2018
  store i64 %i.o, ptr %i.x, align 8, !tbaa !84, !alias.scope !2018
  br label %.from.481

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i64 %i.o to i8
  %i.ab = shl nuw nsw i8 %i.aa, 1
  store i8 %i.ab, ptr %1, align 8, !alias.scope !2018
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.from.483, label %.from.481

.from.481:                                        ; preds = %bb.e, %.from..noexc.i
  %.017.i.i.i.i = phi ptr [ %i.w, %.from..noexc.i ], [ %i.ac, %bb.e ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.q, i64 %i.o, i1 false)
  br label %.from.483

.from.483:                                        ; preds = %bb.e, %.from.481
  %.018.i.i.i.i = phi ptr [ %.017.i.i.i.i, %.from.481 ], [ %i.ac, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.o
  store i8 0, ptr %i.ad, align 1, !tbaa !84
  %i.ae = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2016 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i102, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.from.483
  tail call void @free(ptr noundef %i.ae) #53, !noalias !2016
  br label %bb.i

bb.g:                                             ; preds = %.thread.i.i.i.i, %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = load ptr, ptr %.reload.addr679, align 8, !tbaa !157, !noalias !2016 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ag, %i.k
  br i1 %.not.i.i7.i, label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.ag) #53, !noalias !2016
  br label %.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

.from._ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

bb.i:                                             ; preds = %bb.f, %.from.483
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !84
  %i.am = load i64, ptr %i.ah, align 8
  %i.an = and i64 %i.am, -2
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #59
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105: ; preds = %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !168
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #53
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit105, %bb.b
  %.reload.addr630 = getelementptr inbounds nuw i8, ptr %0, i64 1612
  %.reload631 = load i32, ptr %.reload.addr630, align 4, !tbaa !170
  %.reload.addr613 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %.reload614 = load i32, ptr %.reload.addr613, align 8, !tbaa !170
  %.reload.addr609 = getelementptr inbounds nuw i8, ptr %0, i64 1604
  %.reload610 = load i32, ptr %.reload.addr609, align 4, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %2 = icmp eq i32 %.reload631, 4
  %.not604 = icmp eq i32 %.reload614, 0
  %3 = select i1 %.not604, i32 6, i32 7
  %i.ap = load i32, ptr %.reload.addr700.a, align 16, !tbaa !72
  %i.aq = sext i32 %i.ap to i64
  %.sroa.013.0.copyload = load i64, ptr %.reload.addr697.a, align 8, !tbaa !84
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.as = load i8, ptr %i.ar, align 8             ; 2 uses
  %i.at = trunc i8 %i.as to i1                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 257
  %i.ax = select i1 %i.at, ptr %i.av, ptr %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = lshr i8 %i.as, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = select i1 %i.at, i64 %i.az, i64 %i.bb
  store ptr %i.ax, ptr %.reload.addr694.a, align 8
  store i64 %i.bc, ptr %i.ao, align 16
  invoke void @_ZN3tev11ImageLoader23makeInterleavedChannelsEmbN7nanogui5ArrayIiLm2EEENS_12EPixelFormatES4_NSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEi(ptr dead_on_unwind nonnull writable sret(%"class.tev::Task.61") align 8 %.reload.addr679, i64 noundef %i.aq, i1 noundef zeroext %2, i64 %.sroa.013.0.copyload, i32 noundef 7, i32 noundef %3, ptr noundef nonnull byval(%"class.std::__1::basic_string_view") align 8 %.reload.addr694.a, i32 noundef %.reload610)
          to label %bb.l unwind label %.from.504

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !134
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load atomic i32, ptr %i.bf acquire, align 4
  %i.bh = icmp slt i32 %i.bg, 2
  br i1 %i.bh, label %bb.m, label %AfterCoroSave

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.bd, align 8, !tbaa !134
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = atomicrmw add ptr %i.bj, i32 -1 acq_rel, align 4
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.n, label %.thread.sink.split

bb.n:                                             ; preds = %bb.m
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !179
  %i.bp = and i32 %i.bo, 8
  %.not.i.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %.thread.sink.split

bb.o:                                             ; preds = %.noexc.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !180 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !181 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.br, %.from..lr.ph.i.i.i.i.i ], [ %i.cj, %.noexc2.i.i ] ; 2 uses
  %i.by = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !184 ; 2 uses
  %i.bz = load i8, ptr %i.bu, align 8             ; 2 uses
  %i.ca = trunc i8 %i.bz to i1                    ; 2 uses
  %i.cb = load ptr, ptr %i.bv, align 8
  %i.cc = select i1 %i.ca, ptr %i.cb, ptr %i.bw
  %i.cd = load i64, ptr %i.bx, align 8
  %i.ce = lshr i8 %i.bz, 1
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = select i1 %i.ca, i64 %i.cd, i64 %i.cf
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !125
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr %i.cc, i64 %i.cg, i32 noundef 8, ptr nonnull @.str.166, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, %i.bt
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.from..loopexit.split-lp.i.i:                     ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ck = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #60
  unreachable

AfterCoroSave:                                    ; preds = %bb.l
  store i8 0, ptr %index.addr, align 16
  %i.cl = tail call noundef zeroext i1 @_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE13await_suspendENS1_16coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr679, ptr nonnull %0) #53
  br i1 %i.cl, label %CoroEnd, label %AfterCoroSuspend

.from.504:                                        ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt3__110unique_ptrIvPFvPvEED2B8ne180100Ev.exit178

AfterCoroSuspend:                                 ; preds = %resume.entry, %AfterCoroSave
  %.pr = load ptr, ptr %.reload.addr679, align 8, !tbaa !186, !noalias !2019 ; 3 uses
  %.not.i108 = icmp eq ptr %.pr, null
  br i1 %.not.i108, label %.thread, label %bb.q

bb.q:                                             ; preds = %AfterCoroSuspend
  %i.cn = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %.body110.from.501, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.q, %bb.o, %.noexc.i.i, %bb.m
  store ptr null, ptr %.reload.addr679, align 8, !tbaa !186
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %AfterCoroSuspend
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !189, !noalias !2020 ; 7 uses
  store ptr null, ptr %i.cp, align 16, !tbaa !189, !noalias !2020
  invoke void @_ZNSt3__113__assoc_stateINS_6vectorIN3tev7ChannelENS_9allocatorIS3_EEEEE4moveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::vector.14") align 8 %.reload.addr688, ptr noundef nonnull align 8 dereferenceable(144) %i.cq)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = atomicrmw add ptr %i.cr, i64 -1 acq_rel, align 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.s, label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !125
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #53, !inline_history !6
  br label %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit

bb.t:                                             ; preds = %.thread
  %i.cx = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = atomicrmw add ptr %i.cy, i64 -1 acq_rel, align 8
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body110.from.498, label %.from..body110

.body110.from.498:                                ; preds = %bb.t
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !125
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #53, !inline_history !6
  br label %.from..body110

_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit: ; preds = %bb.s, %bb.r
  %.reload.addr667 = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 6 uses
  %.reload668 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170 ; 3 uses
  %indvars.iv.reload.addr640 = getelementptr inbounds nuw i8, ptr %0, i64 1576 ; 6 uses
  %indvars.iv.reload641 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170 ; 3 uses
  %i.de = getelementptr inbounds nuw [280 x i8], ptr %.reload668, i64 %indvars.iv.reload641 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !194 ; 5 uses
  %.not.i.i196 = icmp eq ptr %i.df, null
  br i1 %.not.i.i196, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZN3tev4TaskINSt3__16vectorINS_7ChannelENS1_9allocatorIS3_EEEEE12await_resumeEv.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !195 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.df, %i.dh
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i197

.lr.ph.i.i.i.i.i197:                              ; preds = %bb.u, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.di, %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i ], [ %i.dh, %bb.u ] ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -72 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !198 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i197
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = atomicrmw add ptr %i.dl, i64 -1 acq_rel, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.w, label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !125
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void %i.dq(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #53, !inline_history !7
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #53
  br label %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i

_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i.i.i.i197
  %i.dr = load i8, ptr %i.di, align 8
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.x, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

bb.x:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !84
  %i.dv = load i64, ptr %i.di, align 8
  %i.dw = and i64 %i.dv, -2
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dw) #59
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i: ; preds = %bb.x, %_ZNSt3__110shared_ptrIN3tev11PixelBufferEED2B8ne180100Ev.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i198 = icmp eq ptr %i.df, %i.di
  br i1 %.not.i.i.i.i.i198, label %_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i197

_ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.from._ZNSt3__16vectorIN3tev7ChannelENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3tev7ChannelEEEE7destroyB8ne180100IS3_vvEEvRS4_PT_.exit.i.i.i.i.i
  %.reload672 = load ptr, ptr %.reload.addr667, align 16, !tbaa !170 ; 2 uses
  %indvars.iv.reload645 = load i64, ptr %indvars.iv.reload.addr640, align 8, !tbaa !170 ; 2 uses
  %i.dx = getelementptr inbounds nuw [280 x i8], ptr %.reload672, i64 %indvars.iv.reload645
  %.pre.i.i = load ptr, ptr %i.dx, align 8, !tbaa !194
end_hunk_3

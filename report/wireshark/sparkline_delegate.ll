Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/sparkline_delegate?download=true
inline.NumInlined: 1014
inline.NumDeleted: 526
begin_hunk_0_@_ZNK17SparkLineDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex:bb.a
          to label %bb.af unwind label %bb.ar

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.fa = invoke noundef ptr @_ZN12QApplication5styleEv()
          to label %bb.ag unwind label %bb.as

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, ptr noundef align 8 dereferenceable_or_null(16) %i.fa)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 5, ptr nonnull @.str)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.fb = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.fb, ptr %15, align 16
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = load i64, ptr %i.fd, align 16
  store i64 %i.fe, ptr %i.fc, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ff = invoke noundef i64 @_ZNK7QString7indexOfERKS_xN2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 0, i32 noundef 1)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %.not296 = icmp eq i64 %i.ff, -1
  %i.fg = load ptr, ptr %15, align 16             ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i181, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.aj
  %i.fh = atomicrmw sub ptr %i.fg, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.fh, 1
  br i1 %.not.i.i, label %bb.ak, label %_ZN7QStringD2Ev.exit

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.fi = load ptr, ptr %15, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fi, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.aj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.fj = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i182 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i182, label %_ZN7QStringD2Ev.exit185, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183:   ; preds = %_ZN7QStringD2Ev.exit
  %i.fk = atomicrmw sub ptr %i.fj, i32 1 acq_rel, align 4
  %.not.i.i184 = icmp eq i32 %i.fk, 1
  br i1 %.not.i.i184, label %bb.al, label %_ZN7QStringD2Ev.exit185

bb.al:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183
  %i.fl = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fl, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit185

_ZN7QStringD2Ev.exit185:                          ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.not296, label %.critedge, label %bb.am

bb.am:                                            ; preds = %_ZN7QStringD2Ev.exit185
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.fn = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fm, i32 noundef 0, i32 noundef 6)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 4 dereferenceable(14) %i.fp, i32 noundef 1)
          to label %.noexc187 unwind label %bb.ar

.noexc187:                                        ; preds = %bb.an
  invoke void @_ZN8QPalette8setBrushENS_10ColorGroupENS_9ColorRoleERK6QBrush(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fm, i32 noundef 5, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN8QPalette8setColorENS_10ColorGroupENS_9ColorRoleERK6QColor.exit unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc187
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

_ZN8QPalette8setColorENS_10ColorGroupENS_9ColorRoleERK6QColor.exit: ; preds = %.noexc187
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge

bb.ap:                                            ; preds = %._crit_edge315
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.aq:                                            ; preds = %bb.ac
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ar:                                            ; preds = %bb.an, %bb.am, %bb.ae, %bb.ad
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.ag, %bb.af
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit195

bb.at:                                            ; preds = %bb.ah
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit191

bb.au:                                            ; preds = %bb.ai
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fx = load ptr, ptr %15, align 16             ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i188, label %_ZN7QStringD2Ev.exit191, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i189

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i189:   ; preds = %bb.au
  %i.fy = atomicrmw sub ptr %i.fx, i32 1 acq_rel, align 4
  %.not.i.i190 = icmp eq i32 %i.fy, 1
  br i1 %.not.i.i190, label %bb.av, label %_ZN7QStringD2Ev.exit191

bb.av:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i189
  %i.fz = load ptr, ptr %15, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fz, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit191

_ZN7QStringD2Ev.exit191:                          ; preds = %bb.av, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i189, %bb.au, %bb.at
  %.pn126 = phi { ptr, i32 } [ %i.fv, %bb.at ], [ %i.fw, %bb.au ], [ %i.fw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i189 ], [ %i.fw, %bb.av ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ga = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i192 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i192, label %_ZN7QStringD2Ev.exit195, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193:   ; preds = %_ZN7QStringD2Ev.exit191
  %i.gb = atomicrmw sub ptr %i.ga, i32 1 acq_rel, align 4
  %.not.i.i194 = icmp eq i32 %i.gb, 1
  br i1 %.not.i.i194, label %bb.aw, label %_ZN7QStringD2Ev.exit195

bb.aw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193
  %i.gc = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gc, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit195

_ZN7QStringD2Ev.exit195:                          ; preds = %bb.aw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193, %_ZN7QStringD2Ev.exit191, %bb.as
  %.pn126.pn = phi { ptr, i32 } [ %i.fu, %bb.as ], [ %.pn126, %_ZN7QStringD2Ev.exit191 ], [ %.pn126, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i193 ], [ %.pn126, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.body

.critedge:                                        ; preds = %_ZN8QPalette8setColorENS_10ColorGroupENS_9ColorRoleERK6QColor.exit, %_ZN7QStringD2Ev.exit185
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ge = load i32, ptr %i.gd, align 8            ; 3 uses
  %i.gf = and i32 %i.ge, 1                        ; 2 uses
  %.not = icmp eq i32 %i.gf, 0
  %i.gg = xor i32 %i.gf, 1
  %i.gh = and i32 %i.ge, 65536
  %.not.i196 = icmp eq i32 %i.gh, 0
  %spec.select154 = select i1 %.not.i196, i32 2, i32 %i.gg
  %.0116 = select i1 %.not, i32 1, i32 %spec.select154
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i32 0, ptr %16, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i16 -1, ptr %i.gi, align 4
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 6
  store i64 0, ptr %i.gj, align 2
  %i.gk = and i32 %i.ge, 40960
  %or.cond293 = icmp eq i32 %i.gk, 32768          ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 40
  %. = select i1 %or.cond293, i32 13, i32 6
  %i.gm = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.gl, i32 noundef %.0116, i32 noundef %.)
          to label %_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit199 unwind label %bb.bk

_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit199: ; preds = %.critedge
  %.pn297 = load ptr, ptr %i.gm, align 8
  %i.gn = getelementptr i8, ptr %.pn297, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %16, ptr noundef align 4 dereferenceable(14) %i.gn, i64 14, i1 false)
  invoke void @_ZN8QPainter13setRenderHintENS_10RenderHintEb(ptr noundef align 8 dereferenceable_or_null(8) %1, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.bk

bb.ax:                                            ; preds = %_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit199
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.gp = load i32, ptr %i.go, align 4
  %i.gq = load <2 x i32>, ptr %i.n, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = invoke noundef i32 @_ZNK12QFontMetrics6heightEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.l)
          to label %bb.ay unwind label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  %i.gu = add i32 %i.gs, 1
  %i.gv = add i32 %i.gp, %i.gt
  %i.gw = sub i32 %i.gu, %i.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.gx = sdiv i32 %i.gw, 2
  %i.gy = sdiv i32 %i.m, 8
  %i.gz = add <2 x i32> %i.gq, <i32 0, i32 1>
  %i.ha = insertelement <2 x i32> poison, i32 %i.gy, i64 0
  %i.hb = insertelement <2 x i32> %i.ha, i32 %i.gx, i64 1
  %i.hc = add <2 x i32> %i.gz, %i.hb
  %i.hd = sitofp <2 x i32> %i.hc to <2 x double>
  %i.he = fadd <2 x double> %i.hd, splat (double 5.000000e-01)
  store <2 x double> %i.he, ptr %4, align 16
  invoke void @_ZN8QPainter9translateERK7QPointF(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.az unwind label %bb.bk

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.bu, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  br i1 %or.cond293, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %16, i64 16, i1 false)
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.hi = invoke noundef ptr @_ZN12ThemeManager8instanceEv()
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.hj = invoke { i64, i64 } @_ZNK12ThemeManager5colorENS_10ThemeTokenE(ptr noundef align 8 dereferenceable_or_null(208) %i.hi, i32 noundef 44)
          to label %bb.be unwind label %bb.bl     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %.fca.0.extract18 = extractvalue { i64, i64 } %i.hj, 0
  %.fca.1.extract19 = extractvalue { i64, i64 } %i.hj, 1
  store i64 %.fca.0.extract18, ptr %17, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sroa.221.0.extract.trunc = trunc i64 %.fca.1.extract19 to i48
  store i48 %.sroa.221.0.extract.trunc, ptr %.sroa.221.0..sroa_idx, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, ptr noundef nonnull align 4 dereferenceable(14) %17)
          to label %bb.bg unwind label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN4QPen8setStyleEN2Qt8PenStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, i32 noundef 2)
          to label %bb.bh unwind label %bb.bn

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN8QPainter6setPenERK4QPen(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.hk = load ptr, ptr %12, align 8              ; 3 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i203, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i: ; preds = %bb.bi
  %i.hl = load atomic i32, ptr %i.hk monotonic, align 4
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i, label %.thread396

.thread396:                                       ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  br label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i, %bb.bi
  invoke void @_ZN17QArrayDataPointerI6QLineFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i
  %.pre336 = load ptr, ptr %12, align 8           ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not.i.i.i.i205 = icmp eq ptr %.pre336, null
  br i1 %.not.i.i.i.i205, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206: ; preds = %.thread396, %bb.bj
  %i.hr = phi ptr [ %i.ho, %.thread396 ], [ %i.hq, %bb.bj ] ; 3 uses
  %i.hs = phi ptr [ %i.hn, %.thread396 ], [ %i.hp, %bb.bj ]
  %i.ht = phi ptr [ %i.hk, %.thread396 ], [ %.pre336, %bb.bj ]
  %i.hu = load atomic i32, ptr %i.ht monotonic, align 4
  %i.hv = icmp sgt i32 %i.hu, 1
  br i1 %i.hv, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207, label %_ZN5QListI6QLineFE3endEv.exit

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207: ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206, %bb.bj
  %i.hw = phi ptr [ %i.hr, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206 ], [ %i.hq, %bb.bj ]
  %i.hx = phi ptr [ %i.hs, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206 ], [ %i.hp, %bb.bj ]
  invoke void @_ZN17QArrayDataPointerI6QLineFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207._ZN5QListI6QLineFE3endEv.exit_crit_edge unwind label %bb.bp

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207._ZN5QListI6QLineFE3endEv.exit_crit_edge: ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207
  %.pre337 = load ptr, ptr %i.hx, align 8
  br label %_ZN5QListI6QLineFE3endEv.exit

_ZN5QListI6QLineFE3endEv.exit:                    ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207._ZN5QListI6QLineFE3endEv.exit_crit_edge, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206
  %i.hy = phi ptr [ %i.hw, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207._ZN5QListI6QLineFE3endEv.exit_crit_edge ], [ %i.hr, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206 ] ; 2 uses
  %i.hz = phi ptr [ %.pre337, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207._ZN5QListI6QLineFE3endEv.exit_crit_edge ], [ %i.hr, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i206 ]
  %i.ia = load i64, ptr %i.hf, align 8
  %i.ib = getelementptr [32 x i8], ptr %i.hz, i64 %i.ia ; 2 uses
  %.not298318 = icmp eq ptr %i.hy, %i.ib
  br i1 %.not298318, label %._crit_edge321, label %.lr.ph320

._crit_edge321:                                   ; preds = %_ZN8QPainter8drawLineERK6QLineF.exit, %_ZN5QListI6QLineFE3endEv.exit
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bu

bb.bk:                                            ; preds = %.critedge, %bb.ay, %bb.cq, %bb.bu, %bb.ax, %_ZNK8QPalette5colorENS_10ColorGroupENS_9ColorRoleE.exit199
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.bl:                                            ; preds = %bb.bd, %bb.bc
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bf
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bh, %bb.bg
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bo:                                            ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i207
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.lr.ph320:                                        ; preds = %_ZN5QListI6QLineFE3endEv.exit, %_ZN8QPainter8drawLineERK6QLineF.exit
  %.sroa.0280.0319 = phi ptr [ %i.ii, %_ZN8QPainter8drawLineERK6QLineF.exit ], [ %i.hy, %_ZN5QListI6QLineFE3endEv.exit ] ; 2 uses
  invoke void @_ZN8QPainter9drawLinesEPK6QLineFi(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(32) %.sroa.0280.0319, i32 noundef 1)
          to label %_ZN8QPainter8drawLineERK6QLineF.exit unwind label %bb.bq

_ZN8QPainter8drawLineERK6QLineF.exit:             ; preds = %.lr.ph320
  %i.ii = getelementptr i8, ptr %.sroa.0280.0319, i64 32 ; 2 uses
  %.not298 = icmp eq ptr %i.ii, %i.ib
  br i1 %.not298, label %._crit_edge321, label %.lr.ph320

bb.bq:                                            ; preds = %.lr.ph320
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bo, %bb.bq, %bb.bp, %bb.bn
  %.pn130.pn.pn = phi { ptr, i32 } [ %i.if, %bb.bn ], [ %i.ig, %bb.bo ], [ %i.ij, %bb.bq ], [ %i.ih, %bb.bp ]
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #21
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bm
  %.pn130.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn, %bb.br ], [ %i.ie, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bl
  %.pn130.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn130.pn.pn.pn, %bb.bs ], [ %i.id, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.cz

bb.bu:                                            ; preds = %._crit_edge321, %bb.az
  invoke void @_ZN8QPainter6setPenERK6QColor(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef nonnull align 4 dereferenceable(14) %16)
          to label %bb.bv unwind label %bb.bk

bb.bv:                                            ; preds = %bb.bu
  %i.ik = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i.i.i.i210 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i210, label %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.i.i.i: ; preds = %bb.bv
  %i.il = load atomic i32, ptr %i.ik monotonic, align 4
  %i.im = icmp sgt i32 %i.il, 1
  br i1 %i.im, label %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.thread.i.i.i, label %.thread398

.thread398:                                       ; preds = %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8
  br label %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.i.i.i213

_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.i.i.i, %bb.bv
  invoke void @_ZN17QArrayDataPointerI9QPolygonFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.thread.i.i.i
  %.pre338 = load ptr, ptr %11, align 8           ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8            ; 2 uses
  %.not.i.i.i.i212 = icmp eq ptr %.pre338, null
  br i1 %.not.i.i.i.i212, label %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.thread.i.i.i214, label %_ZNK17QArrayDataPointerI9QPolygonFE11needsDetachEv.exit.i.i.i213

end_hunk_0

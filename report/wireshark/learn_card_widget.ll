Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/learn_card_widget?download=true
inline.NumInlined: 955
inline.NumDeleted: 390
begin_hunk_0_@_ZN15LearnCardWidget22loadLinksFromRessourceEv:_ZN17QArrayDataPointerIDsED2Ev.exit
          cleanup
  br label %bb.hc

bb.ac:                                            ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

bb.ad:                                            ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %9) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn52 = phi { ptr, i32 } [ %i.as, %bb.ae ], [ %i.ar, %bb.ad ]
  %i.at = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i136, label %_ZN17QArrayDataPointerIDsED2Ev.exit143, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137:   ; preds = %bb.af
  %i.au = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %.not.i.i138 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i138, label %bb.ag, label %_ZN17QArrayDataPointerIDsED2Ev.exit143

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137
  %i.av = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit143

_ZN17QArrayDataPointerIDsED2Ev.exit143:           ; preds = %bb.ag, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i137, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ha

bb.ah:                                            ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit147

bb.ai:                                            ; preds = %_ZNKR7QString6toUtf8Ev.exit125
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ay = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i144, label %_ZN10QByteArrayD2Ev.exit147, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i145

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i145:    ; preds = %bb.ai
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4
  %.not.i.i146 = icmp eq i32 %i.az, 1
  br i1 %.not.i.i146, label %bb.aj, label %_ZN10QByteArrayD2Ev.exit147

bb.aj:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i145
  %i.ba = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ba, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit147

_ZN10QByteArrayD2Ev.exit147:                      ; preds = %bb.aj, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i145, %bb.ai, %bb.ah
  %.pn101 = phi { ptr, i32 } [ %i.aw, %bb.ah ], [ %i.ax, %bb.ai ], [ %i.ax, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i145 ], [ %i.ax, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ha

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit124
  %i.bb = getelementptr i8, ptr %0, i64 48        ; 4 uses
  invoke void @_ZN5QListIN15LearnCardWidget8LinkTypeEE5clearEv(ptr noundef align 8 dereferenceable_or_null(24) %i.bb)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr null, ptr %15, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.5, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 5, ptr %i.bd, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %14, ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK10QJsonValue7toArrayEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonArray) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(24) %14)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %14) #21
  %i.be = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i148, label %_ZN17QArrayDataPointerIDsED2Ev.exit155, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i149

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i149:   ; preds = %bb.an
  %i.bf = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %.not.i.i150 = icmp eq i32 %i.bf, 1
  br i1 %.not.i.i150, label %bb.ao, label %_ZN17QArrayDataPointerIDsED2Ev.exit155

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i149
  %i.bg = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit155

_ZN17QArrayDataPointerIDsED2Ev.exit155:           ; preds = %bb.ao, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i149, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.bh = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, i64 noundef 0)
          to label %bb.ap unwind label %bb.dr     ; 0 uses

bb.ap:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit155
  %i.bi = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13, i64 noundef 0)
          to label %.noexc unwind label %bb.dr    ; 0 uses

.noexc:                                           ; preds = %bb.ap
  %i.bj = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13)
          to label %bb.aq unwind label %bb.dr

bb.aq:                                            ; preds = %.noexc
  %i.bk = shl i64 %i.bj, 1                        ; 2 uses
  %.not.a = icmp eq i64 %i.bk, 0
  br i1 %.not.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aq
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 96 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.co = getelementptr i8, ptr %0, i64 64
  br label %bb.aw

._crit_edge:                                      ; preds = %_ZN15LearnCardWidget8LinkTypeD2Ev.exit, %bb.aq
  %i.cp = getelementptr i8, ptr %0, i64 72        ; 4 uses
  invoke void @_ZN5QListIN15LearnCardWidget10ButtonTypeEE5clearEv(ptr noundef align 8 dereferenceable_or_null(24) %i.cp)
          to label %bb.dl unwind label %bb.dr

bb.ar:                                            ; preds = %bb.ak
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.as:                                            ; preds = %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.am
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %14) #21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn54 = phi { ptr, i32 } [ %i.cs, %bb.at ], [ %i.cr, %bb.as ]
  %i.ct = load ptr, ptr %15, align 8              ; 2 uses
  %.not.i.i.i159 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i159, label %_ZN17QArrayDataPointerIDsED2Ev.exit166, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i160

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i160:   ; preds = %bb.au
  %i.cu = atomicrmw add ptr %i.ct, i32 -1 acq_rel, align 4
  %.not.i.i161 = icmp eq i32 %i.cu, 1
  br i1 %.not.i.i161, label %bb.av, label %_ZN17QArrayDataPointerIDsED2Ev.exit166

bb.av:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i160
  %i.cv = load ptr, ptr %15, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cv, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit166

_ZN17QArrayDataPointerIDsED2Ev.exit166:           ; preds = %bb.av, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i160, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.gz

bb.aw:                                            ; preds = %.lr.ph, %_ZN15LearnCardWidget8LinkTypeD2Ev.exit
  %.sroa.6694.0716 = phi i64 [ 0, %.lr.ph ], [ %i.hm, %_ZN15LearnCardWidget8LinkTypeD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store ptr %13, ptr %17, align 8
  store i64 %.sroa.6694.0716, ptr %i.bl, align 8
  invoke void @_ZNK13QJsonValueRef7toValueEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %16, ptr noundef nonnull align 8 dereferenceable_or_null(16) %17)
          to label %_ZNK13QJsonValueRefcv10QJsonValueEv.exit unwind label %bb.bw

_ZNK13QJsonValueRefcv10QJsonValueEv.exit:         ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %18, ptr noundef nonnull align 8 dereferenceable_or_null(24) %16)
          to label %bb.ax unwind label %bb.bx

bb.ax:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %19, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  store ptr null, ptr %22, align 8
  store ptr @.str.6, ptr %i.bm, align 8
  store i64 3, ptr %i.bn, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %21, ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.ay unwind label %bb.by

bb.ay:                                            ; preds = %bb.ax
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %20, ptr noundef nonnull align 8 dereferenceable_or_null(24) %21)
          to label %bb.az unwind label %bb.bz

bb.az:                                            ; preds = %bb.ay
  %i.cw = load <2 x ptr>, ptr %20, align 16
  %i.cx = load <2 x ptr>, ptr %19, align 16
  %i.cy = load ptr, ptr %19, align 16             ; 2 uses
  store <2 x ptr> %i.cw, ptr %19, align 16
  store <2 x ptr> %i.cx, ptr %20, align 16
  %i.cz = load i64, ptr %i.bo, align 16
  %i.da = load i64, ptr %i.bp, align 16
  store i64 %i.da, ptr %i.bo, align 16
  store i64 %i.cz, ptr %i.bp, align 16
  %.not.i.i.i170 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i170, label %_ZN7QStringD2Ev.exit173, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171:   ; preds = %bb.az
  %i.db = atomicrmw add ptr %i.cy, i32 -1 acq_rel, align 4
  %.not.i.i172 = icmp eq i32 %i.db, 1
  br i1 %.not.i.i172, label %bb.ba, label %_ZN7QStringD2Ev.exit173

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171
  %i.dc = load ptr, ptr %20, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dc, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit173

_ZN7QStringD2Ev.exit173:                          ; preds = %bb.az, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171, %bb.ba
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %21) #21
  %i.dd = load ptr, ptr %22, align 8              ; 2 uses
  %.not.i.i.i174 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i174, label %_ZN17QArrayDataPointerIDsED2Ev.exit181, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175:   ; preds = %_ZN7QStringD2Ev.exit173
  %i.de = atomicrmw add ptr %i.dd, i32 -1 acq_rel, align 4
  %.not.i.i176 = icmp eq i32 %i.de, 1
  br i1 %.not.i.i176, label %bb.bb, label %_ZN17QArrayDataPointerIDsED2Ev.exit181

bb.bb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175
  %i.df = load ptr, ptr %22, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.df, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit181

_ZN17QArrayDataPointerIDsED2Ev.exit181:           ; preds = %bb.bb, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i175, %_ZN7QStringD2Ev.exit173
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  store ptr null, ptr %25, align 8
  store ptr @.str.7, ptr %i.bq, align 8
  store i64 5, ptr %i.br, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %24, ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.bc unwind label %bb.cc

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit181
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %23, ptr noundef nonnull align 8 dereferenceable_or_null(24) %24)
          to label %bb.bd unwind label %bb.cd

bb.bd:                                            ; preds = %bb.bc
  %i.dg = load <2 x ptr>, ptr %23, align 16
  %i.dh = load <2 x ptr>, ptr %i.bs, align 8
  %i.di = load ptr, ptr %i.bs, align 8            ; 2 uses
  store <2 x ptr> %i.dg, ptr %i.bs, align 8
  store <2 x ptr> %i.dh, ptr %23, align 16
  %i.dj = load i64, ptr %i.bt, align 8
  %i.dk = load i64, ptr %i.bu, align 16
  store i64 %i.dk, ptr %i.bt, align 8
  store i64 %i.dj, ptr %i.bu, align 16
  %.not.i.i.i182 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i182, label %_ZN7QStringD2Ev.exit185, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183:   ; preds = %bb.bd
  %i.dl = atomicrmw add ptr %i.di, i32 -1 acq_rel, align 4
  %.not.i.i184 = icmp eq i32 %i.dl, 1
  br i1 %.not.i.i184, label %bb.be, label %_ZN7QStringD2Ev.exit185

bb.be:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183
  %i.dm = load ptr, ptr %23, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dm, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit185

_ZN7QStringD2Ev.exit185:                          ; preds = %bb.bd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183, %bb.be
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %24) #21
  %i.dn = load ptr, ptr %25, align 8              ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i186, label %_ZN17QArrayDataPointerIDsED2Ev.exit193, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187:   ; preds = %_ZN7QStringD2Ev.exit185
  %i.do = atomicrmw add ptr %i.dn, i32 -1 acq_rel, align 4
  %.not.i.i188 = icmp eq i32 %i.do, 1
  br i1 %.not.i.i188, label %bb.bf, label %_ZN17QArrayDataPointerIDsED2Ev.exit193

bb.bf:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187
  %i.dp = load ptr, ptr %25, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dp, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit193

_ZN17QArrayDataPointerIDsED2Ev.exit193:           ; preds = %bb.bf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i187, %_ZN7QStringD2Ev.exit185
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store ptr null, ptr %28, align 8
  store ptr @.str.8, ptr %i.bv, align 8
  store i64 11, ptr %i.bw, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %27, ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %bb.bg unwind label %bb.cg

bb.bg:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit193
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %26, ptr noundef nonnull align 8 dereferenceable_or_null(24) %27)
          to label %bb.bh unwind label %bb.ch

bb.bh:                                            ; preds = %bb.bg
  %i.dq = load <2 x ptr>, ptr %26, align 16
  %i.dr = load <2 x ptr>, ptr %i.bx, align 16
  %i.ds = load ptr, ptr %i.bx, align 16           ; 2 uses
  store <2 x ptr> %i.dq, ptr %i.bx, align 16
  store <2 x ptr> %i.dr, ptr %26, align 16
  %i.dt = load i64, ptr %i.by, align 16
  %i.du = load i64, ptr %i.bz, align 16
  store i64 %i.du, ptr %i.by, align 16
  store i64 %i.dt, ptr %i.bz, align 16
  %.not.i.i.i194 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i194, label %_ZN7QStringD2Ev.exit197, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195:   ; preds = %bb.bh
  %i.dv = atomicrmw add ptr %i.ds, i32 -1 acq_rel, align 4
  %.not.i.i196 = icmp eq i32 %i.dv, 1
  br i1 %.not.i.i196, label %bb.bi, label %_ZN7QStringD2Ev.exit197

bb.bi:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195
  %i.dw = load ptr, ptr %26, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dw, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit197

_ZN7QStringD2Ev.exit197:                          ; preds = %bb.bh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i195, %bb.bi
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %27) #21
  %i.dx = load ptr, ptr %28, align 8              ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i198, label %_ZN17QArrayDataPointerIDsED2Ev.exit205, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199:   ; preds = %_ZN7QStringD2Ev.exit197
  %i.dy = atomicrmw add ptr %i.dx, i32 -1 acq_rel, align 4
  %.not.i.i200 = icmp eq i32 %i.dy, 1
  br i1 %.not.i.i200, label %bb.bj, label %_ZN17QArrayDataPointerIDsED2Ev.exit205

bb.bj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199
  %i.dz = load ptr, ptr %28, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dz, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit205

_ZN17QArrayDataPointerIDsED2Ev.exit205:           ; preds = %bb.bj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i199, %_ZN7QStringD2Ev.exit197
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  store ptr null, ptr %31, align 8
  store ptr @.str.9, ptr %i.ca, align 8
  store i64 7, ptr %i.cb, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %30, ptr noundef nonnull align 8 dereferenceable_or_null(8) %18, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.bk unwind label %bb.ck

bb.bk:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit205
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %29, ptr noundef nonnull align 8 dereferenceable_or_null(24) %30)
          to label %bb.bl unwind label %bb.cl

bb.bl:                                            ; preds = %bb.bk
  %i.ea = load <2 x ptr>, ptr %29, align 16
  %i.eb = load <2 x ptr>, ptr %i.cc, align 8
end_hunk_0
begin_hunk_1_@_ZN15LearnCardWidget22loadLinksFromRessourceEv:_ZN17QArrayDataPointerIDsED2Ev.exit

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn88 = phi { ptr, i32 } [ %i.gb, %bb.cr ], [ %i.ga, %bb.cq ]
  %i.gc = load ptr, ptr %35, align 8              ; 2 uses
  %.not.i.i.i287 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i287, label %_ZN17QArrayDataPointerIDsED2Ev.exit294, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288:   ; preds = %bb.cs
  %i.gd = atomicrmw add ptr %i.gc, i32 -1 acq_rel, align 4
  %.not.i.i289 = icmp eq i32 %i.gd, 1
  br i1 %.not.i.i289, label %bb.ct, label %_ZN17QArrayDataPointerIDsED2Ev.exit294

bb.ct:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288
  %i.ge = load ptr, ptr %35, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ge, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit294

_ZN17QArrayDataPointerIDsED2Ev.exit294:           ; preds = %bb.ct, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %_ZN7QStringD2Ev.exit317

bb.cu:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit233
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %bb.db

bb.cv:                                            ; preds = %_ZN7QStringD2Ev.exit246
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  invoke void @_ZN7QString14toLower_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %37, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %33)
          to label %_ZNKR7QString7toLowerEv.exit296 unwind label %bb.cy

_ZNKR7QString7toLowerEv.exit296:                  ; preds = %bb.cv
  %i.gg = load i64, ptr %i.cm, align 8
  %i.gh = icmp eq i64 %i.gg, 3
  br i1 %i.gh, label %bb.cw, label %_ZN17QArrayDataPointerIDsED2Ev.exit305

bb.cw:                                            ; preds = %_ZNKR7QString7toLowerEv.exit296
  %i.gi = load ptr, ptr %i.cn, align 8
  %i.gj = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 3, ptr %i.gi, i64 3, ptr @.str.12, i32 noundef 1) #24
  %i.gk = icmp eq i32 %i.gj, 0
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit305

_ZN17QArrayDataPointerIDsED2Ev.exit305:           ; preds = %_ZNKR7QString7toLowerEv.exit296, %bb.cw
  %i.gl = phi i1 [ false, %_ZNKR7QString7toLowerEv.exit296 ], [ %i.gk, %bb.cw ]
  %i.gm = load ptr, ptr %37, align 8              ; 2 uses
  %.not.i.i.i306 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i306, label %_ZN7QStringD2Ev.exit309, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i307

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i307:   ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit305
  %i.gn = atomicrmw add ptr %i.gm, i32 -1 acq_rel, align 4
  %.not.i.i308 = icmp eq i32 %i.gn, 1
  br i1 %.not.i.i308, label %bb.cx, label %_ZN7QStringD2Ev.exit309

bb.cx:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i307
  %i.go = load ptr, ptr %37, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.go, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit309

_ZN7QStringD2Ev.exit309:                          ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit305, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i307, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br i1 %i.gl, label %.sink.split, label %bb.cz

bb.cy:                                            ; preds = %bb.cv
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %bb.db

.sink.split:                                      ; preds = %_ZN7QStringD2Ev.exit309, %_ZN7QStringD2Ev.exit246
  %.sink = phi i32 [ 1, %_ZN7QStringD2Ev.exit246 ], [ 2, %_ZN7QStringD2Ev.exit309 ]
  store i32 %.sink, ptr %i.cf, align 16
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split, %_ZN7QStringD2Ev.exit309
  %i.gq = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i.i.i310 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i310, label %_ZN7QStringD2Ev.exit313, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i311

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i311:   ; preds = %bb.cz
  %i.gr = atomicrmw add ptr %i.gq, i32 -1 acq_rel, align 4
  %.not.i.i312 = icmp eq i32 %i.gr, 1
  br i1 %.not.i.i312, label %bb.da, label %_ZN7QStringD2Ev.exit313

bb.da:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i311
  %i.gs = load ptr, ptr %33, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gs, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit313

_ZN7QStringD2Ev.exit313:                          ; preds = %bb.cz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i311, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.dd

bb.db:                                            ; preds = %bb.cy, %bb.cu
  %.pn90 = phi { ptr, i32 } [ %i.gp, %bb.cy ], [ %i.gf, %bb.cu ] ; 3 uses
  %i.gt = load ptr, ptr %33, align 8              ; 2 uses
  %.not.i.i.i314 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i314, label %_ZN7QStringD2Ev.exit317, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i315

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i315:   ; preds = %bb.db
  %i.gu = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %.not.i.i316 = icmp eq i32 %i.gu, 1
  br i1 %.not.i.i316, label %bb.dc, label %_ZN7QStringD2Ev.exit317

bb.dc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i315
  %i.gv = load ptr, ptr %33, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gv, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit317

_ZN7QStringD2Ev.exit317:                          ; preds = %bb.dc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i315, %bb.db, %_ZN17QArrayDataPointerIDsED2Ev.exit294
  %.pn90.pn = phi { ptr, i32 } [ %.pn88, %_ZN17QArrayDataPointerIDsED2Ev.exit294 ], [ %.pn90, %bb.db ], [ %.pn90, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i315 ], [ %.pn90, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.dj

bb.dd:                                            ; preds = %_ZN7QStringD2Ev.exit313, %_ZN17QArrayDataPointerIDsED2Ev.exit225
  %i.gw = load i64, ptr %i.co, align 8
  invoke void @_ZN9QtPrivate16QGenericArrayOpsIN15LearnCardWidget8LinkTypeEE7emplaceIJRKS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.bb, i64 noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(100) %19)
          to label %.noexc318 unwind label %bb.di

.noexc318:                                        ; preds = %bb.dd
  %i.gx = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc318
  %i.gy = load atomic i32, ptr %i.gx monotonic, align 4
  %i.gz = icmp sgt i32 %i.gy, 1
  br i1 %i.gz, label %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIN15LearnCardWidget8LinkTypeEE6appendERKS1_.exit

_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.i.i.i.i.i, %.noexc318
  invoke void @_ZN17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.bb, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIN15LearnCardWidget8LinkTypeEE6appendERKS1_.exit unwind label %bb.di

_ZN5QListIN15LearnCardWidget8LinkTypeEE6appendERKS1_.exit: ; preds = %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.thread.i.i.i.i.i
  %i.ha = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %_ZN5QListIN15LearnCardWidget8LinkTypeEE6appendERKS1_.exit
  %i.hb = atomicrmw add ptr %i.ha, i32 -1 acq_rel, align 4
  %.not.i.i.i320 = icmp eq i32 %i.hb, 1
  br i1 %.not.i.i.i320, label %bb.de, label %_ZN7QStringD2Ev.exit.i

bb.de:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.hc = load ptr, ptr %i.cc, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hc, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.de, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %_ZN5QListIN15LearnCardWidget8LinkTypeEE6appendERKS1_.exit
  %i.hd = load ptr, ptr %i.bx, align 16           ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i1.i, label %_ZN7QStringD2Ev.exit4.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i:   ; preds = %_ZN7QStringD2Ev.exit.i
  %i.he = atomicrmw add ptr %i.hd, i32 -1 acq_rel, align 4
  %.not.i.i3.i = icmp eq i32 %i.he, 1
  br i1 %.not.i.i3.i, label %bb.df, label %_ZN7QStringD2Ev.exit4.i

bb.df:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i
  %i.hf = load ptr, ptr %i.bx, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hf, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit4.i

_ZN7QStringD2Ev.exit4.i:                          ; preds = %bb.df, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i, %_ZN7QStringD2Ev.exit.i
  %i.hg = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i5.i, label %_ZN7QStringD2Ev.exit8.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i:   ; preds = %_ZN7QStringD2Ev.exit4.i
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 acq_rel, align 4
  %.not.i.i7.i = icmp eq i32 %i.hh, 1
  br i1 %.not.i.i7.i, label %bb.dg, label %_ZN7QStringD2Ev.exit8.i

bb.dg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i
  %i.hi = load ptr, ptr %i.bs, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hi, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit8.i

_ZN7QStringD2Ev.exit8.i:                          ; preds = %bb.dg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i, %_ZN7QStringD2Ev.exit4.i
  %i.hj = load ptr, ptr %19, align 16             ; 2 uses
  %.not.i.i.i9.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i9.i, label %_ZN15LearnCardWidget8LinkTypeD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10.i:  ; preds = %_ZN7QStringD2Ev.exit8.i
  %i.hk = atomicrmw add ptr %i.hj, i32 -1 acq_rel, align 4
  %.not.i.i11.i = icmp eq i32 %i.hk, 1
  br i1 %.not.i.i11.i, label %bb.dh, label %_ZN15LearnCardWidget8LinkTypeD2Ev.exit

bb.dh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10.i
  %i.hl = load ptr, ptr %19, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hl, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN15LearnCardWidget8LinkTypeD2Ev.exit

_ZN15LearnCardWidget8LinkTypeD2Ev.exit:           ; preds = %_ZN7QStringD2Ev.exit8.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i10.i, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.hm = add i64 %.sroa.6694.0716, 2             ; 2 uses
  %.not721 = icmp eq i64 %i.bk, %i.hm
  br i1 %.not721, label %._crit_edge, label %bb.aw

bb.di:                                            ; preds = %_ZNK17QArrayDataPointerIN15LearnCardWidget8LinkTypeEE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.dd
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZN7QStringD2Ev.exit317, %_ZN17QArrayDataPointerIDsED2Ev.exit286, %_ZN17QArrayDataPointerIDsED2Ev.exit278, %_ZN17QArrayDataPointerIDsED2Ev.exit270, %_ZN17QArrayDataPointerIDsED2Ev.exit262, %_ZN17QArrayDataPointerIDsED2Ev.exit254
  %.pn93 = phi { ptr, i32 } [ %i.hn, %bb.di ], [ %.pn90.pn, %_ZN7QStringD2Ev.exit317 ], [ %i.fw, %_ZN17QArrayDataPointerIDsED2Ev.exit286 ], [ %.pn86, %_ZN17QArrayDataPointerIDsED2Ev.exit278 ], [ %.pn84, %_ZN17QArrayDataPointerIDsED2Ev.exit270 ], [ %.pn82, %_ZN17QArrayDataPointerIDsED2Ev.exit262 ], [ %.pn80, %_ZN17QArrayDataPointerIDsED2Ev.exit254 ]
  call void @_ZN15LearnCardWidget8LinkTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable_or_null(100) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %18) #21
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.bx
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %bb.dj ], [ %i.fb, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.gy

bb.dl:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  store ptr null, ptr %40, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr @.str.13, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i64 7, ptr %i.hp, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %39, ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.dm unwind label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZNK10QJsonValue7toArrayEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonArray) align 8 %38, ptr noundef nonnull align 8 dereferenceable_or_null(24) %39)
          to label %bb.dn unwind label %bb.dt

bb.dn:                                            ; preds = %bb.dm
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %39) #21
  %i.hq = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i321 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i321, label %_ZN17QArrayDataPointerIDsED2Ev.exit328, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322:   ; preds = %bb.dn
  %i.hr = atomicrmw add ptr %i.hq, i32 -1 acq_rel, align 4
  %.not.i.i323 = icmp eq i32 %i.hr, 1
  br i1 %.not.i.i323, label %bb.do, label %_ZN17QArrayDataPointerIDsED2Ev.exit328

bb.do:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322
  %i.hs = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hs, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit328

_ZN17QArrayDataPointerIDsED2Ev.exit328:           ; preds = %bb.do, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i322, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.ht = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %38, i64 noundef 0)
          to label %bb.dp unwind label %bb.dw     ; 0 uses

bb.dp:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit328
  %i.hu = invoke noundef zeroext i1 @_ZN10QJsonArray6detachEx(ptr noundef nonnull align 8 dereferenceable_or_null(8) %38, i64 noundef 0)
          to label %.noexc335 unwind label %bb.dw ; 0 uses

.noexc335:                                        ; preds = %bb.dp
  %i.hv = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %38)
          to label %bb.dq unwind label %bb.dw

bb.dq:                                            ; preds = %.noexc335
  %i.hw = shl i64 %i.hv, 1                        ; 2 uses
  %.not722 = icmp eq i64 %i.hw, 0
  br i1 %.not722, label %._crit_edge720, label %.lr.ph719

.lr.ph719:                                        ; preds = %bb.dq
  %i.hx = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %44, i64 76
  %i.hz = getelementptr inbounds nuw i8, ptr %44, i64 78
  %i.ia = getelementptr inbounds nuw i8, ptr %44, i64 88 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %44, i64 92
  %i.ic = getelementptr inbounds nuw i8, ptr %44, i64 94
  %i.id = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.if = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.ij = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %44, i64 64 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %44, i64 72
  %.sroa.5595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 80
  %i.iw = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.iy = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %57, i64 16
  %.sroa.5586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 96
  %i.ja = getelementptr inbounds nuw i8, ptr %44, i64 104 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.jg = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.jj = getelementptr i8, ptr %0, i64 88
  br label %bb.dx

._crit_edge720:                                   ; preds = %_ZN15LearnCardWidget10ButtonTypeD2Ev.exit, %bb.dq
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.gu

bb.dr:                                            ; preds = %bb.ap, %.noexc, %_ZN17QArrayDataPointerIDsED2Ev.exit155, %._crit_edge
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ds:                                            ; preds = %bb.dl
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.dm
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %39) #21
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn56 = phi { ptr, i32 } [ %i.jm, %bb.dt ], [ %i.jl, %bb.ds ]
  %i.jn = load ptr, ptr %40, align 8              ; 2 uses
  %.not.i.i.i340 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i340, label %_ZN17QArrayDataPointerIDsED2Ev.exit347, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i341

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i341:   ; preds = %bb.du
  %i.jo = atomicrmw add ptr %i.jn, i32 -1 acq_rel, align 4
  %.not.i.i342 = icmp eq i32 %i.jo, 1
  br i1 %.not.i.i342, label %bb.dv, label %_ZN17QArrayDataPointerIDsED2Ev.exit347

bb.dv:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i341
  %i.jp = load ptr, ptr %40, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jp, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit347

_ZN17QArrayDataPointerIDsED2Ev.exit347:           ; preds = %bb.dv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i341, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.gx

bb.dw:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit328, %.noexc335, %bb.dp
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.gt

bb.dx:                                            ; preds = %.lr.ph719, %_ZN15LearnCardWidget10ButtonTypeD2Ev.exit
  %.sroa.6621.0717 = phi i64 [ 0, %.lr.ph719 ], [ %i.ot, %_ZN15LearnCardWidget10ButtonTypeD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  store ptr %38, ptr %42, align 8
  store i64 %.sroa.6621.0717, ptr %i.hx, align 8
  invoke void @_ZNK13QJsonValueRef7toValueEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %41, ptr noundef nonnull align 8 dereferenceable_or_null(16) %42)
          to label %_ZNK13QJsonValueRefcv10QJsonValueEv.exit354 unwind label %bb.fb

_ZNK13QJsonValueRefcv10QJsonValueEv.exit354:      ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %43, ptr noundef nonnull align 8 dereferenceable_or_null(24) %41)
          to label %bb.dy unwind label %bb.fc

bb.dy:                                            ; preds = %_ZNK13QJsonValueRefcv10QJsonValueEv.exit354
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(108) %44, i8 0, i64 76, i1 false)
  store i16 -1, ptr %i.hy, align 4
  store i64 0, ptr %i.hz, align 2
  store i32 0, ptr %i.ia, align 8
  store i16 -1, ptr %i.ib, align 4
  store i64 0, ptr %i.ic, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  store ptr null, ptr %47, align 8
  store ptr @.str.6, ptr %i.id, align 8
  store i64 3, ptr %i.ie, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %46, ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.dz unwind label %bb.fd

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %45, ptr noundef nonnull align 8 dereferenceable_or_null(24) %46)
          to label %bb.ea unwind label %bb.fe

bb.ea:                                            ; preds = %bb.dz
  %i.jr = load <2 x ptr>, ptr %45, align 16
  %i.js = load <2 x ptr>, ptr %44, align 16
  %i.jt = load ptr, ptr %44, align 16             ; 2 uses
  store <2 x ptr> %i.jr, ptr %44, align 16
  store <2 x ptr> %i.js, ptr %45, align 16
  %i.ju = load i64, ptr %i.if, align 16
  %i.jv = load i64, ptr %i.ig, align 16
  store i64 %i.jv, ptr %i.if, align 16
  store i64 %i.ju, ptr %i.ig, align 16
  %.not.i.i.i355 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i355, label %_ZN7QStringD2Ev.exit358, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356:   ; preds = %bb.ea
  %i.jw = atomicrmw add ptr %i.jt, i32 -1 acq_rel, align 4
  %.not.i.i357 = icmp eq i32 %i.jw, 1
  br i1 %.not.i.i357, label %bb.eb, label %_ZN7QStringD2Ev.exit358

bb.eb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356
  %i.jx = load ptr, ptr %45, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jx, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit358

_ZN7QStringD2Ev.exit358:                          ; preds = %bb.ea, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i356, %bb.eb
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %46) #21
  %i.jy = load ptr, ptr %47, align 8              ; 2 uses
  %.not.i.i.i359 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i359, label %_ZN17QArrayDataPointerIDsED2Ev.exit366, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360:   ; preds = %_ZN7QStringD2Ev.exit358
  %i.jz = atomicrmw add ptr %i.jy, i32 -1 acq_rel, align 4
  %.not.i.i361 = icmp eq i32 %i.jz, 1
  br i1 %.not.i.i361, label %bb.ec, label %_ZN17QArrayDataPointerIDsED2Ev.exit366

bb.ec:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360
  %i.ka = load ptr, ptr %47, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ka, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit366

_ZN17QArrayDataPointerIDsED2Ev.exit366:           ; preds = %bb.ec, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i360, %_ZN7QStringD2Ev.exit358
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  store ptr null, ptr %50, align 8
  store ptr @.str.7, ptr %i.ih, align 8
  store i64 5, ptr %i.ii, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %49, ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.ed unwind label %bb.fh

bb.ed:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit366
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %48, ptr noundef nonnull align 8 dereferenceable_or_null(24) %49)
          to label %bb.ee unwind label %bb.fi

bb.ee:                                            ; preds = %bb.ed
  %i.kb = load <2 x ptr>, ptr %48, align 16
  %i.kc = load <2 x ptr>, ptr %i.ij, align 8
  %i.kd = load ptr, ptr %i.ij, align 8            ; 2 uses
  store <2 x ptr> %i.kb, ptr %i.ij, align 8
  store <2 x ptr> %i.kc, ptr %48, align 16
  %i.ke = load i64, ptr %i.ik, align 8
  %i.kf = load i64, ptr %i.il, align 16
  store i64 %i.kf, ptr %i.ik, align 8
  store i64 %i.ke, ptr %i.il, align 16
  %.not.i.i.i367 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i367, label %_ZN7QStringD2Ev.exit370, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368:   ; preds = %bb.ee
  %i.kg = atomicrmw add ptr %i.kd, i32 -1 acq_rel, align 4
  %.not.i.i369 = icmp eq i32 %i.kg, 1
  br i1 %.not.i.i369, label %bb.ef, label %_ZN7QStringD2Ev.exit370

bb.ef:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368
  %i.kh = load ptr, ptr %48, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kh, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit370

_ZN7QStringD2Ev.exit370:                          ; preds = %bb.ee, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i368, %bb.ef
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %49) #21
  %i.ki = load ptr, ptr %50, align 8              ; 2 uses
  %.not.i.i.i371 = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i371, label %_ZN17QArrayDataPointerIDsED2Ev.exit378, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i372

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i372:   ; preds = %_ZN7QStringD2Ev.exit370
  %i.kj = atomicrmw add ptr %i.ki, i32 -1 acq_rel, align 4
  %.not.i.i373 = icmp eq i32 %i.kj, 1
  br i1 %.not.i.i373, label %bb.eg, label %_ZN17QArrayDataPointerIDsED2Ev.exit378

bb.eg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i372
  %i.kk = load ptr, ptr %50, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kk, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit378

_ZN17QArrayDataPointerIDsED2Ev.exit378:           ; preds = %bb.eg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i372, %_ZN7QStringD2Ev.exit370
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  store ptr null, ptr %53, align 8
  store ptr @.str.9, ptr %i.im, align 8
  store i64 7, ptr %i.in, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %52, ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %53)
          to label %bb.eh unwind label %bb.fl

bb.eh:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit378
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %51, ptr noundef nonnull align 8 dereferenceable_or_null(24) %52)
          to label %bb.ei unwind label %bb.fm

bb.ei:                                            ; preds = %bb.eh
  %i.kl = load <2 x ptr>, ptr %51, align 16
  %i.km = load <2 x ptr>, ptr %i.io, align 16
  %i.kn = load ptr, ptr %i.io, align 16           ; 2 uses
  store <2 x ptr> %i.kl, ptr %i.io, align 16
  store <2 x ptr> %i.km, ptr %51, align 16
  %i.ko = load i64, ptr %i.ip, align 16
  %i.kp = load i64, ptr %i.iq, align 16
  store i64 %i.kp, ptr %i.ip, align 16
  store i64 %i.ko, ptr %i.iq, align 16
  %.not.i.i.i379 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i379, label %_ZN7QStringD2Ev.exit382, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380:   ; preds = %bb.ei
  %i.kq = atomicrmw add ptr %i.kn, i32 -1 acq_rel, align 4
  %.not.i.i381 = icmp eq i32 %i.kq, 1
  br i1 %.not.i.i381, label %bb.ej, label %_ZN7QStringD2Ev.exit382

bb.ej:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380
  %i.kr = load ptr, ptr %51, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.kr, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit382

_ZN7QStringD2Ev.exit382:                          ; preds = %bb.ei, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i380, %bb.ej
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %52) #21
  %i.ks = load ptr, ptr %53, align 8              ; 2 uses
  %.not.i.i.i383 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i383, label %_ZN17QArrayDataPointerIDsED2Ev.exit390, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384:   ; preds = %_ZN7QStringD2Ev.exit382
  %i.kt = atomicrmw add ptr %i.ks, i32 -1 acq_rel, align 4
  %.not.i.i385 = icmp eq i32 %i.kt, 1
  br i1 %.not.i.i385, label %bb.ek, label %_ZN17QArrayDataPointerIDsED2Ev.exit390

bb.ek:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384
  %i.ku = load ptr, ptr %53, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ku, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit390

_ZN17QArrayDataPointerIDsED2Ev.exit390:           ; preds = %bb.ek, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i384, %_ZN7QStringD2Ev.exit382
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #21
  store ptr null, ptr %56, align 8
  store ptr @.str.14, ptr %i.ir, align 8
  store i64 5, ptr %i.is, align 8
  invoke void @_ZNK11QJsonObject5valueERK7QString(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %55, ptr noundef nonnull align 8 dereferenceable_or_null(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %bb.el unwind label %bb.fp

bb.el:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit390
  invoke void @_ZNK10QJsonValue8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %54, ptr noundef nonnull align 8 dereferenceable_or_null(24) %55)
end_hunk_1
begin_hunk_2_@_ZN15LearnCardWidget22loadLinksFromRessourceEv:_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit497:           ; preds = %bb.fy, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i491, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  br label %bb.gr

bb.fz:                                            ; preds = %bb.ev
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ga:                                            ; preds = %bb.ew
  %i.nl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %62) #21
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.pn68 = phi { ptr, i32 } [ %i.nl, %bb.ga ], [ %i.nk, %bb.fz ]
  %i.nm = load ptr, ptr %63, align 8              ; 2 uses
  %.not.i.i.i498 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i498, label %_ZN17QArrayDataPointerIDsED2Ev.exit505, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i499

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i499:   ; preds = %bb.gb
  %i.nn = atomicrmw add ptr %i.nm, i32 -1 acq_rel, align 4
  %.not.i.i500 = icmp eq i32 %i.nn, 1
  br i1 %.not.i.i500, label %bb.gc, label %_ZN17QArrayDataPointerIDsED2Ev.exit505

bb.gc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i499
  %i.no = load ptr, ptr %63, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.no, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit505

_ZN17QArrayDataPointerIDsED2Ev.exit505:           ; preds = %bb.gc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i499, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  br label %_ZN7QStringD2Ev.exit528

bb.gd:                                            ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit434
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  br label %bb.gk

bb.ge:                                            ; preds = %_ZN7QStringD2Ev.exit449
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  invoke void @_ZN7QString14toLower_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %65, ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %61)
          to label %_ZNKR7QString7toLowerEv.exit507 unwind label %bb.gh

_ZNKR7QString7toLowerEv.exit507:                  ; preds = %bb.ge
  %i.nq = load i64, ptr %i.jh, align 8
  %i.nr = icmp eq i64 %i.nq, 3
  br i1 %i.nr, label %bb.gf, label %_ZN17QArrayDataPointerIDsED2Ev.exit516

bb.gf:                                            ; preds = %_ZNKR7QString7toLowerEv.exit507
  %i.ns = load ptr, ptr %i.ji, align 8
  %i.nt = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 3, ptr %i.ns, i64 3, ptr @.str.12, i32 noundef 1) #24
  %i.nu = icmp eq i32 %i.nt, 0
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit516

_ZN17QArrayDataPointerIDsED2Ev.exit516:           ; preds = %_ZNKR7QString7toLowerEv.exit507, %bb.gf
  %i.nv = phi i1 [ false, %_ZNKR7QString7toLowerEv.exit507 ], [ %i.nu, %bb.gf ]
  %i.nw = load ptr, ptr %65, align 8              ; 2 uses
  %.not.i.i.i517 = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i517, label %_ZN7QStringD2Ev.exit520, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i518

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i518:   ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit516
  %i.nx = atomicrmw add ptr %i.nw, i32 -1 acq_rel, align 4
  %.not.i.i519 = icmp eq i32 %i.nx, 1
  br i1 %.not.i.i519, label %bb.gg, label %_ZN7QStringD2Ev.exit520

bb.gg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i518
  %i.ny = load ptr, ptr %65, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ny, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit520

_ZN7QStringD2Ev.exit520:                          ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit516, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i518, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br i1 %i.nv, label %.sink.split791, label %bb.gi

bb.gh:                                            ; preds = %bb.ge
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  br label %bb.gk

.sink.split791:                                   ; preds = %_ZN7QStringD2Ev.exit520, %_ZN7QStringD2Ev.exit449
  %.sink792 = phi i32 [ 1, %_ZN7QStringD2Ev.exit449 ], [ 2, %_ZN7QStringD2Ev.exit520 ]
  store i32 %.sink792, ptr %i.ja, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %.sink.split791, %_ZN7QStringD2Ev.exit520
  %i.oa = load ptr, ptr %61, align 8              ; 2 uses
  %.not.i.i.i521 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i521, label %_ZN7QStringD2Ev.exit524, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i522

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i522:   ; preds = %bb.gi
  %i.ob = atomicrmw add ptr %i.oa, i32 -1 acq_rel, align 4
  %.not.i.i523 = icmp eq i32 %i.ob, 1
  br i1 %.not.i.i523, label %bb.gj, label %_ZN7QStringD2Ev.exit524

bb.gj:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i522
  %i.oc = load ptr, ptr %61, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.oc, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit524

_ZN7QStringD2Ev.exit524:                          ; preds = %bb.gi, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i522, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.gm

bb.gk:                                            ; preds = %bb.gh, %bb.gd
  %.pn70 = phi { ptr, i32 } [ %i.nz, %bb.gh ], [ %i.np, %bb.gd ] ; 3 uses
  %i.od = load ptr, ptr %61, align 8              ; 2 uses
  %.not.i.i.i525 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i525, label %_ZN7QStringD2Ev.exit528, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i526

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i526:   ; preds = %bb.gk
  %i.oe = atomicrmw add ptr %i.od, i32 -1 acq_rel, align 4
  %.not.i.i527 = icmp eq i32 %i.oe, 1
  br i1 %.not.i.i527, label %bb.gl, label %_ZN7QStringD2Ev.exit528

bb.gl:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i526
  %i.of = load ptr, ptr %61, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.of, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit528

_ZN7QStringD2Ev.exit528:                          ; preds = %bb.gl, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i526, %bb.gk, %_ZN17QArrayDataPointerIDsED2Ev.exit505
  %.pn70.pn = phi { ptr, i32 } [ %.pn68, %_ZN17QArrayDataPointerIDsED2Ev.exit505 ], [ %.pn70, %bb.gk ], [ %.pn70, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i526 ], [ %.pn70, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.gr

bb.gm:                                            ; preds = %_ZN7QStringD2Ev.exit524, %_ZN17QArrayDataPointerIDsED2Ev.exit426
  %i.og = load i64, ptr %i.jj, align 8
  invoke void @_ZN9QtPrivate16QGenericArrayOpsIN15LearnCardWidget10ButtonTypeEE7emplaceIJRKS2_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.cp, i64 noundef %i.og, ptr noundef nonnull align 8 dereferenceable(108) %44)
          to label %.noexc530 unwind label %bb.gq

.noexc530:                                        ; preds = %bb.gm
  %i.oh = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.i.i.i.i.i529 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i.i.i.i529, label %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc530
  %i.oi = load atomic i32, ptr %i.oh monotonic, align 4
  %i.oj = icmp sgt i32 %i.oi, 1
  br i1 %i.oj, label %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIN15LearnCardWidget10ButtonTypeEE6appendERKS1_.exit

_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.i.i.i.i.i, %.noexc530
  invoke void @_ZN17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef align 8 dereferenceable_or_null(24) %i.cp, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIN15LearnCardWidget10ButtonTypeEE6appendERKS1_.exit unwind label %bb.gq

_ZN5QListIN15LearnCardWidget10ButtonTypeEE6appendERKS1_.exit: ; preds = %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.thread.i.i.i.i.i
  %i.ok = load ptr, ptr %i.io, align 16           ; 2 uses
  %.not.i.i.i.i532 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i.i532, label %_ZN7QStringD2Ev.exit.i535, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i533

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i533: ; preds = %_ZN5QListIN15LearnCardWidget10ButtonTypeEE6appendERKS1_.exit
  %i.ol = atomicrmw add ptr %i.ok, i32 -1 acq_rel, align 4
  %.not.i.i.i534 = icmp eq i32 %i.ol, 1
  br i1 %.not.i.i.i534, label %bb.gn, label %_ZN7QStringD2Ev.exit.i535

bb.gn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i533
  %i.om = load ptr, ptr %i.io, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.om, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit.i535

_ZN7QStringD2Ev.exit.i535:                        ; preds = %bb.gn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i533, %_ZN5QListIN15LearnCardWidget10ButtonTypeEE6appendERKS1_.exit
  %i.on = load ptr, ptr %i.ij, align 8            ; 2 uses
  %.not.i.i.i1.i536 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i1.i536, label %_ZN7QStringD2Ev.exit4.i539, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i537

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i537: ; preds = %_ZN7QStringD2Ev.exit.i535
  %i.oo = atomicrmw add ptr %i.on, i32 -1 acq_rel, align 4
  %.not.i.i3.i538 = icmp eq i32 %i.oo, 1
  br i1 %.not.i.i3.i538, label %bb.go, label %_ZN7QStringD2Ev.exit4.i539

bb.go:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i537
  %i.op = load ptr, ptr %i.ij, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.op, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit4.i539

_ZN7QStringD2Ev.exit4.i539:                       ; preds = %bb.go, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i2.i537, %_ZN7QStringD2Ev.exit.i535
  %i.oq = load ptr, ptr %44, align 16             ; 2 uses
  %.not.i.i.i5.i540 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i5.i540, label %_ZN15LearnCardWidget10ButtonTypeD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i541

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i541: ; preds = %_ZN7QStringD2Ev.exit4.i539
  %i.or = atomicrmw add ptr %i.oq, i32 -1 acq_rel, align 4
  %.not.i.i7.i542 = icmp eq i32 %i.or, 1
  br i1 %.not.i.i7.i542, label %bb.gp, label %_ZN15LearnCardWidget10ButtonTypeD2Ev.exit

bb.gp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i541
  %i.os = load ptr, ptr %44, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.os, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN15LearnCardWidget10ButtonTypeD2Ev.exit

_ZN15LearnCardWidget10ButtonTypeD2Ev.exit:        ; preds = %_ZN7QStringD2Ev.exit4.i539, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i6.i541, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  %i.ot = add i64 %.sroa.6621.0717, 2             ; 2 uses
  %.not723 = icmp eq i64 %i.hw, %i.ot
  br i1 %.not723, label %._crit_edge720, label %bb.dx

bb.gq:                                            ; preds = %_ZNK17QArrayDataPointerIN15LearnCardWidget10ButtonTypeEE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.gm
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %_ZN7QStringD2Ev.exit528, %_ZN17QArrayDataPointerIDsED2Ev.exit497, %_ZN17QArrayDataPointerIDsED2Ev.exit489, %_ZN17QArrayDataPointerIDsED2Ev.exit481, %_ZN17QArrayDataPointerIDsED2Ev.exit473, %_ZN17QArrayDataPointerIDsED2Ev.exit465, %_ZN17QArrayDataPointerIDsED2Ev.exit457
  %.pn73 = phi { ptr, i32 } [ %i.ou, %bb.gq ], [ %.pn70.pn, %_ZN7QStringD2Ev.exit528 ], [ %i.ng, %_ZN17QArrayDataPointerIDsED2Ev.exit497 ], [ %.pn66, %_ZN17QArrayDataPointerIDsED2Ev.exit489 ], [ %.pn64, %_ZN17QArrayDataPointerIDsED2Ev.exit481 ], [ %.pn62, %_ZN17QArrayDataPointerIDsED2Ev.exit473 ], [ %.pn60, %_ZN17QArrayDataPointerIDsED2Ev.exit465 ], [ %.pn58, %_ZN17QArrayDataPointerIDsED2Ev.exit457 ]
  call void @_ZN15LearnCardWidget10ButtonTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable_or_null(108) %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %43) #21
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.fc
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %bb.gr ], [ %i.mg, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.gt

bb.gt:                                            ; preds = %bb.dw, %bb.gs, %bb.fb
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mf, %bb.fb ], [ %i.jq, %bb.dw ], [ %.pn73.pn, %bb.gs ]
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %38) #21
  br label %bb.gx

bb.gu:                                            ; preds = %._crit_edge720, %_ZN10QByteArrayD2Ev.exit131
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN13QJsonDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.gv

bb.gv:                                            ; preds = %bb.b, %bb.gu, %_ZN10QByteArrayD2Ev.exit
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ov = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i544 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i544, label %_ZN7QStringD2Ev.exit547, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i545

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i545:   ; preds = %bb.gv
  %i.ow = atomicrmw add ptr %i.ov, i32 -1 acq_rel, align 4
  %.not.i.i546 = icmp eq i32 %i.ow, 1
  br i1 %.not.i.i546, label %bb.gw, label %_ZN7QStringD2Ev.exit547

bb.gw:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i545
  %i.ox = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ox, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit547

_ZN7QStringD2Ev.exit547:                          ; preds = %bb.gv, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i545, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.gx:                                            ; preds = %bb.gt, %_ZN17QArrayDataPointerIDsED2Ev.exit347
  %.pn73.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn.pn, %bb.gt ], [ %.pn56, %_ZN17QArrayDataPointerIDsED2Ev.exit347 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.gy

bb.gy:                                            ; preds = %bb.bw, %bb.dk, %bb.gx, %bb.dr
  %.pn93.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jk, %bb.dr ], [ %.pn73.pn.pn.pn.pn.pn, %bb.gx ], [ %i.fa, %bb.bw ], [ %.pn93.pn, %bb.dk ]
  call void @_ZN10QJsonArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %13) #21
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %_ZN17QArrayDataPointerIDsED2Ev.exit166
  %.pn93.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn.pn.pn, %bb.gy ], [ %.pn54, %_ZN17QArrayDataPointerIDsED2Ev.exit166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.ar, %_ZN10QByteArrayD2Ev.exit147, %_ZN17QArrayDataPointerIDsED2Ev.exit143
  %.pn101.pn = phi { ptr, i32 } [ %.pn101, %_ZN10QByteArrayD2Ev.exit147 ], [ %.pn93.pn.pn.pn.pn.pn.pn, %bb.gz ], [ %i.cq, %bb.ar ], [ %.pn52, %_ZN17QArrayDataPointerIDsED2Ev.exit143 ]
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #21
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.ac
  %.pn101.pn.pn = phi { ptr, i32 } [ %.pn101.pn, %bb.ha ], [ %i.aq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ab
  %.pn101.pn.pn.pn = phi { ptr, i32 } [ %.pn101.pn.pn, %bb.hb ], [ %i.ap, %bb.ab ]
  call void @_ZN13QJsonDocumentD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #21
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %_ZN10QByteArrayD2Ev.exit135
  %.pn101.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn101.pn.pn.pn, %bb.hc ], [ %.pn50, %_ZN10QByteArrayD2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_ZN10QByteArrayD2Ev.exit114, %bb.d
  %.pn101.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn101.pn.pn.pn.pn, %bb.hd ], [ %.pn, %_ZN10QByteArrayD2Ev.exit114 ], [ %i.e, %bb.d ]
  call void @_ZN5QFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable_or_null(16) %2) #21
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.c
  %.pn101.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn101.pn.pn.pn.pn.pn, %bb.he ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.oy = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i548 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i548, label %_ZN7QStringD2Ev.exit551, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i549

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i549:   ; preds = %bb.hf
  %i.oz = atomicrmw add ptr %i.oy, i32 -1 acq_rel, align 4
  %.not.i.i550 = icmp eq i32 %i.oz, 1
  br i1 %.not.i.i550, label %bb.hg, label %_ZN7QStringD2Ev.exit551

bb.hg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i549
  %i.pa = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.pa, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit551

_ZN7QStringD2Ev.exit551:                          ; preds = %bb.hf, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i549, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn101.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN15LearnCardWidget10setupLinksEv(ptr noundef align 8 dereferenceable_or_null(97) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %1 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %2 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %3 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %4 = alloca %class.QList.14, align 8            ; 11 uses
  %5 = alloca %class.QString, align 8             ; 11 uses
  %6 = alloca %class.QString, align 8             ; 11 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr @_ZNK7QWidget6layoutEv(ptr noundef align 8 dereferenceable_or_null(40) %i.e) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.16, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 9, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %4, i8 0, i64 24, i1 false), !alias.scope !32
  invoke void @_Z23qt_qFindChildren_helperPK7QObjectRK7QStringRK11QMetaObjectP5QListIPvE6QFlagsIN2Qt15FindChildOptionEE(ptr noundef align 8 dereferenceable_or_null(16) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef align 8 dereferenceable(56) @_ZN6QLabel16staticMetaObjectE, ptr noundef nonnull align 8 %4, i32 0)
          to label %_ZNK7QObject12findChildrenIP6QLabelEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i121, label %.body, label %_ZN17QArrayDataPointerIP6QLabelE5derefEv.exit.i.i122

_ZN17QArrayDataPointerIP6QLabelE5derefEv.exit.i.i122: ; preds = %bb.c
  %i.n = atomicrmw add ptr %i.m, i32 -1 acq_rel, align 4
  %.not.i.i123 = icmp eq i32 %i.n, 1
  br i1 %.not.i.i123, label %bb.d, label %.body

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIP6QLabelE5derefEv.exit.i.i122
  %i.o = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.o, i64 noundef 8, i64 noundef 8) #21
  br label %.body

_ZNK7QObject12findChildrenIP6QLabelEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %.idx.i = shl i64 %i.s, 3                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 %.idx.i
  %.not4.i.i = icmp eq i64 %.idx.i, 0
  br i1 %.not4.i.i, label %_Z10qDeleteAllI5QListIP6QLabelEEvRKT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7QObject12findChildrenIP6QLabelEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE.exit, %bb.f
  %.sroa.0.05.i.i = phi ptr [ %i.z, %bb.f ], [ %i.q, %_ZNK7QObject12findChildrenIP6QLabelEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE.exit ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.0.05.i.i, align 8   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.w = load ptr, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable_or_null(40) %i.u) #21, !inline_history !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.z = getelementptr i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i, label %_Z10qDeleteAllI5QListIP6QLabelEEvRKT_.exit, label %.lr.ph.i.i, !llvm.loop !19

_Z10qDeleteAllI5QListIP6QLabelEEvRKT_.exit:       ; preds = %bb.f, %_ZNK7QObject12findChildrenIP6QLabelEE5QListIT_ERK7QString6QFlagsIN2Qt15FindChildOptionEE.exit
  %i.aa = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
end_hunk_2

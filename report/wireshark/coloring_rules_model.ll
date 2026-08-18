inline.NumInlined: 820
inline.NumDeleted: 361
begin_hunk_0_@_ZN18ColoringRulesModel12dropMimeDataEPK9QMimeDataN2Qt10DropActionEiiRK11QModelIndex:bb.a

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  invoke void @_ZNK13QJsonDocument6objectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %26, ptr noundef nonnull align 8 dereferenceable_or_null(8) %24)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %21, i64 13, ptr nonnull @.str.11)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.an = load <2 x ptr>, ptr %21, align 16
  store <2 x ptr> %i.an, ptr %27, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.aq = load i64, ptr %i.ap, align 16
  store i64 %i.aq, ptr %i.ao, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  %i.ar = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %.critedge unwind label %bb.y

.critedge:                                        ; preds = %bb.q
  %i.as = load ptr, ptr %27, align 16             ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i155, label %.critedge148, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %.critedge
  %i.at = atomicrmw sub ptr %i.as, i32 1 acq_rel, align 4
  %.not.i.i156 = icmp eq i32 %i.at, 1
  br i1 %.not.i.i156, label %bb.r, label %.critedge148

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.au = load ptr, ptr %27, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.au, i64 noundef 2, i64 noundef 8) #21
  br label %.critedge148

.critedge148:                                     ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br i1 %i.ar, label %bb.ab, label %.critedge148.thread

bb.s:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN10QByteArrayD2Ev.exit160

bb.t:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ax = load ptr, ptr %25, align 8              ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i157, label %_ZN10QByteArrayD2Ev.exit160, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i158

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i158:    ; preds = %bb.t
  %i.ay = atomicrmw sub ptr %i.ax, i32 1 acq_rel, align 4
  %.not.i.i159 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i159, label %bb.u, label %_ZN10QByteArrayD2Ev.exit160

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i158
  %i.az = load ptr, ptr %25, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 1, i64 noundef 8) #21
  br label %_ZN10QByteArrayD2Ev.exit160

_ZN10QByteArrayD2Ev.exit160:                      ; preds = %bb.u, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i158, %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.aw, %bb.t ], [ %i.aw, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i158 ], [ %i.aw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.fh

bb.v:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.w:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.x:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit164

bb.y:                                             ; preds = %bb.q
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.be = load ptr, ptr %27, align 16             ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i161, label %_ZN7QStringD2Ev.exit164, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i162

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i162:   ; preds = %bb.y
  %i.bf = atomicrmw sub ptr %i.be, i32 1 acq_rel, align 4
  %.not.i.i163 = icmp eq i32 %i.bf, 1
  br i1 %.not.i.i163, label %bb.z, label %_ZN7QStringD2Ev.exit164

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i162
  %i.bg = load ptr, ptr %27, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bg, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit164

_ZN7QStringD2Ev.exit164:                          ; preds = %bb.z, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i162, %bb.y, %bb.x
  %.pn103 = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %i.bd, %bb.y ], [ %i.bd, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i162 ], [ %i.bd, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %26) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %_ZN7QStringD2Ev.exit164
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %_ZN7QStringD2Ev.exit164 ], [ %i.bb, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  br label %bb.fg

bb.ab:                                            ; preds = %.critedge148
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  invoke void @_ZNK13QJsonDocument6objectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %30, ptr noundef nonnull align 8 dereferenceable_or_null(8) %24)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %20, i64 13, ptr nonnull @.str.11)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load <2 x ptr>, ptr %20, align 16
  store <2 x ptr> %i.bh, ptr %31, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bk = load i64, ptr %i.bj, align 16
  store i64 %i.bk, ptr %i.bi, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  %i.bl = invoke { ptr, i64 } @_ZN11QJsonObjectixERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %30, ptr noundef nonnull align 8 dereferenceable(24) %31)
          to label %bb.ae unwind label %bb.al     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  store ptr %i.bm, ptr %29, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bo = extractvalue { ptr, i64 } %i.bl, 1
  store i64 %i.bo, ptr %i.bn, align 8
  invoke void @_ZNK13QJsonValueRef7toArrayEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonArray) align 8 %28, ptr noundef nonnull align 8 dereferenceable_or_null(16) %29)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.bp = load ptr, ptr %31, align 16             ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i166, label %_ZN7QStringD2Ev.exit169, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167:   ; preds = %bb.af
  %i.bq = atomicrmw sub ptr %i.bp, i32 1 acq_rel, align 4
  %.not.i.i168 = icmp eq i32 %i.bq, 1
  br i1 %.not.i.i168, label %bb.ag, label %_ZN7QStringD2Ev.exit169

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167
  %i.br = load ptr, ptr %31, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.br, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit169

_ZN7QStringD2Ev.exit169:                          ; preds = %bb.af, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i167, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.bs = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 6
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 6
  %.fca.1.gep.i.i223 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %47, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %50, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.cr = getelementptr i8, ptr %0, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.di, %_ZN7QStringD2Ev.exit169
  %.093 = phi i32 [ 0, %_ZN7QStringD2Ev.exit169 ], [ %i.is, %bb.di ] ; 2 uses
  %i.ct = sext i32 %.093 to i64                   ; 2 uses
  %i.cu = invoke noundef i64 @_ZNK10QJsonArray4sizeEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %28)
          to label %_ZNK10QJsonArray5countEv.exit unwind label %bb.ao

_ZNK10QJsonArray5countEv.exit:                    ; preds = %bb.ah
  %i.cv = icmp sgt i64 %i.cu, %i.ct
  br i1 %i.cv, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZNK10QJsonArray5countEv.exit
  %i.cw = load i64, ptr %i.cs, align 8
  %i.cx = trunc i64 %i.cw to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #21
  store i32 -1, ptr %54, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %54, i64 4
  store i32 -1, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %54, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.da = load ptr, ptr %0, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 248
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef align 8 dereferenceable_or_null(88) %0, i32 noundef %.049, i32 noundef %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %54)
          to label %bb.eu unwind label %bb.ev     ; 0 uses

bb.aj:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit173

bb.al:                                            ; preds = %bb.ae, %bb.ad
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dh = load ptr, ptr %31, align 16             ; 2 uses
  %.not.i.i.i170 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i170, label %_ZN7QStringD2Ev.exit173, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171:   ; preds = %bb.al
  %i.di = atomicrmw sub ptr %i.dh, i32 1 acq_rel, align 4
  %.not.i.i172 = icmp eq i32 %i.di, 1
  br i1 %.not.i.i172, label %bb.am, label %_ZN7QStringD2Ev.exit173

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171
  %i.dj = load ptr, ptr %31, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dj, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit173

_ZN7QStringD2Ev.exit173:                          ; preds = %bb.am, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171, %bb.al, %bb.ak
  %.pn106 = phi { ptr, i32 } [ %i.df, %bb.ak ], [ %i.dg, %bb.al ], [ %i.dg, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i171 ], [ %i.dg, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %30) #21
  br label %bb.an

bb.an:                                            ; preds = %_ZN7QStringD2Ev.exit173, %bb.aj
  %.pn106.pn = phi { ptr, i32 } [ %.pn106, %_ZN7QStringD2Ev.exit173 ], [ %i.de, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.fe

bb.ao:                                            ; preds = %bb.ah
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.ap:                                            ; preds = %_ZNK10QJsonArray5countEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  invoke void @_ZNK10QJsonArray2atEx(ptr dead_on_unwind nonnull writable sret(%class.QJsonValue) align 8 %33, ptr noundef nonnull align 8 dereferenceable_or_null(8) %28, i64 noundef %i.ct)
          to label %bb.aq unwind label %bb.bd

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZNK10QJsonValue8toObjectEv(ptr dead_on_unwind nonnull writable sret(%class.QJsonObject) align 8 %32, ptr noundef nonnull align 8 dereferenceable_or_null(24) %33)
          to label %bb.ar unwind label %bb.be

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %19, i64 10, ptr nonnull @.str.9)
          to label %bb.as unwind label %bb.bg

bb.as:                                            ; preds = %bb.ar
  %i.dl = load <2 x ptr>, ptr %19, align 16
  store <2 x ptr> %i.dl, ptr %34, align 16
  %i.dm = load i64, ptr %i.bt, align 16
  store i64 %i.dm, ptr %i.bs, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  %i.dn = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.at unwind label %bb.bh

bb.at:                                            ; preds = %bb.as
  br i1 %i.dn, label %bb.au, label %.critedge152

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %18, i64 10, ptr nonnull @.str.10)
          to label %bb.av unwind label %bb.bi

bb.av:                                            ; preds = %bb.au
  %i.do = load <2 x ptr>, ptr %18, align 16
  store <2 x ptr> %i.do, ptr %35, align 16
  %i.dp = load i64, ptr %i.bv, align 16
  store i64 %i.dp, ptr %i.bu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.dq = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %bb.aw unwind label %bb.bj

bb.aw:                                            ; preds = %bb.av
  br i1 %i.dq, label %bb.ax, label %.critedge150.thread327

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %17, i64 6, ptr nonnull @.str.8)
          to label %bb.ay unwind label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  %i.dr = load <2 x ptr>, ptr %17, align 16
  store <2 x ptr> %i.dr, ptr %36, align 16
  %i.ds = load i64, ptr %i.bx, align 16
  store i64 %i.ds, ptr %i.bw, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.dt = invoke noundef zeroext i1 @_ZNK11QJsonObject8containsERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %bb.az unwind label %bb.bl

bb.az:                                            ; preds = %bb.ay
  %i.du = xor i1 %i.dt, true
  %i.dv = load ptr, ptr %36, align 16             ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i177, label %.critedge150.thread, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i178

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i178:   ; preds = %bb.az
  %i.dw = atomicrmw sub ptr %i.dv, i32 1 acq_rel, align 4
  %.not.i.i179 = icmp eq i32 %i.dw, 1
  br i1 %.not.i.i179, label %bb.ba, label %.critedge150.thread

bb.ba:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i178
  %i.dx = load ptr, ptr %36, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dx, i64 noundef 2, i64 noundef 8) #21
  br label %.critedge150.thread

.critedge150.thread:                              ; preds = %bb.ba, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i178, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %.critedge150.thread327

.critedge150.thread327:                           ; preds = %bb.aw, %.critedge150.thread
  %i.dy = phi i1 [ %i.du, %.critedge150.thread ], [ true, %bb.aw ]
  %i.dz = load ptr, ptr %35, align 16             ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i181, label %_ZN7QStringD2Ev.exit184, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i182

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i182:   ; preds = %.critedge150.thread327
  %i.ea = atomicrmw sub ptr %i.dz, i32 1 acq_rel, align 4
  %.not.i.i183 = icmp eq i32 %i.ea, 1
  br i1 %.not.i.i183, label %bb.bb, label %_ZN7QStringD2Ev.exit184

bb.bb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i182
  %i.eb = load ptr, ptr %35, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eb, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit184

_ZN7QStringD2Ev.exit184:                          ; preds = %.critedge150.thread327, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i182, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %.critedge152

.critedge152:                                     ; preds = %bb.at, %_ZN7QStringD2Ev.exit184
  %i.ec = phi i1 [ %i.dy, %_ZN7QStringD2Ev.exit184 ], [ true, %bb.at ]
  %i.ed = load ptr, ptr %34, align 16             ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i185, label %_ZN7QStringD2Ev.exit188, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i186

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i186:   ; preds = %.critedge152
  %i.ee = atomicrmw sub ptr %i.ed, i32 1 acq_rel, align 4
  %.not.i.i187 = icmp eq i32 %i.ee, 1
  br i1 %.not.i.i187, label %bb.bc, label %_ZN7QStringD2Ev.exit188

bb.bc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i186
  %i.ef = load ptr, ptr %34, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ef, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit188

_ZN7QStringD2Ev.exit188:                          ; preds = %.critedge152, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i186, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br i1 %i.ec, label %bb.di, label %bb.br

bb.bd:                                            ; preds = %bb.ap
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.aq
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10QJsonValueD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %33) #21
end_hunk_0
begin_hunk_1_@_ZN18ColoringRulesModel12dropMimeDataEPK9QMimeDataN2Qt10DropActionEiiRK11QModelIndex:bb.a
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit200

bb.bh:                                            ; preds = %bb.as
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bi:                                            ; preds = %bb.au
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit196

bb.bj:                                            ; preds = %bb.av
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.ax
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit192

bb.bl:                                            ; preds = %bb.ay
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.eo = load ptr, ptr %36, align 16             ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i189, label %_ZN7QStringD2Ev.exit192, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i190

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i190:   ; preds = %bb.bl
  %i.ep = atomicrmw sub ptr %i.eo, i32 1 acq_rel, align 4
  %.not.i.i191 = icmp eq i32 %i.ep, 1
  br i1 %.not.i.i191, label %bb.bm, label %_ZN7QStringD2Ev.exit192

bb.bm:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i190
  %i.eq = load ptr, ptr %36, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.eq, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit192

_ZN7QStringD2Ev.exit192:                          ; preds = %bb.bm, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i190, %bb.bl, %bb.bk
  %.pn113 = phi { ptr, i32 } [ %i.em, %bb.bk ], [ %i.en, %bb.bl ], [ %i.en, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i190 ], [ %i.en, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %_ZN7QStringD2Ev.exit192
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %_ZN7QStringD2Ev.exit192 ], [ %i.el, %bb.bj ] ; 3 uses
  %i.er = load ptr, ptr %35, align 16             ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i193, label %_ZN7QStringD2Ev.exit196, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i194

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i194:   ; preds = %bb.bn
  %i.es = atomicrmw sub ptr %i.er, i32 1 acq_rel, align 4
  %.not.i.i195 = icmp eq i32 %i.es, 1
  br i1 %.not.i.i195, label %bb.bo, label %_ZN7QStringD2Ev.exit196

bb.bo:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i194
  %i.et = load ptr, ptr %35, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.et, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit196

_ZN7QStringD2Ev.exit196:                          ; preds = %bb.bo, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i194, %bb.bn, %bb.bi
  %.pn113.pn.pn = phi { ptr, i32 } [ %i.ek, %bb.bi ], [ %.pn113.pn, %bb.bn ], [ %.pn113.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i194 ], [ %.pn113.pn, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN7QStringD2Ev.exit196, %bb.bh
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn, %_ZN7QStringD2Ev.exit196 ], [ %i.ej, %bb.bh ] ; 3 uses
  %i.eu = load ptr, ptr %34, align 16             ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i197, label %_ZN7QStringD2Ev.exit200, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i198

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i198:   ; preds = %bb.bp
  %i.ev = atomicrmw sub ptr %i.eu, i32 1 acq_rel, align 4
  %.not.i.i199 = icmp eq i32 %i.ev, 1
  br i1 %.not.i.i199, label %bb.bq, label %_ZN7QStringD2Ev.exit200

bb.bq:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i198
  %i.ew = load ptr, ptr %34, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ew, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit200

_ZN7QStringD2Ev.exit200:                          ; preds = %bb.bq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i198, %bb.bp, %bb.bg
  %.pn113.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.bg ], [ %.pn113.pn.pn.pn, %bb.bp ], [ %.pn113.pn.pn.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i198 ], [ %.pn113.pn.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.es

bb.br:                                            ; preds = %_ZN7QStringD2Ev.exit188
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %16, i64 10, ptr nonnull @.str.9)
          to label %bb.bs unwind label %bb.dj

bb.bs:                                            ; preds = %bb.br
  %i.ex = load <2 x ptr>, ptr %16, align 16
  store <2 x ptr> %i.ex, ptr %39, align 16
  %i.ey = load i64, ptr %i.bz, align 16
  store i64 %i.ey, ptr %i.by, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.ez = invoke { ptr, i64 } @_ZN11QJsonObjectixERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.bt unwind label %bb.dk     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.fa = extractvalue { ptr, i64 } %i.ez, 0
  store ptr %i.fa, ptr %38, align 8
  %i.fb = extractvalue { ptr, i64 } %i.ez, 1
  store i64 %i.fb, ptr %i.ca, align 8
  invoke void @_ZNK13QJsonValueRef9toVariantEv(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %37, ptr noundef nonnull align 8 dereferenceable_or_null(16) %38)
          to label %bb.bu unwind label %bb.dk

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.fc = load i64, ptr %i.cb, align 8
  %i.fd = and i64 %i.fc, -4                       ; 3 uses
  %i.fe = inttoptr i64 %i.fd to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %i.fe, ptr %13, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE, ptr %14, align 8
  %i.ff = icmp eq i64 %i.fd, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE to i64)
  br i1 %i.ff, label %_Zeq9QMetaTypeS_.exit.thread.i.i, label %bb.bv

_Zeq9QMetaTypeS_.exit.thread.i.i:                 ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %.not.i.i202 = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i202, label %_Zeq9QMetaTypeS_.exit.thread9.i.i, label %bb.bw

_Zeq9QMetaTypeS_.exit.thread9.i.i:                ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.fg = getelementptr i8, ptr %i.fe, i64 12
  %i.fh = load atomic i32, ptr %i.fg monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i = icmp eq i32 %i.fh, 0
  br i1 %.not6.not.i.i.i.i, label %bb.bx, label %_ZNK9QMetaType2idEi.exit.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.fi = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %13)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i unwind label %bb.dl

_ZNK9QMetaType2idEi.exit.i.i.i:                   ; preds = %bb.bx, %bb.bw
  %.1.i.i.i.i = phi i32 [ %i.fh, %bb.bw ], [ %i.fi, %bb.bx ]
  %i.fj = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not6.not.i7.i.i.i, label %bb.by, label %_Zeq9QMetaTypeS_.exit.i.i

bb.by:                                            ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i
  %i.fk = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %14)
          to label %_Zeq9QMetaTypeS_.exit.i.i unwind label %bb.dl

_Zeq9QMetaTypeS_.exit.i.i:                        ; preds = %bb.by, %_ZNK9QMetaType2idEi.exit.i.i.i
  %.1.i8.i.i.i = phi i32 [ %i.fj, %_ZNK9QMetaType2idEi.exit.i.i.i ], [ %i.fk, %bb.by ]
  %i.fl = icmp eq i32 %.1.i.i.i.i, %.1.i8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %i.fl, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %37, i64 16, i1 false)
  br label %bb.cc

bb.ca:                                            ; preds = %_Zeq9QMetaTypeS_.exit.i.i, %_Zeq9QMetaTypeS_.exit.thread9.i.i
  store i32 0, ptr %15, align 8
  store i16 -1, ptr %i.cc, align 4
  store i64 0, ptr %i.cd, align 2
  %i.fm = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %37)
          to label %.noexc204 unwind label %bb.dl

.noexc204:                                        ; preds = %bb.ca
  %i.fn = load i64, ptr %i.cb, align 8
  %i.fo = and i64 %i.fn, 1
  %.not.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc204
  %i.fp = load ptr, ptr %37, align 8              ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr i8, ptr %i.fp, i64 %i.fs
  br label %_ZNK8QVariant9constDataEv.exit.i.i

_ZNK8QVariant9constDataEv.exit.i.i:               ; preds = %bb.cb, %.noexc204
  %i.fu = phi ptr [ %i.ft, %bb.cb ], [ %37, %.noexc204 ]
  %i.fv = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.fm, ptr noundef %i.fu, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE, ptr noundef nonnull %15)
          to label %bb.cc unwind label %bb.dl     ; 0 uses

bb.cc:                                            ; preds = %bb.bz, %_ZNK8QVariant9constDataEv.exit.i.i
  %.fca.0.load.i.i = load i64, ptr %15, align 8
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.sroa.513.8.insert.mask = and i64 %.fca.1.load.i.i, 281474976710655
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %37) #21
  %i.fw = load ptr, ptr %39, align 16             ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i206, label %_ZN7QStringD2Ev.exit209, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207:   ; preds = %bb.cc
  %i.fx = atomicrmw sub ptr %i.fw, i32 1 acq_rel, align 4
  %.not.i.i208 = icmp eq i32 %i.fx, 1
  br i1 %.not.i.i208, label %bb.cd, label %_ZN7QStringD2Ev.exit209

bb.cd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207
  %i.fy = load ptr, ptr %39, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fy, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit209

_ZN7QStringD2Ev.exit209:                          ; preds = %bb.cc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i207, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %12, i64 10, ptr nonnull @.str.10)
          to label %bb.ce unwind label %bb.do

bb.ce:                                            ; preds = %_ZN7QStringD2Ev.exit209
  %i.fz = load <2 x ptr>, ptr %12, align 16
  store <2 x ptr> %i.fz, ptr %42, align 16
  %i.ga = load i64, ptr %i.cf, align 16
  store i64 %i.ga, ptr %i.ce, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.gb = invoke { ptr, i64 } @_ZN11QJsonObjectixERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %42)
          to label %bb.cf unwind label %bb.dp     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  %i.gc = extractvalue { ptr, i64 } %i.gb, 0
  store ptr %i.gc, ptr %41, align 8
  %i.gd = extractvalue { ptr, i64 } %i.gb, 1
  store i64 %i.gd, ptr %i.cg, align 8
  invoke void @_ZNK13QJsonValueRef9toVariantEv(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %40, ptr noundef nonnull align 8 dereferenceable_or_null(16) %41)
          to label %bb.cg unwind label %bb.dp

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.ge = load i64, ptr %i.ch, align 8
  %i.gf = and i64 %i.ge, -4                       ; 3 uses
  %i.gg = inttoptr i64 %i.gf to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.gg, ptr %9, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE, ptr %10, align 8
  %i.gh = icmp eq i64 %i.gf, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE to i64)
  br i1 %i.gh, label %_Zeq9QMetaTypeS_.exit.thread.i.i228, label %bb.ch

_Zeq9QMetaTypeS_.exit.thread.i.i228:              ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i212 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i212, label %_Zeq9QMetaTypeS_.exit.thread9.i.i227, label %bb.ci

_Zeq9QMetaTypeS_.exit.thread9.i.i227:             ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  %i.gi = getelementptr i8, ptr %i.gg, i64 12
  %i.gj = load atomic i32, ptr %i.gi monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i213 = icmp eq i32 %i.gj, 0
  br i1 %.not6.not.i.i.i.i213, label %bb.cj, label %_ZNK9QMetaType2idEi.exit.i.i.i214

bb.cj:                                            ; preds = %bb.ci
  %i.gk = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %9)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i214 unwind label %bb.dq

_ZNK9QMetaType2idEi.exit.i.i.i214:                ; preds = %bb.cj, %bb.ci
  %.1.i.i.i.i215 = phi i32 [ %i.gj, %bb.ci ], [ %i.gk, %bb.cj ]
  %i.gl = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i216 = icmp eq i32 %i.gl, 0
  br i1 %.not6.not.i7.i.i.i216, label %bb.ck, label %_Zeq9QMetaTypeS_.exit.i.i217

bb.ck:                                            ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i214
  %i.gm = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10)
          to label %_Zeq9QMetaTypeS_.exit.i.i217 unwind label %bb.dq

_Zeq9QMetaTypeS_.exit.i.i217:                     ; preds = %bb.ck, %_ZNK9QMetaType2idEi.exit.i.i.i214
  %.1.i8.i.i.i218 = phi i32 [ %i.gl, %_ZNK9QMetaType2idEi.exit.i.i.i214 ], [ %i.gm, %bb.ck ]
  %i.gn = icmp eq i32 %.1.i.i.i.i215, %.1.i8.i.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %i.gn, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_Zeq9QMetaTypeS_.exit.i.i217, %_Zeq9QMetaTypeS_.exit.thread.i.i228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %40, i64 16, i1 false)
  br label %bb.co

bb.cm:                                            ; preds = %_Zeq9QMetaTypeS_.exit.i.i217, %_Zeq9QMetaTypeS_.exit.thread9.i.i227
  store i32 0, ptr %11, align 8
  store i16 -1, ptr %i.ci, align 4
  store i64 0, ptr %i.cj, align 2
  %i.go = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %40)
          to label %.noexc231 unwind label %bb.dq

.noexc231:                                        ; preds = %bb.cm
  %i.gp = load i64, ptr %i.ch, align 8
  %i.gq = and i64 %i.gp, 1
  %.not.i.i.i.i219 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i219, label %_ZNK8QVariant9constDataEv.exit.i.i220, label %bb.cn

bb.cn:                                            ; preds = %.noexc231
  %i.gr = load ptr, ptr %40, align 8              ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr i8, ptr %i.gr, i64 %i.gu
  br label %_ZNK8QVariant9constDataEv.exit.i.i220

_ZNK8QVariant9constDataEv.exit.i.i220:            ; preds = %bb.cn, %.noexc231
  %i.gw = phi ptr [ %i.gv, %bb.cn ], [ %40, %.noexc231 ]
  %i.gx = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.go, ptr noundef %i.gw, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperI6QColorE8metaTypeE, ptr noundef nonnull %11)
          to label %bb.co unwind label %bb.dq     ; 0 uses

bb.co:                                            ; preds = %bb.cl, %_ZNK8QVariant9constDataEv.exit.i.i220
  %.fca.0.load.i.i221 = load i64, ptr %11, align 8
  %.fca.1.load.i.i224 = load i64, ptr %.fca.1.gep.i.i223, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.sroa.26.0.extract.trunc = trunc i64 %.fca.1.load.i.i224 to i48
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %40) #21
  %i.gy = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i234 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i234, label %_ZN7QStringD2Ev.exit237, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i235

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i235:   ; preds = %bb.co
  %i.gz = atomicrmw sub ptr %i.gy, i32 1 acq_rel, align 4
  %.not.i.i236 = icmp eq i32 %i.gz, 1
  br i1 %.not.i.i236, label %bb.cp, label %_ZN7QStringD2Ev.exit237

bb.cp:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i235
  %i.ha = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ha, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit237

_ZN7QStringD2Ev.exit237:                          ; preds = %bb.co, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i235, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  %i.hb = invoke noalias noundef dereferenceable_or_null(128) ptr @_Znwm(i64 noundef 128) #24
          to label %bb.cq unwind label %bb.dt     ; 3 uses

bb.cq:                                            ; preds = %_ZN7QStringD2Ev.exit237
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %8, i64 8, ptr nonnull @.str.6)
          to label %bb.cr unwind label %bb.du

bb.cr:                                            ; preds = %bb.cq
  %i.hc = load <2 x ptr>, ptr %8, align 16
  store <2 x ptr> %i.hc, ptr %45, align 16
  %i.hd = load i64, ptr %i.cl, align 16
  store i64 %i.hd, ptr %i.ck, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.he = invoke { ptr, i64 } @_ZN11QJsonObjectixERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %45)
          to label %bb.cs unwind label %bb.dv     ; 2 uses

bb.cs:                                            ; preds = %bb.cr
  %i.hf = extractvalue { ptr, i64 } %i.he, 0
  store ptr %i.hf, ptr %44, align 8
  %i.hg = extractvalue { ptr, i64 } %i.he, 1
  store i64 %i.hg, ptr %i.cm, align 8
  invoke void @_ZNK13QJsonValueRef9toVariantEv(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %43, ptr noundef nonnull align 8 dereferenceable_or_null(16) %44)
          to label %bb.ct unwind label %bb.dv

bb.ct:                                            ; preds = %bb.cs
  %i.hh = invoke noundef zeroext i1 @_ZNK8QVariant6toBoolEv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %43)
          to label %bb.cu unwind label %bb.dw

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 4, ptr nonnull @.str.7)
          to label %bb.cv unwind label %bb.dx

bb.cv:                                            ; preds = %bb.cu
  %i.hi = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.hi, ptr %47, align 16
  %i.hj = load i64, ptr %i.co, align 16
  store i64 %i.hj, ptr %i.cn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.hk = invoke { ptr, i64 } @_ZN11QJsonObjectixERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %47)
          to label %bb.cw unwind label %bb.dy     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.hl = extractvalue { ptr, i64 } %i.hk, 0
  %i.hm = extractvalue { ptr, i64 } %i.hk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %48, i8 0, i64 24, i1 false)
  invoke void @_ZN18QJsonValueConstRef14concreteStringES_RK7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %46, ptr %i.hl, i64 %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %48)
          to label %_ZNK13QJsonValueRef8toStringERK7QString.exit unwind label %bb.dz

_ZNK13QJsonValueRef8toStringERK7QString.exit:     ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 6, ptr nonnull @.str.8)
          to label %bb.cx unwind label %bb.ea

bb.cx:                                            ; preds = %_ZNK13QJsonValueRef8toStringERK7QString.exit
  %i.hn = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.hn, ptr %50, align 16
  %i.ho = load i64, ptr %i.cq, align 16
  store i64 %i.ho, ptr %i.cp, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.hp = invoke { ptr, i64 } @_ZN11QJsonObjectixERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(8) %32, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.cy unwind label %bb.eb     ; 2 uses

bb.cy:                                            ; preds = %bb.cx
  %i.hq = extractvalue { ptr, i64 } %i.hp, 0
  %i.hr = extractvalue { ptr, i64 } %i.hp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %51, i8 0, i64 24, i1 false)
  invoke void @_ZN18QJsonValueConstRef14concreteStringES_RK7QString(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %49, ptr %i.hq, i64 %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %_ZNK13QJsonValueRef8toStringERK7QString.exit249 unwind label %bb.ec

_ZNK13QJsonValueRef8toStringERK7QString.exit249:  ; preds = %bb.cy
  store i64 %.fca.0.load.i.i221, ptr %52, align 8
  store i48 %.sroa.26.0.extract.trunc, ptr %.sroa.5.0..sroa_idx, align 8
  %i.hs = load ptr, ptr %i.cr, align 8
  invoke void @_ZN16ColoringRuleItemC1Eb7QStringS0_6QColorS1_PS_(ptr noundef align 8 dereferenceable_or_null(128) %i.hb, i1 noundef zeroext %i.hh, ptr noundef nonnull align 8 %46, ptr noundef nonnull align 8 %49, i64 %.fca.0.load.i.i, i64 %.sroa.513.8.insert.mask, ptr noundef nonnull byval(%class.QColor) align 8 %52, ptr noundef %i.hs)
          to label %bb.cz unwind label %bb.ed

bb.cz:                                            ; preds = %_ZNK13QJsonValueRef8toStringERK7QString.exit249
  %i.ht = load ptr, ptr %49, align 8              ; 2 uses
  %.not.i.i.i250 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i250, label %_ZN7QStringD2Ev.exit253, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i251

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i251:   ; preds = %bb.cz
  %i.hu = atomicrmw sub ptr %i.ht, i32 1 acq_rel, align 4
  %.not.i.i252 = icmp eq i32 %i.hu, 1
  br i1 %.not.i.i252, label %bb.da, label %_ZN7QStringD2Ev.exit253

bb.da:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i251
  %i.hv = load ptr, ptr %49, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hv, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit253

_ZN7QStringD2Ev.exit253:                          ; preds = %bb.cz, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i251, %bb.da
  %i.hw = load ptr, ptr %51, align 8              ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i254, label %_ZN7QStringD2Ev.exit257, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i255

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i255:   ; preds = %_ZN7QStringD2Ev.exit253
  %i.hx = atomicrmw sub ptr %i.hw, i32 1 acq_rel, align 4
  %.not.i.i256 = icmp eq i32 %i.hx, 1
  br i1 %.not.i.i256, label %bb.db, label %_ZN7QStringD2Ev.exit257

bb.db:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i255
  %i.hy = load ptr, ptr %51, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hy, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit257

_ZN7QStringD2Ev.exit257:                          ; preds = %_ZN7QStringD2Ev.exit253, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i255, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  %i.hz = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i258, label %_ZN7QStringD2Ev.exit261, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i259

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i259:   ; preds = %_ZN7QStringD2Ev.exit257
  %i.ia = atomicrmw sub ptr %i.hz, i32 1 acq_rel, align 4
  %.not.i.i260 = icmp eq i32 %i.ia, 1
  br i1 %.not.i.i260, label %bb.dc, label %_ZN7QStringD2Ev.exit261

bb.dc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i259
  %i.ib = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ib, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit261

_ZN7QStringD2Ev.exit261:                          ; preds = %_ZN7QStringD2Ev.exit257, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i259, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  %i.ic = load ptr, ptr %46, align 8              ; 2 uses
  %.not.i.i.i262 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i262, label %_ZN7QStringD2Ev.exit265, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i263

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i263:   ; preds = %_ZN7QStringD2Ev.exit261
  %i.id = atomicrmw sub ptr %i.ic, i32 1 acq_rel, align 4
  %.not.i.i264 = icmp eq i32 %i.id, 1
  br i1 %.not.i.i264, label %bb.dd, label %_ZN7QStringD2Ev.exit265

bb.dd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i263
  %i.ie = load ptr, ptr %46, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ie, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit265

_ZN7QStringD2Ev.exit265:                          ; preds = %_ZN7QStringD2Ev.exit261, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i263, %bb.dd
  %i.if = load ptr, ptr %48, align 8              ; 2 uses
  %.not.i.i.i266 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i266, label %_ZN7QStringD2Ev.exit269, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i267

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i267:   ; preds = %_ZN7QStringD2Ev.exit265
  %i.ig = atomicrmw sub ptr %i.if, i32 1 acq_rel, align 4
  %.not.i.i268 = icmp eq i32 %i.ig, 1
  br i1 %.not.i.i268, label %bb.de, label %_ZN7QStringD2Ev.exit269

bb.de:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i267
  %i.ih = load ptr, ptr %48, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ih, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit269

_ZN7QStringD2Ev.exit269:                          ; preds = %_ZN7QStringD2Ev.exit265, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i267, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #21
  %i.ii = load ptr, ptr %47, align 16             ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i270, label %_ZN7QStringD2Ev.exit273, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i271

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i271:   ; preds = %_ZN7QStringD2Ev.exit269
  %i.ij = atomicrmw sub ptr %i.ii, i32 1 acq_rel, align 4
  %.not.i.i272 = icmp eq i32 %i.ij, 1
  br i1 %.not.i.i272, label %bb.df, label %_ZN7QStringD2Ev.exit273

bb.df:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i271
  %i.ik = load ptr, ptr %47, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ik, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit273

_ZN7QStringD2Ev.exit273:                          ; preds = %_ZN7QStringD2Ev.exit269, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i271, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %43) #21
  %i.il = load ptr, ptr %45, align 16             ; 2 uses
  %.not.i.i.i274 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i274, label %_ZN7QStringD2Ev.exit277, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i275

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i275:   ; preds = %_ZN7QStringD2Ev.exit273
  %i.im = atomicrmw sub ptr %i.il, i32 1 acq_rel, align 4
  %.not.i.i276 = icmp eq i32 %i.im, 1
  br i1 %.not.i.i276, label %bb.dg, label %_ZN7QStringD2Ev.exit277

bb.dg:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i275
  %i.in = load ptr, ptr %45, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.in, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit277

_ZN7QStringD2Ev.exit277:                          ; preds = %_ZN7QStringD2Ev.exit273, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i275, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !65
  store ptr %i.hb, ptr %i.a, align 8, !noalias !65
  invoke void @_ZN8QVariantC1E9QMetaTypePKv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %53, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.dh unwind label %bb.ep

bb.dh:                                            ; preds = %_ZN7QStringD2Ev.exit277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !65
  %i.io = load i64, ptr %i.cs, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI8QVariantE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i64 noundef %i.io, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %.noexc279 unwind label %bb.eq

.noexc279:                                        ; preds = %bb.dh
  %i.ip = load ptr, ptr %23, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc279
  %i.iq = load atomic i32, ptr %i.ip monotonic, align 4
  %i.ir = icmp sgt i32 %i.iq, 1
  br i1 %i.ir, label %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI8QVariantE6appendEOS0_.exit

_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i.i, %.noexc279
  invoke void @_ZN17QArrayDataPointerI8QVariantE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %23, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI8QVariantE6appendEOS0_.exit unwind label %bb.eq

_ZN5QListI8QVariantE6appendEOS0_.exit:            ; preds = %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI8QVariantE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %53) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  br label %bb.di

bb.di:                                            ; preds = %_ZN7QStringD2Ev.exit188, %_ZN5QListI8QVariantE6appendEOS0_.exit
  call void @_ZN11QJsonObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %32) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.is = add i32 %.093, 1
  br label %bb.ah, !llvm.loop !68

bb.dj:                                            ; preds = %bb.br
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit284

bb.dk:                                            ; preds = %bb.bt, %bb.bs
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNK8QVariant9constDataEv.exit.i.i, %bb.ca, %bb.by, %bb.bx
  %i.iv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %37) #21
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn119 = phi { ptr, i32 } [ %i.iv, %bb.dl ], [ %i.iu, %bb.dk ] ; 3 uses
  %i.iw = load ptr, ptr %39, align 16             ; 2 uses
  %.not.i.i.i281 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i281, label %_ZN7QStringD2Ev.exit284, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i282

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i282:   ; preds = %bb.dm
  %i.ix = atomicrmw sub ptr %i.iw, i32 1 acq_rel, align 4
  %.not.i.i283 = icmp eq i32 %i.ix, 1
  br i1 %.not.i.i283, label %bb.dn, label %_ZN7QStringD2Ev.exit284

bb.dn:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i282
  %i.iy = load ptr, ptr %39, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.iy, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit284

_ZN7QStringD2Ev.exit284:                          ; preds = %bb.dn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i282, %bb.dm, %bb.dj
  %.pn119.pn = phi { ptr, i32 } [ %i.it, %bb.dj ], [ %.pn119, %bb.dm ], [ %.pn119, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i282 ], [ %.pn119, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %bb.es

bb.do:                                            ; preds = %_ZN7QStringD2Ev.exit209
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit288

bb.dp:                                            ; preds = %bb.cf, %bb.ce
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNK8QVariant9constDataEv.exit.i.i220, %bb.cm, %bb.ck, %bb.cj
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %40) #21
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.pn122 = phi { ptr, i32 } [ %i.jb, %bb.dq ], [ %i.ja, %bb.dp ] ; 3 uses
  %i.jc = load ptr, ptr %42, align 16             ; 2 uses
  %.not.i.i.i285 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i.i285, label %_ZN7QStringD2Ev.exit288, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i286

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i286:   ; preds = %bb.dr
  %i.jd = atomicrmw sub ptr %i.jc, i32 1 acq_rel, align 4
  %.not.i.i287 = icmp eq i32 %i.jd, 1
  br i1 %.not.i.i287, label %bb.ds, label %_ZN7QStringD2Ev.exit288

bb.ds:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i286
  %i.je = load ptr, ptr %42, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.je, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit288

_ZN7QStringD2Ev.exit288:                          ; preds = %bb.ds, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i286, %bb.dr, %bb.do
  %.pn122.pn = phi { ptr, i32 } [ %i.iz, %bb.do ], [ %.pn122, %bb.dr ], [ %.pn122, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i286 ], [ %.pn122, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.es

bb.dt:                                            ; preds = %_ZN7QStringD2Ev.exit237
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.du:                                            ; preds = %bb.cq
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit316

bb.dv:                                            ; preds = %bb.cs, %bb.cr
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dw:                                            ; preds = %bb.ct
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.dx:                                            ; preds = %bb.cu
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit312

bb.dy:                                            ; preds = %bb.cv
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.dz:                                            ; preds = %bb.cw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit304

bb.ea:                                            ; preds = %_ZNK13QJsonValueRef8toStringERK7QString.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit300

bb.eb:                                            ; preds = %bb.cx
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ec:                                            ; preds = %bb.cy
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit292

bb.ed:                                            ; preds = %_ZNK13QJsonValueRef8toStringERK7QString.exit249
  %i.jp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jq = load ptr, ptr %49, align 8              ; 2 uses
  %.not.i.i.i289 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i289, label %_ZN7QStringD2Ev.exit292, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i290

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i290:   ; preds = %bb.ed
  %i.jr = atomicrmw sub ptr %i.jq, i32 1 acq_rel, align 4
  %.not.i.i291 = icmp eq i32 %i.jr, 1
  br i1 %.not.i.i291, label %bb.ee, label %_ZN7QStringD2Ev.exit292

bb.ee:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i290
  %i.js = load ptr, ptr %49, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.js, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit292

_ZN7QStringD2Ev.exit292:                          ; preds = %bb.ee, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i290, %bb.ed, %bb.ec
  %.pn125 = phi { ptr, i32 } [ %i.jo, %bb.ec ], [ %i.jp, %bb.ed ], [ %i.jp, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i290 ], [ %i.jp, %bb.ee ]
  %i.jt = load ptr, ptr %51, align 8              ; 2 uses
  %.not.i.i.i293 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i293, label %_ZN7QStringD2Ev.exit296, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i294

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i294:   ; preds = %_ZN7QStringD2Ev.exit292
  %i.ju = atomicrmw sub ptr %i.jt, i32 1 acq_rel, align 4
  %.not.i.i295 = icmp eq i32 %i.ju, 1
  br i1 %.not.i.i295, label %bb.ef, label %_ZN7QStringD2Ev.exit296

bb.ef:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i294
  %i.jv = load ptr, ptr %51, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jv, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit296

_ZN7QStringD2Ev.exit296:                          ; preds = %_ZN7QStringD2Ev.exit292, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i294, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %bb.eg

bb.eg:                                            ; preds = %_ZN7QStringD2Ev.exit296, %bb.eb
  %.pn125.pn = phi { ptr, i32 } [ %.pn125, %_ZN7QStringD2Ev.exit296 ], [ %i.jn, %bb.eb ] ; 3 uses
  %i.jw = load ptr, ptr %50, align 16             ; 2 uses
  %.not.i.i.i297 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i297, label %_ZN7QStringD2Ev.exit300, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i298

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i298:   ; preds = %bb.eg
  %i.jx = atomicrmw sub ptr %i.jw, i32 1 acq_rel, align 4
  %.not.i.i299 = icmp eq i32 %i.jx, 1
  br i1 %.not.i.i299, label %bb.eh, label %_ZN7QStringD2Ev.exit300

bb.eh:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i298
  %i.jy = load ptr, ptr %50, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jy, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit300

_ZN7QStringD2Ev.exit300:                          ; preds = %bb.eh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i298, %bb.eg, %bb.ea
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.jm, %bb.ea ], [ %.pn125.pn, %bb.eg ], [ %.pn125.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i298 ], [ %.pn125.pn, %bb.eh ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  %i.jz = load ptr, ptr %46, align 8              ; 2 uses
  %.not.i.i.i301 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i301, label %_ZN7QStringD2Ev.exit304, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i302

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i302:   ; preds = %_ZN7QStringD2Ev.exit300
  %i.ka = atomicrmw sub ptr %i.jz, i32 1 acq_rel, align 4
  %.not.i.i303 = icmp eq i32 %i.ka, 1
  br i1 %.not.i.i303, label %bb.ei, label %_ZN7QStringD2Ev.exit304

bb.ei:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i302
  %i.kb = load ptr, ptr %46, align 8
end_hunk_1

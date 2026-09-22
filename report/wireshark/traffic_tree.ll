Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/traffic_tree?download=true
inline.NumInlined: 2531
inline.NumDeleted: 1127
begin_hunk_0_@_ZN11TrafficTree15copyToClipboardENS_21eTrafficTreeClipboardE:bb.a
  br i1 %.not.i.i.i160, label %_ZN7QStringD2Ev.exit163, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161:   ; preds = %bb.am
  %i.cl = atomicrmw sub ptr %i.ck, i32 1 acq_rel, align 4
  %.not.i.i162 = icmp eq i32 %i.cl, 1
  br i1 %.not.i.i162, label %bb.an, label %_ZN7QStringD2Ev.exit163

bb.an:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161
  %i.cm = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cm, i64 noundef 2, i64 noundef 8) #27
  br label %_ZN7QStringD2Ev.exit163

_ZN7QStringD2Ev.exit163:                          ; preds = %bb.an, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161, %bb.am, %bb.al
  %.pn115 = phi { ptr, i32 } [ %i.ci, %bb.al ], [ %i.cj, %bb.am ], [ %i.cj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i161 ], [ %i.cj, %bb.an ] ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i164, label %_ZN7QStringD2Ev.exit167, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i165

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i165:   ; preds = %_ZN7QStringD2Ev.exit163
  %i.cn = atomicrmw sub ptr %i.aj, i32 1 acq_rel, align 4
  %.not.i.i166 = icmp eq i32 %i.cn, 1
  br i1 %.not.i.i166, label %bb.ao, label %_ZN7QStringD2Ev.exit167

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i165
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.aj, i64 noundef 2, i64 noundef 8) #27
  br label %_ZN7QStringD2Ev.exit167

_ZN7QStringD2Ev.exit167:                          ; preds = %bb.ao, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i165, %_ZN7QStringD2Ev.exit163, %bb.ak
  %.pn115.pn = phi { ptr, i32 } [ %i.ch, %bb.ak ], [ %.pn115, %_ZN7QStringD2Ev.exit163 ], [ %.pn115, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i165 ], [ %.pn115, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.dd

bb.ap:                                            ; preds = %bb.ar, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.aq:                                            ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.dd

bb.ar:                                            ; preds = %bb.ac
  invoke void @_ZN5QListI7QStringE5clearEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10)
          to label %.preheader unwind label %bb.ap

.preheader:                                       ; preds = %bb.ar, %_ZN7QStringD2Ev.exit182
  %.076 = phi i32 [ %i.hn, %_ZN7QStringD2Ev.exit182 ], [ 0, %bb.ar ] ; 3 uses
  %i.cq = invoke noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.as unwind label %bb.av     ; 2 uses

bb.as:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  store i32 -1, ptr %16, align 8
  store i32 -1, ptr %i.aw, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef i32 %i.ct(ptr noundef align 8 dereferenceable_or_null(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.cv = icmp slt i32 %.076, %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br i1 %i.cv, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 1, ptr nonnull @.str.29)
          to label %bb.ct unwind label %bb.cy

bb.av:                                            ; preds = %.preheader
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.aw:                                            ; preds = %bb.as
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.dd

bb.ax:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.cy = invoke noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.ay unwind label %bb.bp     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  store i32 -1, ptr %18, align 8
  store i32 -1, ptr %i.ay, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr dead_on_unwind nonnull writable sret(%class.QModelIndex) align 8 %17, ptr noundef align 8 dereferenceable_or_null(16) %i.cy, i32 noundef %.074, i32 noundef %.076, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.az unwind label %bb.bq

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.dc = invoke noundef ptr @_ZNK17QAbstractItemView5modelEv(ptr noundef align 8 dereferenceable_or_null(40) %0)
          to label %bb.ba unwind label %bb.br     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.dd = load i32, ptr %i.ba, align 4
  %i.de = load ptr, ptr %i.dc, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %19, ptr noundef align 8 dereferenceable_or_null(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %17, i32 noundef %i.dd)
          to label %bb.bb unwind label %bb.br

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.dh = load i64, ptr %i.bb, align 8
  %i.di = and i64 %i.dh, -4
  %i.dj = inttoptr i64 %i.di to ptr
  store ptr %i.dj, ptr %4, align 8
  %i.dk = invoke noundef zeroext i1 @_ZNK9QMetaType7isValidEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %4)
          to label %bb.bc unwind label %bb.bs

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %i.dk, label %bb.bv, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 2, ptr nonnull @.str.31)
          to label %bb.be unwind label %bb.bt

bb.be:                                            ; preds = %bb.bd
  %i.dl = load ptr, ptr %3, align 8               ; 6 uses
  %i.dm = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.dn = load i64, ptr %i.bd, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.do = load i64, ptr %i.h, align 8             ; 9 uses
  %i.dp = load ptr, ptr %10, align 8              ; 7 uses
  %.not.i.i335 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i335, label %.critedge.i, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i: ; preds = %bb.be
  %i.dq = load atomic i32, ptr %i.dp monotonic, align 4
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i338, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.be, align 8            ; 5 uses
  %i.dv = ptrtoint ptr %i.dp to i64
  %i.dw = add i64 %i.dv, 23
  %i.dx = and i64 %i.dw, -8                       ; 2 uses
  %i.dy = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dz = sub i64 %i.dy, %i.dx
  %.neg4.i.neg.i = sdiv exact i64 %i.dz, 24
  %.neg3.i.i = sub i64 %i.dt, %i.do
  %.not.i336 = icmp eq i64 %.neg3.i.i, %.neg4.i.neg.i
  br i1 %.not.i336, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i
  %i.ea = getelementptr [24 x i8], ptr %i.du, i64 %i.do ; 3 uses
  store ptr %i.dl, ptr %i.ea, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.dm, ptr %i.eb, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store i64 %i.dn, ptr %i.ec, align 8
  br label %.noexc176

bb.bg:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i
  %i.ed = icmp ne i64 %i.do, 0
  %.not14.i = icmp eq i64 %i.dx, %i.dy
  %or.cond = or i1 %i.ed, %.not14.i
  br i1 %or.cond, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i338, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ee = getelementptr i8, ptr %i.du, i64 -24
  store ptr %i.dl, ptr %i.ee, align 8
  %i.ef = getelementptr i8, ptr %i.du, i64 -16
  store ptr %i.dm, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %i.du, i64 -8
  store i64 %i.dn, ptr %i.eg, align 8
  %i.eh = load ptr, ptr %i.be, align 8
  %i.ei = getelementptr i8, ptr %i.eh, i64 -24
  store ptr %i.ei, ptr %i.be, align 8
  br label %.noexc176

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i338: ; preds = %bb.bg, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i
  %i.ej = icmp eq i64 %i.do, 0
  %i.ek = load atomic i32, ptr %i.dp monotonic, align 4
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %.critedge.i, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i339

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i339: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i338
  %i.em = getelementptr i8, ptr %i.dp, i64 8
  %i.en = load i64, ptr %i.em, align 8            ; 2 uses
  %i.eo = load ptr, ptr %i.be, align 8            ; 5 uses
  %i.ep = ptrtoint ptr %i.dp to i64
  %i.eq = add i64 %i.ep, 23
  %i.er = and i64 %i.eq, -8
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.es, %i.er                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.et, -24
  %.neg3.i.i340 = sub i64 %i.en, %i.do
  %i.eu = add i64 %.neg3.i.i340, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.eu, 1
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i, label %bb.bn

_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i: ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i339
  %.not.i19.i = icmp slt i64 %i.et, 24
  br i1 %.not.i19.i, label %.critedge.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i
  %i.ev = mul i64 %i.do, 3
  %i.ew = shl i64 %i.en, 1
  %i.ex = icmp slt i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.bj, label %.critedge.i

bb.bj:                                            ; preds = %bb.bi
  %.idx.i.i.i341 = sub nsw i64 0, %i.et
  %i.ey = getelementptr i8, ptr %i.eo, i64 %.idx.i.i.i341 ; 4 uses
  br i1 %i.ej, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ez = icmp eq ptr %i.eo, null
  %i.fa = icmp eq ptr %i.ey, null
  %or.cond3.i.i.i.i = or i1 %i.ez, %i.fa
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fb = mul i64 %i.do, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ey, ptr noundef nonnull align 1 %i.eo, i64 noundef %i.fb, i1 noundef false) #27
  br label %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  store ptr %i.ey, ptr %i.be, align 8
  br label %bb.bn

.critedge.i:                                      ; preds = %bb.be, %bb.bi, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i338
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i32 noundef 0, i64 noundef 1, ptr noundef null)
          to label %.critedge.i._crit_edge unwind label %bb.bm

.critedge.i._crit_edge:                           ; preds = %.critedge.i
  %.pre415 = load ptr, ptr %i.be, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %.critedge.i
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i.i.i17.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i17.i, label %_ZN7QStringD2Ev.exit186, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i

bb.bn:                                            ; preds = %.critedge.i._crit_edge, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i339, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i
  %i.fd = phi ptr [ %.pre415, %.critedge.i._crit_edge ], [ %i.eo, %_ZNK17QArrayDataPointerI7QStringE14freeSpaceAtEndEv.exit.i339 ], [ %i.ey, %_ZN9QtPrivate20q_relocate_overlap_nI7QStringxEEvPT_T0_S3_.exit.i.i.i ]
  %i.fe = getelementptr [24 x i8], ptr %i.fd, i64 %i.do ; 5 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 24
  %i.fg = load i64, ptr %i.h, align 8
  %i.fh = sub i64 %i.fg, %i.do
  %i.fi = mul i64 %i.fh, 24
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.ff, ptr noundef align 1 %i.fe, i64 noundef %i.fi, i1 noundef false) #27
  store ptr %i.dl, ptr %i.fe, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.dm, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 %i.dn, ptr %i.fk, align 8
  br label %.noexc176

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i:  ; preds = %bb.bm
  %i.fl = atomicrmw sub ptr %i.dl, i32 1 acq_rel, align 4
  %.not.i.i19.i = icmp eq i32 %i.fl, 1
  br i1 %.not.i.i19.i, label %bb.bo, label %_ZN7QStringD2Ev.exit186

bb.bo:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i18.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dl, i64 noundef 2, i64 noundef 8) #27
  br label %_ZN7QStringD2Ev.exit186

.noexc176:                                        ; preds = %bb.bn, %bb.bh, %bb.bf
  %i.fm = load i64, ptr %i.h, align 8
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.h, align 8
  %i.fo = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i173 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i.i173, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i175, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i174

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i174: ; preds = %.noexc176
  %i.fp = load atomic i32, ptr %i.fo monotonic, align 4
  %i.fq = icmp sgt i32 %i.fp, 1
  br i1 %i.fq, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i175, label %_ZN7QStringD2Ev.exit182

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i175: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i174, %.noexc176
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN7QStringD2Ev.exit182 unwind label %bb.bu

bb.bp:                                            ; preds = %bb.ax
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.bq:                                            ; preds = %bb.ay
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.cs

bb.br:                                            ; preds = %bb.ba, %bb.az
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.bs:                                            ; preds = %bb.bx, %bb.bv, %bb.bb
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit186

bb.bt:                                            ; preds = %bb.bd
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit186

bb.bu:                                            ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i175
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit186

bb.bv:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.fx = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %19)
          to label %.noexc188 unwind label %bb.bs ; 3 uses

.noexc188:                                        ; preds = %bb.bv
  store ptr %i.fx, ptr %2, align 8
  %.not.i.i.i187 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i187, label %.thread, label %bb.bw

.thread:                                          ; preds = %.noexc188
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cl

bb.bw:                                            ; preds = %.noexc188
  %i.fy = getelementptr i8, ptr %i.fx, i64 12
  %i.fz = load atomic i32, ptr %i.fy monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not6.not.i.i.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ga = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %bb.by unwind label %bb.bs

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.1.i.i.i = phi i32 [ %i.ga, %bb.bx ], [ %i.fz, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.gb = icmp eq i32 %.1.i.i.i, 10
  br i1 %i.gb, label %bb.bz, label %bb.cl

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  store <2 x ptr> <ptr null, ptr @.str.32>, ptr %21, align 16
  store i64 4, ptr %i.bf, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %22, ptr noundef nonnull align 8 dereferenceable_or_null(32) %19)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %20, ptr noundef nonnull align 8 dereferenceable_or_null(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 0, i16 32)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.gc = load i64, ptr %i.h, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI7QStringE7emplaceIJS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i64 noundef %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %.noexc193 unwind label %bb.ch

.noexc193:                                        ; preds = %bb.cb
  %i.gd = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i190 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i190, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i192, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i191

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i191: ; preds = %.noexc193
  %i.ge = load atomic i32, ptr %i.gd monotonic, align 4
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i192, label %_ZN5QListI7QStringElsEOS0_.exit195

_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i192: ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i191, %.noexc193
  invoke void @_ZN17QArrayDataPointerI7QStringE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %10, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI7QStringElsEOS0_.exit195 unwind label %bb.ch

_ZN5QListI7QStringElsEOS0_.exit195:               ; preds = %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.i.i.i.i.i.i191, %_ZNK17QArrayDataPointerI7QStringE11needsDetachEv.exit.thread.i.i.i.i.i.i192
  %i.gg = load ptr, ptr %20, align 8              ; 2 uses
  %.not.i.i.i196 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i196, label %_ZN7QStringD2Ev.exit199, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197:   ; preds = %_ZN5QListI7QStringElsEOS0_.exit195
  %i.gh = atomicrmw sub ptr %i.gg, i32 1 acq_rel, align 4
  %.not.i.i198 = icmp eq i32 %i.gh, 1
  br i1 %.not.i.i198, label %bb.cc, label %_ZN7QStringD2Ev.exit199

bb.cc:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197
  %i.gi = load ptr, ptr %20, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gi, i64 noundef 2, i64 noundef 8) #27
  br label %_ZN7QStringD2Ev.exit199

_ZN7QStringD2Ev.exit199:                          ; preds = %_ZN5QListI7QStringElsEOS0_.exit195, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i197, %bb.cc
  %i.gj = load ptr, ptr %22, align 8              ; 2 uses
  %.not.i.i.i200 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i200, label %_ZN7QStringD2Ev.exit203, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i201

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i201:   ; preds = %_ZN7QStringD2Ev.exit199
  %i.gk = atomicrmw sub ptr %i.gj, i32 1 acq_rel, align 4
  %.not.i.i202 = icmp eq i32 %i.gk, 1
  br i1 %.not.i.i202, label %bb.cd, label %_ZN7QStringD2Ev.exit203

bb.cd:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i201
  %i.gl = load ptr, ptr %22, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.gl, i64 noundef 2, i64 noundef 8) #27
  br label %_ZN7QStringD2Ev.exit203

_ZN7QStringD2Ev.exit203:                          ; preds = %_ZN7QStringD2Ev.exit199, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i201, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  %i.gm = load ptr, ptr %21, align 16             ; 2 uses
  %.not.i.i.i204 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i204, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i205

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i205:   ; preds = %_ZN7QStringD2Ev.exit203
  %i.gn = atomicrmw sub ptr %i.gm, i32 1 acq_rel, align 4
  %.not.i.i206 = icmp eq i32 %i.gn, 1
  br i1 %.not.i.i206, label %bb.ce, label %_ZN17QArrayDataPointerIDsED2Ev.exit

end_hunk_0

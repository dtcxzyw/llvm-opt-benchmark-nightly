inline.NumInlined: 21
inline.NumDeleted: 15
begin_hunk_0_@_Z19SetMethodPropertiesRK7CMethodPKyP8IUnknown:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 0, ptr %i.y, align 2, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !28

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ay
  %.unr = phi ptr [ %.ptr81.ptr, %bb.ay ], [ %i.z, %.prol.preheader ]
  %i.aa = icmp samesign ult i64 %i.v, 7
  br i1 %i.aa, label %.loopexit125, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ab = phi ptr [ %i.ar, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i16 0, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 0, ptr %i.ac, align 2, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i16 0, ptr %i.ad, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  store i16 0, ptr %i.ae, align 2, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i16 0, ptr %i.af, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 34
  store i16 0, ptr %i.ag, align 2, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i16 0, ptr %i.ah, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 50
  store i16 0, ptr %i.ai, align 2, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i16 0, ptr %i.aj, align 8, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 66
  store i16 0, ptr %i.ak, align 2, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store i16 0, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 82
  store i16 0, ptr %i.am, align 2, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store i16 0, ptr %i.an, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 98
  store i16 0, ptr %i.ao, align 2, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  store i16 0, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 114
  store i16 0, ptr %i.aq, align 2, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.t
  br i1 %i.as, label %.loopexit125, label %.new

.loopexit125:                                     ; preds = %.new, %.prol.loopexit
  %i.at = icmp sgt i32 %i.d, 0
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit125
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  %wide.trip.count135 = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %.253, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.be
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %bb.be ], [ 0, %.lr.ph ] ; 3 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv132
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !31 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !32
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.az unwind label %.split.us

bb.az:                                            ; preds = %.lr.ph.split.us
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  store i32 %i.ba, ptr %i.be, align 4, !tbaa !4
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.aw, align 4, !tbaa !17
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.ptr81.ptr, i64 %indvars.iv132 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %bb.ba unwind label %.split128.us ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.bk = load i32, ptr %i.az, align 8, !tbaa !32
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.bm = load i16, ptr %i.bh, align 8, !tbaa !24
  %i.bn = icmp eq i16 %i.bm, 19
  br i1 %i.bn, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !35
  %i.bq = icmp ult i32 %.256, %i.bp
  br i1 %i.bq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %.256, ptr %i.bo, align 8, !tbaa !35
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !36

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

.split128.us:                                     ; preds = %bb.az
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

._crit_edge:                                      ; preds = %bb.bh, %bb.be, %bb.ax, %.loopexit125
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr null, ptr %5, align 8, !tbaa !18
  %i.bt = load ptr, ptr %2, align 8, !tbaa !21
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) @IID_ICompressSetCoderProperties, ptr noundef nonnull %5)
          to label %bb.bi unwind label %bb.bm     ; 0 uses

bb.bf:                                            ; preds = %bb.aw
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bh ], [ 0, %.lr.ph ] ; 3 uses
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !31 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bg unwind label %.split

bb.bg:                                            ; preds = %.lr.ph.split
  %i.cb = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.cc = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cd
  store i32 %i.ca, ptr %i.ce, align 4, !tbaa !4
  %i.cf = load i32, ptr %i.aw, align 4, !tbaa !17
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.aw, align 4, !tbaa !17
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.ptr81.ptr, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %i.ci)
          to label %bb.bh unwind label %.split128 ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count135
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !36

.split:                                           ; preds = %.lr.ph.split
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

.split128:                                        ; preds = %bb.bg
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bp

bb.bi:                                            ; preds = %._crit_edge
  %i.cm = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.co, ptr noundef nonnull %.ptr81.ptr, i32 noundef %i.d)
          to label %bb.bj unwind label %bb.bm     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ct = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit unwind label %bb.bl ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #12
  unreachable

_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.da = load i64, ptr %i.r, align 16            ; 2 uses
  %.idx = shl i64 %i.da, 4
  %.add79 = or disjoint i64 %.idx, 8              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.loopexit124, label %.preheader123

bb.bm:                                            ; preds = %bb.bi, %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = load ptr, ptr %5, align 8, !tbaa !18    ; 3 uses
  %.not.i96 = icmp eq ptr %i.dd, null
  br i1 %.not.i96, label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit97, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit97 unwind label %bb.bo ; 0 uses

bb.bo:                                            ; preds = %bb.bn
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #12
  unreachable

_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit97: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.bp

bb.bp:                                            ; preds = %.split128, %.split128.us, %.split, %.split.us, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit97
  %.pn.pn = phi { ptr, i32 } [ %i.dc, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit97 ], [ %i.br, %.split.us ], [ %i.ck, %.split ], [ %i.cl, %.split128 ], [ %i.bs, %.split128.us ]
  %.165 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.dk = call ptr @__cxa_begin_catch(ptr %.165) #10 ; 0 uses
  %i.dl = load i64, ptr %i.r, align 16            ; 2 uses
  %.idx84 = shl i64 %i.dl, 4
  %.ptr81.add = or disjoint i64 %.idx84, 8        ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bp, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit
  %.idx85 = phi i64 [ %.add86, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ], [ %.ptr81.add, %bb.bp ]
  %.add86 = add nsw i64 %.idx85, -16              ; 3 uses
  %.ptr87 = getelementptr inbounds i8, ptr %i.r, i64 %.add86
  %i.dn = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %.ptr87)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.bq ; 0 uses

bb.bq:                                            ; preds = %.preheader
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #12
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %.preheader
  %i.dq = icmp eq i64 %.add86, 8
  br i1 %i.dq, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit, %bb.bp
  call void @_ZdaPvm(ptr noundef nonnull %i.r, i64 noundef %.ptr81.add) #13
  invoke void @__cxa_rethrow() #14
          to label %bb.ca unwind label %bb.br

bb.br:                                            ; preds = %.loopexit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bt unwind label %bb.bz

.preheader123:                                    ; preds = %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit98
  %.idx78 = phi i64 [ %.add, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit98 ], [ %.add79, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit ]
  %.add = add nsw i64 %.idx78, -16                ; 3 uses
  %.ptr80 = getelementptr inbounds i8, ptr %i.r, i64 %.add
  %i.ds = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %.ptr80)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit98 unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %.preheader123
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #12
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit98:       ; preds = %.preheader123
  %i.dv = icmp eq i64 %.add, 8
  br i1 %i.dv, label %.loopexit124, label %.preheader123

.loopexit124:                                     ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit98, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit
  call void @_ZdaPvm(ptr noundef nonnull %i.r, i64 noundef %.add79) #13
  %.not83 = icmp eq i32 %i.cs, 0
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.pr.pr = load ptr, ptr %3, align 8, !tbaa !18  ; 3 uses
  %.not.i99 = icmp eq ptr %.pr.pr, null
  br i1 %.not.i99, label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100, label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bf
  %.pn89 = phi { ptr, i32 } [ %i.bw, %bb.bf ], [ %i.dr, %bb.br ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.bw

bb.bu:                                            ; preds = %.loopexit124
  %i.dw = load ptr, ptr %.pr.pr, align 8, !tbaa !21
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = invoke noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %.pr.pr)
          to label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100 unwind label %bb.bv ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #12
  unreachable

_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100: ; preds = %.loopexit124, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %.not83, label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread120, label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread

_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread120: ; preds = %bb.au, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100
  br label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread

_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread: ; preds = %bb.au, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread120
  %i.ec = phi i32 [ 0, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100.thread120 ], [ %i.cs, %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit100 ], [ -2147024809, %bb.au ]
  ret i32 %i.ec

bb.bw:                                            ; preds = %bb.bt, %bb.av
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn89, %bb.bt ], [ %i.j, %bb.av ]
  %i.ed = load ptr, ptr %3, align 8, !tbaa !18    ; 3 uses
  %.not.i101 = icmp eq ptr %i.ed, null
  br i1 %.not.i101, label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit102, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !21
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed)
          to label %_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit102 unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %bb.bx
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #12
  unreachable

_ZN9CMyComPtrI27ICompressSetCoderPropertiesED2Ev.exit102: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %.pn89.pn.pn

bb.bz:                                            ; preds = %bb.br
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #12
  unreachable

bb.ca:                                            ; preds = %.loopexit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

declare noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CRecordVectorIjED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #13
  ret void
}

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
end_hunk_0

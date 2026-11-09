Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/archive?download=true
inline.NumInlined: 159
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7Archive12DoGetCommentEP5ArrayIwE:bb.a
  %i.bn = invoke noundef zeroext i8 @_ZN4File7GetByteEv(ptr noundef nonnull align 8 dereferenceable(8256) %0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = zext i8 %i.bm to i64
  %i.bp = zext i8 %i.bn to i64
  %i.bq = shl nuw nsw i64 %i.bp, 8
  %i.br = or disjoint i64 %i.bq, %i.bo
  %i.bs = icmp ult i32 %.044, 2
  br i1 %i.bs, label %.critedge, label %bb.t

bb.s:                                             ; preds = %bb.x, %bb.w, %bb.t, %bb.q, %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN11ComprDataIO18SetCmt13EncryptionEv(ptr noundef nonnull align 8 dereferenceable(266) %5)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  %i.bu = add i32 %.044, -2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48430
  store i8 15, ptr %i.bv, align 2, !tbaa !103
  br label %bb.w

bb.v:                                             ; preds = %.thread146
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48428
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !105
  %i.by = zext i16 %i.bx to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.145 = phi i32 [ %i.bu, %bb.u ], [ %.044, %bb.v ]
  %.0 = phi i64 [ %i.br, %bb.u ], [ %i.by, %bb.v ]
  invoke void @_ZN11ComprDataIO8SetFilesEP4FileS1_(ptr noundef nonnull align 8 dereferenceable(266) %5, ptr noundef nonnull %0, ptr noundef null)
          to label %bb.x unwind label %bb.s

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i8 0, ptr %i.bz, align 8, !tbaa !106
  %i.ca = zext i32 %.145 to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !108
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 2 uses
  invoke void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i32 noundef 2, i32 noundef 1)
          to label %bb.y unwind label %bb.s

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 83
  store i8 1, ptr %i.ce, align 1, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN6UnpackC1EP11ComprDataIO(ptr noundef nonnull align 8 dereferenceable(59688) %6, ptr noundef nonnull %5)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Unpack4InitEmb(ptr noundef nonnull align 8 dereferenceable(59688) %6, i64 noundef 65536, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 19840
  store i64 %.0, ptr %i.cf, align 8, !tbaa !133
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 19864
  store i8 0, ptr %i.cg, align 8, !tbaa !134
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48430
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !103
  %i.cj = zext i8 %i.ci to i32
  invoke void @_ZN6Unpack8DoUnpackEjb(ptr noundef nonnull align 8 dereferenceable(59688) %6, i32 noundef %i.cj, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load i32, ptr %i.c, align 8, !tbaa !62
  %.not62 = icmp eq i32 %i.ck, 1
  br i1 %.not62, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = invoke noundef i32 @_ZN8DataHash8GetCRC32Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.cd)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48432
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !135
  %i.co = trunc i32 %i.cl to i16
  %.not63 = icmp eq i16 %i.cn, %i.co
  br i1 %.not63, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.cq, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.2, ptr %i.cr, align 8, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.2, ptr %i.cs, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.2, ptr %i.ct, align 8, !tbaa !67
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i8 0, i64 40, i1 false)
  store i32 58, ptr %i.cv, align 8, !tbaa !70
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 1, ptr %i.cw, align 8, !tbaa !71
  store ptr %i.cp, ptr %3, align 8, !tbaa !67
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %3)
          to label %bb.au unwind label %bb.ag

bb.af:                                            ; preds = %bb.y
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ag:                                            ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.z
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ah:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  invoke void @_ZN11ComprDataIO15GetUnpackedDataEPPhPm(ptr noundef nonnull align 8 dereferenceable(266) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !72  ; 2 uses
  %.not64 = icmp eq i64 %i.cz, 0
  br i1 %.not64, label %.critedge73, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = add i64 %i.cz, 1                        ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !74 ; 2 uses
  %i.dd = icmp ugt i64 %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 %i.da, ptr %i.de, align 8, !tbaa !75
  br i1 %i.dd, label %bb.ak, label %._ZN5ArrayIwE5AllocEm.exit_crit_edge

._ZN5ArrayIwE5AllocEm.exit_crit_edge:             ; preds = %bb.aj
  %.pre156 = load ptr, ptr %1, align 8, !tbaa !76
  br label %_ZN5ArrayIwE5AllocEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !77 ; 3 uses
  %.not.i.i = icmp ne i64 %i.dg, 0
  %i.dh = icmp ugt i64 %i.da, %i.dg
  %or.cond.i.i = and i1 %.not.i.i, %i.dh
  br i1 %or.cond.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.dg)
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %bb.al
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc74 unwind label %bb.at

.noexc74:                                         ; preds = %.noexc
  %.pre.i.i = load i64, ptr %i.db, align 8, !tbaa !74
  %.pre10.i.i = load i64, ptr %i.de, align 8, !tbaa !75
  br label %bb.am

bb.am:                                            ; preds = %.noexc74, %bb.ak
  %i.di = phi i64 [ %.pre10.i.i, %.noexc74 ], [ %i.da, %bb.ak ]
  %i.dj = phi i64 [ %.pre.i.i, %.noexc74 ], [ %i.dc, %bb.ak ] ; 2 uses
  %i.dk = lshr i64 %i.dj, 2
  %i.dl = add i64 %i.dj, 32
  %i.dm = add i64 %i.dl, %i.dk
  %..i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.dm) ; 2 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !76
  %i.do = shl i64 %..i.i, 2
  %i.dp = call ptr @realloc(ptr noundef %i.dn, i64 noundef %i.do) #19 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.an, label %_ZN5ArrayIwE3AddEm.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE3AddEm.exit.i unwind label %bb.at

_ZN5ArrayIwE3AddEm.exit.i:                        ; preds = %bb.an, %bb.am
  store ptr %i.dp, ptr %1, align 8, !tbaa !76
  store i64 %..i.i, ptr %i.db, align 8, !tbaa !74
  %.pre157 = load i64, ptr %i.de, align 8, !tbaa !75
  br label %_ZN5ArrayIwE5AllocEm.exit

_ZN5ArrayIwE5AllocEm.exit:                        ; preds = %._ZN5ArrayIwE5AllocEm.exit_crit_edge, %_ZN5ArrayIwE3AddEm.exit.i
  %i.dr = phi i64 [ %i.da, %._ZN5ArrayIwE5AllocEm.exit_crit_edge ], [ %.pre157, %_ZN5ArrayIwE3AddEm.exit.i ]
  %i.ds = phi ptr [ %.pre156, %._ZN5ArrayIwE5AllocEm.exit_crit_edge ], [ %i.dp, %_ZN5ArrayIwE3AddEm.exit.i ]
  %i.dt = shl i64 %i.dr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ds, i8 0, i64 %i.dt, i1 false)
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.dv = load ptr, ptr %1, align 8, !tbaa !76
  %i.dw = load i64, ptr %i.de, align 8, !tbaa !75
  %i.dx = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef %i.du, ptr noundef %i.dv, i64 noundef %i.dw)
          to label %bb.ao unwind label %bb.at     ; 0 uses

bb.ao:                                            ; preds = %_ZN5ArrayIwE5AllocEm.exit
  %i.dy = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.dz = call i64 @wcslen(ptr noundef %i.dy) #20 ; 4 uses
  %i.ea = load i64, ptr %i.db, align 8, !tbaa !74 ; 2 uses
  %i.eb = icmp ugt i64 %i.dz, %i.ea
  store i64 %i.dz, ptr %i.de, align 8, !tbaa !75
  br i1 %i.eb, label %bb.ap, label %.critedge73

bb.ap:                                            ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !77 ; 3 uses
  %.not.i.i76 = icmp ne i64 %i.ed, 0
  %i.ee = icmp ugt i64 %i.dz, %i.ed
  %or.cond.i.i77 = and i1 %.not.i.i76, %i.ee
  br i1 %or.cond.i.i77, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.ed)
          to label %.noexc82 unwind label %bb.at

.noexc82:                                         ; preds = %bb.aq
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc83 unwind label %bb.at

.noexc83:                                         ; preds = %.noexc82
  %.pre.i.i80 = load i64, ptr %i.db, align 8, !tbaa !74
  %.pre10.i.i81 = load i64, ptr %i.de, align 8, !tbaa !75
  %.pre158 = load ptr, ptr %1, align 8, !tbaa !76
  br label %bb.ar

bb.ar:                                            ; preds = %.noexc83, %bb.ap
  %i.ef = phi ptr [ %.pre158, %.noexc83 ], [ %i.dy, %bb.ap ]
  %i.eg = phi i64 [ %.pre10.i.i81, %.noexc83 ], [ %i.dz, %bb.ap ]
  %i.eh = phi i64 [ %.pre.i.i80, %.noexc83 ], [ %i.ea, %bb.ap ] ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add i64 %i.eh, 32
  %i.ek = add i64 %i.ej, %i.ei
  %..i.i78 = call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.ek) ; 2 uses
  %i.el = shl i64 %..i.i78, 2
  %i.em = call ptr @realloc(ptr noundef %i.ef, i64 noundef %i.el) #19 ; 2 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.as, label %_ZN5ArrayIwE3AddEm.exit.i79

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE3AddEm.exit.i79 unwind label %bb.at

_ZN5ArrayIwE3AddEm.exit.i79:                      ; preds = %bb.as, %bb.ar
  store ptr %i.em, ptr %1, align 8, !tbaa !76
  store i64 %..i.i78, ptr %i.db, align 8, !tbaa !74
  br label %.critedge73

bb.at:                                            ; preds = %bb.as, %.noexc82, %bb.aq, %bb.an, %.noexc, %bb.al, %_ZN5ArrayIwE5AllocEm.exit, %bb.ah
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.av

.critedge73:                                      ; preds = %_ZN5ArrayIwE3AddEm.exit.i79, %bb.ao, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN6UnpackD1Ev(ptr noundef nonnull align 8 dead_on_return(59688) dereferenceable(59688) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bs

bb.au:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6UnpackD1Ev(ptr noundef nonnull align 8 dead_on_return(59688) dereferenceable(59688) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bt

bb.av:                                            ; preds = %bb.at, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.ag ], [ %i.eo, %bb.at ]
  call void @_ZN6UnpackD1Ev(ptr noundef nonnull align 8 dead_on_return(59688) dereferenceable(59688) %6) #18
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.av ], [ %i.cx, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aw ], [ %i.bt, %bb.s ]
  call void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN5ArrayIhED2Ev.exit

.thread:                                          ; preds = %bb.m, %bb.n
  %i.ep = icmp eq i32 %.044, 0
  br i1 %i.ep, label %bb.bt, label %bb.ay

bb.ay:                                            ; preds = %.thread
  %i.eq = zext i32 %.044 to i64                   ; 3 uses
  %..i.i86 = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 32) ; 4 uses
  %malloc.i = tail call ptr @malloc(i64 %..i.i86) ; 10 uses
  %i.er = icmp eq ptr %malloc.i, null
  br i1 %i.er, label %bb.az, label %_ZN5ArrayIhEC2Em.exit

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN5ArrayIhEC2Em.exit

_ZN5ArrayIhEC2Em.exit:                            ; preds = %bb.ay, %bb.az
  %i.es = load ptr, ptr %0, align 8, !tbaa !61
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = invoke noundef i32 %i.eu(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %malloc.i, i64 noundef %i.eq)
          to label %_ZN5ArrayIhE5AllocEm.exit unwind label %.thread147 ; 4 uses

_ZN5ArrayIhE5AllocEm.exit:                        ; preds = %_ZN5ArrayIhEC2Em.exit
  %i.ew = icmp sgt i32 %i.ev, -1
  %i.ex = icmp ult i32 %i.ev, %.044
  %or.cond69 = select i1 %i.ew, i1 %i.ex, i1 false ; 2 uses
  %i.ey = zext nneg i32 %i.ev to i64
  %spec.select = select i1 %or.cond69, i64 %i.ey, i64 %i.eq ; 3 uses
  %spec.select155 = select i1 %or.cond69, i32 %i.ev, i32 %.044 ; 2 uses
  %i.ez = load i32, ptr %i.c, align 8, !tbaa !62
  %.not59 = icmp eq i32 %i.ez, 1
  br i1 %.not59, label %bb.bf, label %bb.bc

.thread147:                                       ; preds = %bb.br, %.noexc123, %bb.bp, %bb.bm, %bb.be, %bb.bc, %_ZN5ArrayIhEC2Em.exit
  %.sroa.0.0.ph = phi ptr [ %malloc.i, %_ZN5ArrayIhEC2Em.exit ], [ %.sroa.0.4, %bb.br ], [ %malloc.i, %bb.bc ], [ %malloc.i, %bb.be ], [ %.sroa.0.4, %bb.bm ], [ %.sroa.0.4, %bb.bp ], [ %.sroa.0.4, %.noexc123 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bl, %bb.bj, %.noexc104, %bb.bh
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread147
  %lpad.phi152 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread147 ], [ %lpad.thr_comm.split-lp, %bb.ba ]
  %.sroa.0.0151 = phi ptr [ %.sroa.0.0.ph, %.thread147 ], [ %malloc.i, %bb.ba ]
  call void @free(ptr noundef nonnull %.sroa.0.0151) #18
  br label %_ZN5ArrayIhED2Ev.exit

bb.bc:                                            ; preds = %_ZN5ArrayIhE5AllocEm.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 48432
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !135
  %i.fc = zext i32 %spec.select155 to i64
  %i.fd = invoke noundef i32 @_Z5CRC32jPKvm(i32 noundef -1, ptr noundef nonnull %malloc.i, i64 noundef %i.fc)
          to label %bb.bd unwind label %.thread147

bb.bd:                                            ; preds = %bb.bc
  %i.fe = zext i16 %i.fb to i32
  %i.ff = and i32 %i.fd, 65535
  %i.fg = xor i32 %i.ff, %i.fe
  %.not60 = icmp eq i32 %i.fg, 65535
  br i1 %.not60, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.fi, align 8, !tbaa !67
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.fj, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.2, ptr %i.fk, align 8, !tbaa !67
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.2, ptr %i.fl, align 8, !tbaa !67
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fm, i8 0, i64 40, i1 false)
  store i32 58, ptr %i.fn, align 8, !tbaa !70
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.fo, align 8, !tbaa !71
  store ptr %i.fh, ptr %2, align 8, !tbaa !67
  invoke void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
          to label %_ZN5ArrayIhED2Ev.exit130 unwind label %.thread147

bb.bf:                                            ; preds = %bb.bd, %_ZN5ArrayIhE5AllocEm.exit
  %i.fp = add nuw i32 %spec.select155, 1
  %i.fq = zext i32 %i.fp to i64                   ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !74 ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 %i.fq, ptr %i.fu, align 8, !tbaa !75
  br i1 %i.ft, label %bb.bg, label %_ZN5ArrayIwE5AllocEm.exit107

bb.bg:                                            ; preds = %bb.bf
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !77 ; 3 uses
  %.not.i.i98 = icmp ne i64 %i.fw, 0
  %i.fx = icmp ult i64 %i.fw, %i.fq
  %or.cond.i.i99 = and i1 %.not.i.i98, %i.fx
  br i1 %or.cond.i.i99, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.fw)
          to label %.noexc104 unwind label %bb.ba

.noexc104:                                        ; preds = %bb.bh
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc105 unwind label %bb.ba

.noexc105:                                        ; preds = %.noexc104
  %.pre.i.i102 = load i64, ptr %i.fr, align 8, !tbaa !74
  %.pre10.i.i103 = load i64, ptr %i.fu, align 8, !tbaa !75
  br label %bb.bi

bb.bi:                                            ; preds = %.noexc105, %bb.bg
  %i.fy = phi i64 [ %.pre10.i.i103, %.noexc105 ], [ %i.fq, %bb.bg ]
  %i.fz = phi i64 [ %.pre.i.i102, %.noexc105 ], [ %i.fs, %bb.bg ] ; 2 uses
  %i.ga = lshr i64 %i.fz, 2
  %i.gb = add i64 %i.fz, 32
  %i.gc = add i64 %i.gb, %i.ga
  %..i.i100 = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.gc) ; 2 uses
  %i.gd = load ptr, ptr %1, align 8, !tbaa !76
  %i.ge = shl i64 %..i.i100, 2
  %i.gf = tail call ptr @realloc(ptr noundef %i.gd, i64 noundef %i.ge) #19 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.bj, label %_ZN5ArrayIwE3AddEm.exit.i101

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE3AddEm.exit.i101 unwind label %bb.ba

_ZN5ArrayIwE3AddEm.exit.i101:                     ; preds = %bb.bj, %bb.bi
  store ptr %i.gf, ptr %1, align 8, !tbaa !76
  store i64 %..i.i100, ptr %i.fr, align 8, !tbaa !74
  br label %_ZN5ArrayIwE5AllocEm.exit107

_ZN5ArrayIwE5AllocEm.exit107:                     ; preds = %_ZN5ArrayIwE3AddEm.exit.i101, %bb.bf
  %.not154 = icmp samesign ult i64 %spec.select, %..i.i86
  br i1 %.not154, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %_ZN5ArrayIwE5AllocEm.exit107
  %i.gh = add nuw nsw i64 %spec.select, 1
  %i.gi = lshr i64 %..i.i86, 2
  %i.gj = add nuw nsw i64 %..i.i86, 32
  %i.gk = add nuw nsw i64 %i.gj, %i.gi
  %..i.i111 = tail call i64 @llvm.umax.i64(i64 %i.gh, i64 %i.gk)
  %i.gl = tail call ptr @realloc(ptr noundef nonnull %malloc.i, i64 noundef %..i.i111) #19 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %bb.bm unwind label %bb.ba

bb.bm:                                            ; preds = %_ZN5ArrayIwE5AllocEm.exit107, %bb.bl, %bb.bk
  %.sroa.0.4 = phi ptr [ %malloc.i, %_ZN5ArrayIwE5AllocEm.exit107 ], [ null, %bb.bl ], [ %i.gl, %bb.bk ] ; 7 uses
  %i.gn = getelementptr i8, ptr %.sroa.0.4, i64 %spec.select
  store i8 0, ptr %i.gn, align 1, !tbaa !78
  %i.go = load ptr, ptr %1, align 8, !tbaa !76
  %i.gp = load i64, ptr %i.fu, align 8, !tbaa !75
  %i.gq = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %.sroa.0.4, ptr noundef %i.go, i64 noundef %i.gp)
          to label %bb.bn unwind label %.thread147 ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.gr = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.gs = tail call i64 @wcslen(ptr noundef %i.gr) #20 ; 4 uses
  %i.gt = load i64, ptr %i.fr, align 8, !tbaa !74 ; 2 uses
  %i.gu = icmp ugt i64 %i.gs, %i.gt
  store i64 %i.gs, ptr %i.fu, align 8, !tbaa !75
  br i1 %i.gu, label %bb.bo, label %_ZN5ArrayIhED2Ev.exit128

bb.bo:                                            ; preds = %bb.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !77 ; 3 uses
  %.not.i.i117 = icmp ne i64 %i.gw, 0
  %i.gx = icmp ugt i64 %i.gs, %i.gw
  %or.cond.i.i118 = and i1 %.not.i.i117, %i.gx
  br i1 %or.cond.i.i118, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.gw)
          to label %.noexc123 unwind label %.thread147

.noexc123:                                        ; preds = %bb.bp
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc124 unwind label %.thread147

.noexc124:                                        ; preds = %.noexc123
  %.pre.i.i121 = load i64, ptr %i.fr, align 8, !tbaa !74
  %.pre10.i.i122 = load i64, ptr %i.fu, align 8, !tbaa !75
  %.pre = load ptr, ptr %1, align 8, !tbaa !76
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc124, %bb.bo
  %i.gy = phi ptr [ %.pre, %.noexc124 ], [ %i.gr, %bb.bo ]
  %i.gz = phi i64 [ %.pre10.i.i122, %.noexc124 ], [ %i.gs, %bb.bo ]
  %i.ha = phi i64 [ %.pre.i.i121, %.noexc124 ], [ %i.gt, %bb.bo ] ; 2 uses
  %i.hb = lshr i64 %i.ha, 2
  %i.hc = add i64 %i.ha, 32
  %i.hd = add i64 %i.hc, %i.hb
  %..i.i119 = tail call i64 @llvm.umax.i64(i64 %i.gz, i64 %i.hd) ; 2 uses
  %i.he = shl i64 %..i.i119, 2
  %i.hf = tail call ptr @realloc(ptr noundef %i.gy, i64 noundef %i.he) #19 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %bb.br, label %_ZN5ArrayIwE3AddEm.exit.i120

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE3AddEm.exit.i120 unwind label %.thread147

_ZN5ArrayIwE3AddEm.exit.i120:                     ; preds = %bb.br, %bb.bq
  store ptr %i.hf, ptr %1, align 8, !tbaa !76
  store i64 %..i.i119, ptr %i.fr, align 8, !tbaa !74
  br label %_ZN5ArrayIhED2Ev.exit128

_ZN5ArrayIhED2Ev.exit128:                         ; preds = %_ZN5ArrayIwE3AddEm.exit.i120, %bb.bn
  tail call void @free(ptr noundef nonnull %.sroa.0.4) #18
  br label %bb.bs

bb.bs:                                            ; preds = %.critedge73, %_ZN5ArrayIhED2Ev.exit128
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !75
  %i.hj = icmp ne i64 %i.hi, 0
  br label %bb.bt

.critedge:                                        ; preds = %bb.r
  call void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.bt

_ZN5ArrayIhED2Ev.exit130:                         ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @free(ptr noundef nonnull %malloc.i) #18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.au, %_ZN5ArrayIhED2Ev.exit130, %.thread, %.critedge, %bb.o, %bb.f, %bb.g, %bb.d, %bb.e, %bb.bs, %bb.j
  %.350 = phi i1 [ %i.ai, %bb.g ], [ %i.hj, %bb.bs ], [ false, %bb.au ], [ false, %.critedge ], [ false, %_ZN5ArrayIhED2Ev.exit130 ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.e ], [ false, %bb.f ], [ false, %.thread ], [ false, %bb.o ]
  ret i1 %.350

_ZN5ArrayIhED2Ev.exit:                            ; preds = %bb.bb, %bb.ax
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.ax ], [ %lpad.phi152, %bb.bb ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i8 @_ZN4File7GetByteEv(ptr noundef nonnull align 8 dereferenceable(8256)) local_unnamed_addr #2

declare noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108)) local_unnamed_addr #2

declare noundef i64 @_ZN7Archive11GetStartPosEv(ptr noundef nonnull align 8 dereferenceable(57108)) local_unnamed_addr #2

declare noundef i64 @_ZN7Archive14SearchSubBlockEPKw(ptr noundef nonnull align 8 dereferenceable(57108), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7Archive15ReadCommentDataEP5ArrayIwE(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.Array, align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = invoke noundef zeroext i1 @_ZN7Archive11ReadSubDataEP5ArrayIhEP4Fileb(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %2, ptr noundef null, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.n       ; 2 uses

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %_ZN5ArrayIwE5AllocEm.exit37

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 9 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %._ZN5ArrayIhE3AddEm.exit_crit_edge.i

._ZN5ArrayIhE3AddEm.exit_crit_edge.i:             ; preds = %bb.c
  %.pre1.i = load ptr, ptr %2, align 8, !tbaa !79
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  %.not.i.i = icmp ne i64 %i.i, 0
  %i.j = icmp ugt i64 %i.d, %i.i
  %or.cond.i.i = and i1 %.not.i.i, %i.j
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.i)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.e
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc18 unwind label %bb.n

.noexc18:                                         ; preds = %.noexc
  %.pre.i.i = load i64, ptr %i.e, align 8, !tbaa !138
  %.pre10.i.i = load i64, ptr %i.b, align 8, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %.noexc18, %bb.d
  %i.k = phi i64 [ %.pre10.i.i, %.noexc18 ], [ %i.d, %bb.d ]
  %i.l = phi i64 [ %.pre.i.i, %.noexc18 ], [ %i.f, %bb.d ] ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add i64 %i.l, 32
  %i.o = add i64 %i.n, %i.m
  %..i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 %i.o) ; 2 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !79
  %i.q = call ptr @realloc(ptr noundef %i.p, i64 noundef %..i.i) #19 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %.noexc19

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc19 unwind label %bb.n

.noexc19:                                         ; preds = %bb.g, %bb.f
  store ptr %i.q, ptr %2, align 8, !tbaa !79
  store i64 %..i.i, ptr %i.e, align 8, !tbaa !138
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !137
  br label %bb.h

bb.h:                                             ; preds = %.noexc19, %._ZN5ArrayIhE3AddEm.exit_crit_edge.i
  %i.s = phi ptr [ %.pre1.i, %._ZN5ArrayIhE3AddEm.exit_crit_edge.i ], [ %i.q, %.noexc19 ]
  %i.t = phi i64 [ %i.d, %._ZN5ArrayIhE3AddEm.exit_crit_edge.i ], [ %.pre.i, %.noexc19 ]
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  store i8 0, ptr %i.v, align 1, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !74   ; 2 uses
  %i.y = icmp ugt i64 %i.d, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i64 %i.d, ptr %i.z, align 8, !tbaa !75
  br i1 %i.y, label %bb.i, label %_ZN5ArrayIwE5AllocEm.exit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !77 ; 3 uses
  %.not.i.i20 = icmp ne i64 %i.ab, 0
  %i.ac = icmp ugt i64 %i.d, %i.ab
  %or.cond.i.i21 = and i1 %.not.i.i20, %i.ac
  br i1 %or.cond.i.i21, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.ab)
          to label %.noexc25 unwind label %bb.n

.noexc25:                                         ; preds = %bb.j
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc26 unwind label %bb.n

.noexc26:                                         ; preds = %.noexc25
  %.pre.i.i23 = load i64, ptr %i.w, align 8, !tbaa !74
  %.pre10.i.i24 = load i64, ptr %i.z, align 8, !tbaa !75
  br label %bb.k

bb.k:                                             ; preds = %.noexc26, %bb.i
  %i.ad = phi i64 [ %.pre10.i.i24, %.noexc26 ], [ %i.d, %bb.i ]
  %i.ae = phi i64 [ %.pre.i.i23, %.noexc26 ], [ %i.x, %bb.i ] ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = add i64 %i.ae, 32
  %i.ah = add i64 %i.ag, %i.af
  %..i.i22 = call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ah) ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !76
  %i.aj = shl i64 %..i.i22, 2
  %i.ak = call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.aj) #19 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.l, label %_ZN5ArrayIwE3AddEm.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE3AddEm.exit.i unwind label %bb.n

_ZN5ArrayIwE3AddEm.exit.i:                        ; preds = %bb.l, %bb.k
  store ptr %i.ak, ptr %1, align 8, !tbaa !76
  store i64 %..i.i22, ptr %i.w, align 8, !tbaa !74
  br label %_ZN5ArrayIwE5AllocEm.exit

_ZN5ArrayIwE5AllocEm.exit:                        ; preds = %_ZN5ArrayIwE3AddEm.exit.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48840
  %i.an = load i32, ptr %i.am, align 8, !tbaa !62
  %i.ao = icmp eq i32 %i.an, 3
  br i1 %i.ao, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN5ArrayIwE5AllocEm.exit
  %i.ap = load ptr, ptr %2, align 8, !tbaa !79
  %i.aq = load ptr, ptr %1, align 8, !tbaa !76
  %i.ar = load i64, ptr %i.z, align 8, !tbaa !75
  %i.as = invoke noundef zeroext i1 @_Z9UtfToWidePKcPwm(ptr noundef nonnull %i.ap, ptr noundef %i.aq, i64 noundef %i.ar)
          to label %bb.t unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %bb.x, %.noexc34, %bb.v, %bb.l, %.noexc25, %bb.j, %bb.g, %.noexc, %bb.e, %bb.a, %bb.s, %bb.q, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZN5ArrayIhED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.au) #18
  br label %_ZN5ArrayIhED2Ev.exit

_ZN5ArrayIhED2Ev.exit:                            ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.at

bb.p:                                             ; preds = %_ZN5ArrayIwE5AllocEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 31260
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !78
  %i.ax = and i32 %i.aw, 1
  %.not = icmp eq i32 %i.ax, 0
  %i.ay = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = lshr i64 %i.c, 1                        ; 2 uses
  %i.bb = invoke noundef ptr @_Z9RawToWidePKhPwm(ptr noundef nonnull %i.ay, ptr noundef %i.az, i64 noundef %i.ba)
          to label %bb.r unwind label %bb.n       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %1, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ba
  store i32 0, ptr %i.bd, align 4, !tbaa !80
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.be = load i64, ptr %i.z, align 8, !tbaa !75
  %i.bf = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.ay, ptr noundef %i.az, i64 noundef %i.be)
          to label %bb.t unwind label %bb.n       ; 0 uses

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.m
  %i.bg = load ptr, ptr %1, align 8, !tbaa !76    ; 2 uses
  %i.bh = call i64 @wcslen(ptr noundef %i.bg) #20 ; 4 uses
  %i.bi = load i64, ptr %i.w, align 8, !tbaa !74  ; 2 uses
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  store i64 %i.bh, ptr %i.z, align 8, !tbaa !75
  br i1 %i.bj, label %bb.u, label %_ZN5ArrayIwE5AllocEm.exit37

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !77 ; 3 uses
  %.not.i.i28 = icmp ne i64 %i.bl, 0
  %i.bm = icmp ugt i64 %i.bh, %i.bl
  %or.cond.i.i29 = and i1 %.not.i.i28, %i.bm
  br i1 %or.cond.i.i29, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void (ptr, ptr, ...) @_ZN12ErrorHandler13GeneralErrMsgEPKwz(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull @.str.3, i64 noundef %i.bl)
          to label %.noexc34 unwind label %bb.n

.noexc34:                                         ; preds = %bb.v
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %.noexc35 unwind label %bb.n

.noexc35:                                         ; preds = %.noexc34
  %.pre.i.i32 = load i64, ptr %i.w, align 8, !tbaa !74
  %.pre10.i.i33 = load i64, ptr %i.z, align 8, !tbaa !75
  %.pre = load ptr, ptr %1, align 8, !tbaa !76
  br label %bb.w

bb.w:                                             ; preds = %.noexc35, %bb.u
  %i.bn = phi ptr [ %.pre, %.noexc35 ], [ %i.bg, %bb.u ]
  %i.bo = phi i64 [ %.pre10.i.i33, %.noexc35 ], [ %i.bh, %bb.u ]
  %i.bp = phi i64 [ %.pre.i.i32, %.noexc35 ], [ %i.bi, %bb.u ] ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add i64 %i.bp, 32
  %i.bs = add i64 %i.br, %i.bq
  %..i.i30 = call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bs) ; 2 uses
  %i.bt = shl i64 %..i.i30, 2
  %i.bu = call ptr @realloc(ptr noundef %i.bn, i64 noundef %i.bt) #19 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.x, label %_ZN5ArrayIwE3AddEm.exit.i31

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
          to label %_ZN5ArrayIwE3AddEm.exit.i31 unwind label %bb.n

_ZN5ArrayIwE3AddEm.exit.i31:                      ; preds = %bb.x, %bb.w
  store ptr %i.bu, ptr %1, align 8, !tbaa !76
  store i64 %..i.i30, ptr %i.w, align 8, !tbaa !74
  br label %_ZN5ArrayIwE5AllocEm.exit37

_ZN5ArrayIwE5AllocEm.exit37:                      ; preds = %_ZN5ArrayIwE3AddEm.exit.i31, %bb.t, %bb.b
  %i.bw = load ptr, ptr %2, align 8, !tbaa !79    ; 2 uses
  %.not.i38 = icmp eq ptr %i.bw, null
  br i1 %.not.i38, label %_ZN5ArrayIhED2Ev.exit39, label %bb.y

bb.y:                                             ; preds = %_ZN5ArrayIwE5AllocEm.exit37
  call void @free(ptr noundef nonnull %i.bw) #18
  br label %_ZN5ArrayIhED2Ev.exit39

_ZN5ArrayIhED2Ev.exit39:                          ; preds = %_ZN5ArrayIwE5AllocEm.exit37, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z5uiMsgIJRA2048_wEEv14UIMESSAGE_CODEDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(8192) %1) local_unnamed_addr #0 comdat {
_Z9uiMsgBaseIRA2048_wJEEvR10uiMsgStoreOT_DpOT0_.exit:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.a, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.2, ptr %i.c, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.2, ptr %i.d, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  store i32 %0, ptr %i.f, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.g, align 8, !tbaa !71
  store ptr %1, ptr %2, align 8, !tbaa !67
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZN11ComprDataIOC1Ev(ptr noundef nonnull align 8 dereferenceable(266)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11ComprDataIO18SetCmt13EncryptionEv(ptr noundef nonnull align 8 dereferenceable(266)) local_unnamed_addr #2

declare void @_ZN11ComprDataIO8SetFilesEP4FileS1_(ptr noundef nonnull align 8 dereferenceable(266), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN8DataHash4InitE9HASH_TYPEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6UnpackC1EP11ComprDataIO(ptr noundef nonnull align 8 dereferenceable(59688), ptr noundef) unnamed_addr #2

declare void @_ZN6Unpack4InitEmb(ptr noundef nonnull align 8 dereferenceable(59688), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN6Unpack8DoUnpackEjb(ptr noundef nonnull align 8 dereferenceable(59688), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN8DataHash8GetCRC32Ev(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11ComprDataIO15GetUnpackedDataEPPhPm(ptr noundef nonnull align 8 dereferenceable(266), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6UnpackD1Ev(ptr noundef nonnull align 8 dead_on_return(59688) dereferenceable(59688)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11ComprDataIOD1Ev(ptr noundef nonnull align 8 dead_on_return(266) dereferenceable(266)) unnamed_addr #5

declare noundef i32 @_Z5CRC32jPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7Archive11ReadSubDataEP5ArrayIhEP4Fileb(ptr noundef nonnull align 8 dereferenceable(57108), ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_Z9UtfToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z9RawToWidePKhPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7Archive11ViewCommentEv(ptr noundef nonnull align 8 dereferenceable(57108) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.Array.5, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11056
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57446
  %i.d = load i8, ptr %i.c, align 2, !tbaa !140, !range !58, !noundef !59
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48846
  %i.g = load i8, ptr %i.f, align 2, !tbaa !57, !range !58, !noundef !59
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN5ArrayIwED2Ev.exit12

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(57108) %0)
          to label %.noexc unwind label %bb.e, !inline_history !141

.noexc:                                           ; preds = %bb.c
  %i.m = invoke noundef zeroext i1 @_ZN7Archive12DoGetCommentEP5ArrayIwE(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %1)
          to label %.noexc9 unwind label %bb.e

.noexc9:                                          ; preds = %.noexc
  %i.n = load ptr, ptr %0, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %i.l, i32 noundef 0)
          to label %_ZN7Archive10GetCommentEP5ArrayIwE.exit unwind label %bb.e, !inline_history !141

_ZN7Archive10GetCommentEP5ArrayIwE.exit:          ; preds = %.noexc9
  %.pr.pre = load ptr, ptr %1, align 8, !tbaa !76 ; 5 uses
  br i1 %i.m, label %bb.d, label %_ZN7Archive10GetCommentEP5ArrayIwE.exit.thread

bb.d:                                             ; preds = %_ZN7Archive10GetCommentEP5ArrayIwE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75
  %i.s = tail call ptr @wcschr(ptr noundef nonnull %.pr.pre, i32 noundef signext 26) #20 ; 2 uses
  %.not = icmp eq ptr %i.s, null
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %.pr.pre to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2
  %.0 = select i1 %.not, i64 %i.r, i64 %i.w
  invoke void @_Z10OutCommentPKwm(ptr noundef nonnull %.pr.pre, i64 noundef %.0)
          to label %_ZN7Archive10GetCommentEP5ArrayIwE.exit.thread.thread17 unwind label %bb.e

bb.e:                                             ; preds = %.noexc9, %.noexc, %bb.c, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN5ArrayIwED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.y) #18
  br label %_ZN5ArrayIwED2Ev.exit

_ZN5ArrayIwED2Ev.exit:                            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.x

_ZN7Archive10GetCommentEP5ArrayIwE.exit.thread:   ; preds = %_ZN7Archive10GetCommentEP5ArrayIwE.exit
end_hunk_0

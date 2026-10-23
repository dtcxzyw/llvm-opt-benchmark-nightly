Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/options?download=true
inline.NumInlined: 549
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3ozz7options6Parser5ParseEiPKPKc:bb.a
  %i.be = trunc nuw nsw i64 %indvars.iv158 to i32
  store i8 1, ptr %i.bd, align 1, !tbaa !25
  %.pre = load i32, ptr %i.z, align 8, !tbaa !35
  br label %.loopexit

bb.g:                                             ; preds = %bb.f, %.lr.ph134
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 3 uses
  %i.bf = load i32, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next159, %i.bg
  br i1 %i.bh, label %.lr.ph134, label %.loopexit.loopexit, !llvm.loop !144

.loopexit.loopexit:                               ; preds = %bb.g
  %i.bi = trunc nuw nsw i64 %indvars.iv.next159 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader119, %_ZN3ozz7options6Option5ParseEPKc.exit
  %i.bj = phi i32 [ %.pre, %_ZN3ozz7options6Option5ParseEPKc.exit ], [ %i.an, %.preheader119 ], [ %i.bf, %.loopexit.loopexit ] ; 3 uses
  %.052123 = phi i32 [ %i.be, %_ZN3ozz7options6Option5ParseEPKc.exit ], [ 0, %.preheader119 ], [ %i.bi, %.loopexit.loopexit ]
  %i.bk = icmp eq i32 %.052123, %i.bj
  br i1 %i.bk, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.l

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.loopexit
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 31) ; 0 uses
  %i.bm = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #27
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.aq, i64 noundef %i.bm) ; 0 uses
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.bp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.bq = getelementptr i8, ptr %i.bp, i64 -24
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 240
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !58 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !64
  %.not.i1.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 67
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !65
  br label %bb.k

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bu)
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef signext i8 %i.cb(ptr noundef nonnull align 8 dereferenceable(570) %i.bu, i8 noundef signext 10), !inline_history !1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi i8 [ %i.by, %bb.i ], [ %i.cc, %bb.j ]
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd) ; 0 uses
  br label %.loopexit121

bb.l:                                             ; preds = %.lr.ph137, %.loopexit
  %i.cf = phi i32 [ %i.an, %.lr.ph137 ], [ %i.bj, %.loopexit ]
  %i.cg = phi i32 [ %i.ao, %.lr.ph137 ], [ %i.bj, %.loopexit ]
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit121, label %.lr.ph137, !llvm.loop !145

.loopexit121:                                     ; preds = %bb.l, %.preheader120, %bb.k
  %i.ch = phi i1 [ false, %bb.k ], [ true, %.preheader120 ], [ true, %bb.l ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !26 ; 2 uses
  %.not.i64 = icmp eq ptr %i.cj, null
  br i1 %.not.i64, label %_ZN3ozz7options6Option8ValidateEi.exit.thread, label %_ZN3ozz7options6Option8ValidateEi.exit

_ZN3ozz7options6Option8ValidateEi.exit:           ; preds = %.loopexit121
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cl = tail call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i32 noundef %.058.lcssa), !inline_history !150
  br i1 %i.cl, label %_ZN3ozz7options6Option8ValidateEi.exit.thread, label %.thread113

_ZN3ozz7options6Option8ValidateEi.exit.thread:    ; preds = %.loopexit121, %_ZN3ozz7options6Option8ValidateEi.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !26 ; 2 uses
  %.not.i66 = icmp eq ptr %i.cn, null
  br i1 %.not.i66, label %_ZN3ozz7options6Option8ValidateEi.exit68.thread, label %_ZN3ozz7options6Option8ValidateEi.exit68

_ZN3ozz7options6Option8ValidateEi.exit68:         ; preds = %_ZN3ozz7options6Option8ValidateEi.exit.thread
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cp = tail call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(40) %i.co, i32 noundef %.058.lcssa), !inline_history !150
  %or.cond117 = and i1 %i.ch, %i.cp
  br i1 %or.cond117, label %bb.m, label %.thread113

_ZN3ozz7options6Option8ValidateEi.exit68.thread:  ; preds = %_ZN3ozz7options6Option8ValidateEi.exit.thread
  br i1 %i.ch, label %bb.m, label %.thread113

bb.m:                                             ; preds = %_ZN3ozz7options6Option8ValidateEi.exit68, %_ZN3ozz7options6Option8ValidateEi.exit68.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 393
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29, !range !81, !noundef !82
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.thread115, label %bb.n

.thread115:                                       ; preds = %bb.m
  tail call void @_ZN3ozz7options6Parser4HelpEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %.thread107

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29, !range !81, !noundef !82
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.o, label %.preheader118

.preheader118:                                    ; preds = %bb.n
  %i.cw = load i32, ptr %i.z, align 8, !tbaa !35  ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph141.preheader, label %.thread107

.lr.ph141.preheader:                              ; preds = %.preheader118
  %wide.trip.count169 = zext nneg i32 %i.cw to i64
  br label %.lr.ph141

bb.o:                                             ; preds = %bb.n
  %i.cy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.11, i64 noundef 8) ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !40 ; 3 uses
  %.not.i69 = icmp eq ptr %i.da, null
  br i1 %.not.i69, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !51
  %i.dh = or i32 %i.dg, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.de, i32 noundef %i.dh)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70

bb.q:                                             ; preds = %bb.o
  %i.di = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.da) #27
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.da, i64 noundef %i.di) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70: ; preds = %bb.p, %bb.q
  %i.dk = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !58 ; 6 uses
  %.not.i.i.i76 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i76, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !64
  %.not.i1.i.i78 = icmp eq i8 %i.dr, 0
  br i1 %.not.i1.i.i78, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 67
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !65
  br label %.thread111

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i77
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dp)
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef signext i8 %i.dw(ptr noundef nonnull align 8 dereferenceable(570) %i.dp, i8 noundef signext 10), !inline_history !1
  br label %.thread111

.thread111:                                       ; preds = %bb.t, %bb.s
  %.0.i.i.i79 = phi i8 [ %i.dt, %bb.s ], [ %i.dx, %bb.t ]
  %i.dy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i79)
  %i.dz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dy) ; 0 uses
  br label %.thread107

bb.u:                                             ; preds = %.lr.ph141
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.lr.ph143, label %.lr.ph141, !llvm.loop !146

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %bb.u
  %indvars.iv166 = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next167, %bb.u ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv166
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !67 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 25
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !25, !range !81, !noundef !82
  %i.ee = trunc nuw i8 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.eg = load i8, ptr %i.ef, align 8, !range !81
  %3 = icmp eq i8 %i.eg, 0
  %i.eh = select i1 %i.ee, i1 true, i1 %3
  br i1 %i.eh, label %bb.u, label %bb.v

bb.v:                                             ; preds = %.lr.ph141
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv166
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 17) ; 0 uses
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !67
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !22 ; 3 uses
  %.not.i71 = icmp eq ptr %i.em, null
  br i1 %.not.i71, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.en = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i32, ptr %i.er, align 8, !tbaa !51
  %i.et = or i32 %i.es, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.eq, i32 noundef %i.et)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72

bb.x:                                             ; preds = %bb.v
  %i.eu = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.em) #27
  %i.ev = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.em, i64 noundef %i.eu) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %bb.w, %bb.x
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 19) ; 0 uses
  %i.ex = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.ey = getelementptr i8, ptr %i.ex, i64 -24
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 240
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !58 ; 6 uses
  %.not.i.i.i81 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i81, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !64
  %.not.i1.i.i83 = icmp eq i8 %i.fe, 0
  br i1 %.not.i1.i.i83, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 67
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !65
  br label %.thread109

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fc)
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !31
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call noundef signext i8 %i.fj(ptr noundef nonnull align 8 dereferenceable(570) %i.fc, i8 noundef signext 10), !inline_history !1
  br label %.thread109

.thread109:                                       ; preds = %bb.aa, %bb.z
  %.0.i.i.i84 = phi i8 [ %i.fg, %bb.z ], [ %i.fk, %bb.aa ]
  %i.fl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i84)
  %i.fm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl) ; 0 uses
  br label %.thread113

.lr.ph143:                                        ; preds = %bb.u, %_ZN3ozz7options6Option8ValidateEi.exit75.thread
  %i.fn = phi i32 [ %i.ft, %_ZN3ozz7options6Option8ValidateEi.exit75.thread ], [ %i.cw, %bb.u ]
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %_ZN3ozz7options6Option8ValidateEi.exit75.thread ], [ 0, %bb.u ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv171
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !67 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !26 ; 2 uses
  %.not.i73 = icmp eq ptr %i.fr, null
  br i1 %.not.i73, label %_ZN3ozz7options6Option8ValidateEi.exit75.thread, label %_ZN3ozz7options6Option8ValidateEi.exit75

_ZN3ozz7options6Option8ValidateEi.exit75:         ; preds = %.lr.ph143
  %i.fs = tail call noundef zeroext i1 %i.fr(ptr noundef nonnull align 8 dereferenceable(40) %i.fp, i32 noundef %.058.lcssa), !inline_history !150
  br i1 %i.fs, label %_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge, label %.thread113

_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge: ; preds = %_ZN3ozz7options6Option8ValidateEi.exit75
  %.pre174 = load i32, ptr %i.z, align 8, !tbaa !35
  br label %_ZN3ozz7options6Option8ValidateEi.exit75.thread

_ZN3ozz7options6Option8ValidateEi.exit75.thread:  ; preds = %_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge, %.lr.ph143
  %i.ft = phi i32 [ %.pre174, %_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge ], [ %i.fn, %.lr.ph143 ] ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp slt i64 %indvars.iv.next172, %i.fu
  br i1 %i.fv, label %.lr.ph143, label %.thread107, !llvm.loop !147

.thread113:                                       ; preds = %_ZN3ozz7options6Option8ValidateEi.exit75, %_ZN3ozz7options6Option8ValidateEi.exit68.thread, %_ZN3ozz7options6Option8ValidateEi.exit, %_ZN3ozz7options6Option8ValidateEi.exit68, %.thread109
  tail call void @_ZN3ozz7options6Parser4HelpEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  br label %.thread107

.thread107:                                       ; preds = %_ZN3ozz7options6Option8ValidateEi.exit75.thread, %.preheader118, %.thread115, %.thread111, %.thread113, %bb.a
  %.059 = phi i32 [ 2, %bb.a ], [ 2, %.thread113 ], [ 1, %.thread111 ], [ 1, %.thread115 ], [ 0, %.preheader118 ], [ 0, %_ZN3ozz7options6Option8ValidateEi.exit75.thread ]
  ret i32 %.059
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz7options20ParsedExecutablePathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer7parser_E, align 8, !tbaa !33
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !100
  store i8 0, ptr %i.b, align 8, !tbaa !65
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer12placeholder_E, i64 264), align 8, !tbaa !37, !noalias !153 ; 3 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer12placeholder_E, i64 272), align 16, !tbaa !38, !noalias !153
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !97, !alias.scope !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !100, !alias.scope !153
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #28
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i64 %i.j, 1
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.n, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i.i unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  store ptr %i.r, ptr %0, align 8, !tbaa !99, !alias.scope !153
  store i64 %i.j, ptr %i.f, align 8, !tbaa !65, !alias.scope !153
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i.i, %bb.c
  %i.u = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.v = load i8, ptr %i.d, align 1, !tbaa !65
  store i8 %i.v, ptr %i.u, align 1, !tbaa !65
  br label %_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.d, i64 %i.j, i1 false)
  br label %_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev.exit

_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  store i64 %i.j, ptr %i.g, align 8, !tbaa !100, !alias.scope !153
  %i.w = load ptr, ptr %0, align 8, !tbaa !99, !alias.scope !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.j
  store i8 0, ptr %i.x, align 1, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !97
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !100
end_hunk_0
begin_hunk_1_@_ZNK3ozz7options6Parser15executable_pathB5cxx11Ev:bb.a
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef %i.m, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i unwind label %bb.f ; 2 uses

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  store ptr %i.q, ptr %0, align 8, !tbaa !99
  store i64 %i.i, ptr %i.e, align 8, !tbaa !65
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i, %bb.a
  %i.t = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEE9_M_createERmm.exit.i.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEC2IPKcvEET_SA_RKS5_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.b, align 1, !tbaa !65
  store i8 %i.u, ptr %i.t, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEC2IPKcvEET_SA_RKS5_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.b, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEC2IPKcvEET_SA_RKS5_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcEN3ozz12StdAllocatorIcEEEC2IPKcvEET_SA_RKS5_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  store i64 %i.i, ptr %i.f, align 8, !tbaa !100
  %i.v = load ptr, ptr %0, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.i
  store i8 0, ptr %i.w, align 1, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN3ozz7options20ParsedExecutableNameEv() local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer7parser_E, align 8, !tbaa !33
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer12placeholder_E, i64 280), align 8
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK3ozz7options6Parser15executable_nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN3ozz7options21ParsedExecutableUsageEv() local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer7parser_E, align 8, !tbaa !33
  %.not = icmp eq ptr %i.a, null
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3ozz7options8internal12_GLOBAL__N_115GlobalRegistrer12placeholder_E, i64 296), align 8
  %spec.select = select i1 %.not, ptr @.str.2, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK3ozz7options6Parser5usageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  ret ptr %i.b
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN3ozz7options6OptionD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3ozz7options6Option8ValidateEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3ozz7options6Option5ParseEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !25, !range !81, !noundef !82
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 1, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz7options6Option14RestoreDefaultEv(ptr noundef nonnull align 8 dereferenceable(40) initializes((25, 26)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.a, align 1, !tbaa !25
  %i.b = load ptr, ptr %0, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz7options6ParserC2Ev(ptr noundef nonnull align 8 dereferenceable(400) initializes((256, 304)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr @.str.2, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr getelementptr inbounds nuw (i8, ptr @.str.2, i64 1), ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @.str.2, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  tail call void @_ZN3ozz7options11TypedOptionIbEC1EPKcS4_bbPFbRKNS0_6OptionEiE(ptr noundef nonnull align 8 dereferenceable(42) %i.g, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @_ZN3ozz7options12_GLOBAL__N_123ValidateExclusiveOptionERKNS0_6OptionEi)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  invoke void @_ZN3ozz7options11TypedOptionIbEC1EPKcS4_bbPFbRKNS0_6OptionEiE(ptr noundef nonnull align 8 dereferenceable(42) %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @_ZN3ozz7options12_GLOBAL__N_123ValidateExclusiveOptionERKNS0_6OptionEi)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr @.str.27, ptr %i.f, align 8, !tbaa !40
  store ptr @.str.26, ptr %i.i, align 8, !tbaa !41
  %i.j = invoke noundef zeroext i1 @_ZN3ozz7options6Parser14RegisterOptionEPNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %i.g)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef zeroext i1 @_ZN3ozz7options6Parser14RegisterOptionEPNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 8, !tbaa !35
  store i32 %i.l, ptr %i.b, align 4, !tbaa !36
  ret void

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN3ozz7options11TypedOptionIbED1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %i.h) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.m, %bb.e ]
  tail call void @_ZN3ozz7options11TypedOptionIbED1Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %i.g) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN3ozz7options12_GLOBAL__N_123ValidateExclusiveOptionERKNS0_6OptionEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.b = load i8, ptr %i.a, align 1, !tbaa !83, !range !81, !noundef !82
  %.not4 = icmp eq i8 %i.b, 0
  %2 = icmp eq i32 %1, 1
  %or.cond.not = or i1 %2, %.not4                 ; 2 uses
  br i1 %or.cond.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.44, i64 noundef 8) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !51
  %i.l = or i32 %i.k, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.i, i32 noundef %i.l)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #27
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.e, i64 noundef %i.m) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c, %bb.d
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.45, i64 noundef 68) ; 0 uses
  %i.p = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i8, ptr %i.v, align 8, !tbaa !64
  %.not.i1.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 67
  %i.y = load i8, ptr %i.x, align 1, !tbaa !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.u)
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.u, i8 noundef signext 10), !inline_history !1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.y, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret i1 %or.cond.not
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ozz7options6ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !35   ; 5 uses
  %i.d = sext i32 %i.c to i64                     ; 7 uses
  %.idx7.i = shl nsw i64 %i.d, 3                  ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.idx7.i ; 4 uses
  %i.f = ashr i64 %i.d, 2                         ; 5 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = and i64 %.idx7.i, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %0, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.047.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  %.02946.i.i.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.f ] ; 9 uses
  %i.i = load ptr, ptr %.02946.i.i.i.i.i, align 8, !tbaa !67
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = icmp eq ptr %i.l, %i.a
  br i1 %i.m, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit66, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit68, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 32
  %i.u = add nsw i64 %.047.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i.i, 1
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.f
  %i.w = and i64 %i.d, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.a
  %.pre-phi56.i.i.i.i.i = phi i64 [ %i.w, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.d, %bb.a ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %0, %bb.a ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i, label %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.x = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !67
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.h, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.z, %bb.h ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !67
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i:               ; preds = %bb.i, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ad = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !67
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i, label %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit

_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i

_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit66: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i

_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit68: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i

_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i: ; preds = %bb.b, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit66, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit68, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.g
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.g ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.ah, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit68 ], [ %i.af, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.ag, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i.loopexit.split.loop.exit66 ], [ %.02946.i.i.i.i.i, %bb.b ] ; 4 uses
  %i.ai = icmp eq ptr %.028.i.i.i.i.i, %i.e
  %.01730.i.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i, i64 8 ; 2 uses
  %.not31.i.i.i = icmp eq ptr %.01730.i.i.i, %i.e
  %or.cond.i.i.i = select i1 %i.ai, i1 true, i1 %.not31.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i, %bb.k
  %.01733.i.i.i = phi ptr [ %.017.i.i.i, %bb.k ], [ %.01730.i.i.i, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i ] ; 2 uses
  %.032.i.i.i = phi ptr [ %.1.i.i.i, %bb.k ], [ %.028.i.i.i.i.i, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.01733.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.aj, ptr %.032.i.i.i, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %.032.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.1.i.i.i = phi ptr [ %.032.i.i.i, %.lr.ph.i.i.i ], [ %i.al, %bb.j ] ; 2 uses
  %.017.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.017.i.i.i, %i.e
  br i1 %.not.i.i.i, label %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i: ; preds = %bb.k, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i
  %.016.i.i.i = phi ptr [ %.028.i.i.i.i.i, %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i ], [ %.1.i.i.i, %bb.k ]
  %.not3.i = icmp eq ptr %.016.i.i.i, %i.e
  br i1 %.not3.i, label %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i
  %i.am = add nsw i32 %i.c, -1                    ; 3 uses
  store i32 %i.am, ptr %i.b, align 8, !tbaa !35
  %.pre = sext i32 %i.am to i64                   ; 3 uses
  %.pre57 = shl nsw i64 %.pre, 3
  %.pre58 = ashr i64 %.pre, 2
  br label %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit

_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit: ; preds = %bb.l, %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i, %._crit_edge._crit_edge52.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.pre-phi59 = phi i64 [ %.pre58, %bb.l ], [ %i.f, %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i ], [ %i.f, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.f, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.idx7.i1.pre-phi = phi i64 [ %.pre57, %bb.l ], [ %.idx7.i, %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i ], [ %.idx7.i, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %.idx7.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ %i.d, %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i ], [ %i.d, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.d, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.an = phi i32 [ %i.am, %bb.l ], [ %i.c, %_ZSt6removeIPPN3ozz7options6OptionES3_ET_S5_S5_RKT0_.exit.i ], [ %i.c, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.c, %._crit_edge.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 9 uses
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.idx7.i1.pre-phi ; 4 uses
  %i.aq = icmp sgt i64 %.pre-phi59, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i24, label %._crit_edge.i.i.i.i.i2

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit
  %i.ar = and i64 %.idx7.i1.pre-phi, -32
  %scevgep.i.i.i.i.i25 = getelementptr i8, ptr %0, i64 %i.ar
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i24
  %.047.i.i.i.i.i26 = phi i64 [ %.pre-phi59, %.lr.ph.i.i.i.i.i24 ], [ %i.be, %bb.q ] ; 2 uses
  %.02946.i.i.i.i.i27 = phi ptr [ %0, %.lr.ph.i.i.i.i.i24 ], [ %i.bd, %bb.q ] ; 9 uses
  %i.as = load ptr, ptr %.02946.i.i.i.i.i27, align 8, !tbaa !67
  %i.at = icmp eq ptr %i.as, %i.ao
  br i1 %i.at, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i8, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i27, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !67
  %i.aw = icmp eq ptr %i.av, %i.ao
  br i1 %i.aw, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i8.loopexit.split.loop.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i27, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67
  %i.az = icmp eq ptr %i.ay, %i.ao
  br i1 %i.az, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i8.loopexit.split.loop.exit74, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i27, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !67
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %_ZSt9__find_ifIPPN3ozz7options6OptionEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_.exit.i.i.i8.loopexit.split.loop.exit76, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i27, i64 32
  %i.be = add nsw i64 %.047.i.i.i.i.i26, -1
  %i.bf = icmp sgt i64 %.047.i.i.i.i.i26, 1
  br i1 %i.bf, label %bb.m, label %._crit_edge.loopexit.i.i.i.i.i28, !llvm.loop !3

._crit_edge.loopexit.i.i.i.i.i28:                 ; preds = %bb.q
  %i.bg = and i64 %.pre-phi, 3
  br label %._crit_edge.i.i.i.i.i2

._crit_edge.i.i.i.i.i2:                           ; preds = %._crit_edge.loopexit.i.i.i.i.i28, %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit
  %.pre-phi56.i.i.i.i.i3 = phi i64 [ %i.bg, %._crit_edge.loopexit.i.i.i.i.i28 ], [ %.pre-phi, %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit ]
  %.029.lcssa.i.i.i.i.i4 = phi ptr [ %scevgep.i.i.i.i.i25, %._crit_edge.loopexit.i.i.i.i.i28 ], [ %0, %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i.i3, label %_ZN3ozz7options6Parser16UnregisterOptionEPNS0_6OptionE.exit32 [
    i64 3, label %bb.r
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i22
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i5
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i2
end_hunk_1

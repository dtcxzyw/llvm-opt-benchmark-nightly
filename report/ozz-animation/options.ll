Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/options?download=true
inline.NumInlined: 549
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3ozz7options6Parser5ParseEiPKPKc:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull %i.aq), !inline_history !149
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph134
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 25
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25, !range !81, !noundef !82
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.g, label %_ZN3ozz7options6Option5ParseEPKc.exit

_ZN3ozz7options6Option5ParseEPKc.exit:            ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 25
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

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %_ZNK3ozz7options6Option10statisfiedEv.exit.thread
  %indvars.iv166 = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next167, %_ZNK3ozz7options6Option10statisfiedEv.exit.thread ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv166
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !67 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 25
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !25, !range !81, !noundef !82
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZNK3ozz7options6Option10statisfiedEv.exit.thread, label %_ZNK3ozz7options6Option10statisfiedEv.exit

_ZNK3ozz7options6Option10statisfiedEv.exit:       ; preds = %.lr.ph141
  %3 = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %4 = load i8, ptr %3, align 8, !tbaa !24, !range !81, !noundef !82
  %5 = trunc nuw i8 %4 to i1
  br i1 %5, label %bb.u, label %_ZNK3ozz7options6Option10statisfiedEv.exit.thread

bb.u:                                             ; preds = %_ZNK3ozz7options6Option10statisfiedEv.exit
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv166
  %i.eg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 17) ; 0 uses
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !22 ; 3 uses
  %.not.i71 = icmp eq ptr %i.ej, null
  br i1 %.not.i71, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ek = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !51
  %i.eq = or i32 %i.ep, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.en, i32 noundef %i.eq)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72

bb.w:                                             ; preds = %bb.u
  %i.er = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ej) #27
  %i.es = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.ej, i64 noundef %i.er) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %bb.v, %bb.w
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.13, i64 noundef 19) ; 0 uses
  %i.eu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !31
  %i.ev = getelementptr i8, ptr %i.eu, i64 -24
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 240
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !58 ; 6 uses
  %.not.i.i.i81 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i81, label %bb.x, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  tail call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 56
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !64
  %.not.i1.i.i83 = icmp eq i8 %i.fb, 0
  br i1 %.not.i1.i.i83, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 67
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !65
  br label %.thread109

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i82
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ez)
  %i.fe = load ptr, ptr %i.ez, align 8, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef signext i8 %i.fg(ptr noundef nonnull align 8 dereferenceable(570) %i.ez, i8 noundef signext 10), !inline_history !1
  br label %.thread109

.thread109:                                       ; preds = %bb.z, %bb.y
  %.0.i.i.i84 = phi i8 [ %i.fd, %bb.y ], [ %i.fh, %bb.z ]
  %i.fi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i84)
  %i.fj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fi) ; 0 uses
  br label %.thread113

_ZNK3ozz7options6Option10statisfiedEv.exit.thread: ; preds = %.lr.ph141, %_ZNK3ozz7options6Option10statisfiedEv.exit
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %.lr.ph143, label %.lr.ph141, !llvm.loop !146

.lr.ph143:                                        ; preds = %_ZNK3ozz7options6Option10statisfiedEv.exit.thread, %_ZN3ozz7options6Option8ValidateEi.exit75.thread
  %i.fk = phi i32 [ %i.fq, %_ZN3ozz7options6Option8ValidateEi.exit75.thread ], [ %i.cw, %_ZNK3ozz7options6Option10statisfiedEv.exit.thread ]
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %_ZN3ozz7options6Option8ValidateEi.exit75.thread ], [ 0, %_ZNK3ozz7options6Option10statisfiedEv.exit.thread ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv171
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !67 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !26 ; 2 uses
  %.not.i73 = icmp eq ptr %i.fo, null
  br i1 %.not.i73, label %_ZN3ozz7options6Option8ValidateEi.exit75.thread, label %_ZN3ozz7options6Option8ValidateEi.exit75

_ZN3ozz7options6Option8ValidateEi.exit75:         ; preds = %.lr.ph143
  %i.fp = tail call noundef zeroext i1 %i.fo(ptr noundef nonnull align 8 dereferenceable(40) %i.fm, i32 noundef %.058.lcssa), !inline_history !150
  br i1 %i.fp, label %_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge, label %.thread113

_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge: ; preds = %_ZN3ozz7options6Option8ValidateEi.exit75
  %.pre174 = load i32, ptr %i.z, align 8, !tbaa !35
  br label %_ZN3ozz7options6Option8ValidateEi.exit75.thread

_ZN3ozz7options6Option8ValidateEi.exit75.thread:  ; preds = %_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge, %.lr.ph143
  %i.fq = phi i32 [ %.pre174, %_ZN3ozz7options6Option8ValidateEi.exit75._ZN3ozz7options6Option8ValidateEi.exit75.thread_crit_edge ], [ %i.fk, %.lr.ph143 ] ; 2 uses
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next172, %i.fr
  br i1 %i.fs, label %.lr.ph143, label %.thread107, !llvm.loop !147

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
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 8 uses
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.e unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw i64 %i.i, 1
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
end_hunk_0

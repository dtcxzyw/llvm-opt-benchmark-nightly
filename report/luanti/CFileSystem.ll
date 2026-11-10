Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CFileSystem?download=true
inline.NumInlined: 512
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2io11CFileSystem14createFileListEv:bb.a

vec.epilog.vector.body:                           ; preds = %pred.store.continue255, %vec.epilog.ph
  %index230 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next256, %pred.store.continue255 ] ; 9 uses
  %next.gep231 = getelementptr i8, ptr %i.j, i64 %index230 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep232 = getelementptr i8, ptr %i.cd, i64 1
  %i.ce = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep233 = getelementptr i8, ptr %i.ce, i64 2
  %i.cf = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep234 = getelementptr i8, ptr %i.cf, i64 3
  %i.cg = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep235 = getelementptr i8, ptr %i.cg, i64 4
  %i.ch = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep236 = getelementptr i8, ptr %i.ch, i64 5
  %i.ci = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep237 = getelementptr i8, ptr %i.ci, i64 6
  %i.cj = getelementptr i8, ptr %i.j, i64 %index230
  %next.gep238 = getelementptr i8, ptr %i.cj, i64 7
  %wide.load239 = load <8 x i8>, ptr %next.gep231, align 1, !tbaa !19
  %i.ck = icmp eq <8 x i8> %wide.load239, splat (i8 92) ; 8 uses
  %i.cl = extractelement <8 x i1> %i.ck, i64 0
  br i1 %i.cl, label %pred.store.if240, label %pred.store.continue241

pred.store.if240:                                 ; preds = %vec.epilog.vector.body
  store i8 47, ptr %next.gep231, align 1, !tbaa !19
  br label %pred.store.continue241

pred.store.continue241:                           ; preds = %pred.store.if240, %vec.epilog.vector.body
  %i.cm = extractelement <8 x i1> %i.ck, i64 1
  br i1 %i.cm, label %pred.store.if242, label %pred.store.continue243

pred.store.if242:                                 ; preds = %pred.store.continue241
  store i8 47, ptr %next.gep232, align 1, !tbaa !19
  br label %pred.store.continue243

pred.store.continue243:                           ; preds = %pred.store.if242, %pred.store.continue241
  %i.cn = extractelement <8 x i1> %i.ck, i64 2
  br i1 %i.cn, label %pred.store.if244, label %pred.store.continue245

pred.store.if244:                                 ; preds = %pred.store.continue243
  store i8 47, ptr %next.gep233, align 1, !tbaa !19
  br label %pred.store.continue245

pred.store.continue245:                           ; preds = %pred.store.if244, %pred.store.continue243
  %i.co = extractelement <8 x i1> %i.ck, i64 3
  br i1 %i.co, label %pred.store.if246, label %pred.store.continue247

pred.store.if246:                                 ; preds = %pred.store.continue245
  store i8 47, ptr %next.gep234, align 1, !tbaa !19
  br label %pred.store.continue247

pred.store.continue247:                           ; preds = %pred.store.if246, %pred.store.continue245
  %i.cp = extractelement <8 x i1> %i.ck, i64 4
  br i1 %i.cp, label %pred.store.if248, label %pred.store.continue249

pred.store.if248:                                 ; preds = %pred.store.continue247
  store i8 47, ptr %next.gep235, align 1, !tbaa !19
  br label %pred.store.continue249

pred.store.continue249:                           ; preds = %pred.store.if248, %pred.store.continue247
  %i.cq = extractelement <8 x i1> %i.ck, i64 5
  br i1 %i.cq, label %pred.store.if250, label %pred.store.continue251

pred.store.if250:                                 ; preds = %pred.store.continue249
  store i8 47, ptr %next.gep236, align 1, !tbaa !19
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue249
  %i.cr = extractelement <8 x i1> %i.ck, i64 6
  br i1 %i.cr, label %pred.store.if252, label %pred.store.continue253

pred.store.if252:                                 ; preds = %pred.store.continue251
  store i8 47, ptr %next.gep237, align 1, !tbaa !19
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.cs = extractelement <8 x i1> %i.ck, i64 7
  br i1 %i.cs, label %pred.store.if254, label %pred.store.continue255

pred.store.if254:                                 ; preds = %pred.store.continue253
  store i8 47, ptr %next.gep238, align 1, !tbaa !19
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %index.next256 = add nuw i64 %index230, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next256, %n.vec229
  br i1 %i.ct, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %pred.store.continue255
  %cmp.n257 = icmp eq i64 %.pr, %n.vec229
  br i1 %cmp.n257, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.02.07.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.cc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.e
  %.sroa.02.07.i.i = phi ptr [ %i.cw, %bb.e ], [ %.sroa.02.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cu = load i8, ptr %.sroa.02.07.i.i, align 1, !tbaa !19
  %i.cv = icmp eq i8 %i.cu, 92
  br i1 %i.cv, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  store i8 47, ptr %.sroa.02.07.i.i, align 1, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cw, %i.k
  br i1 %.not.i.i, label %_ZN4core6stringIcE7replaceEcc.exit, label %.lr.ph.i.i, !llvm.loop !122

_ZN4core6stringIcE7replaceEcc.exit:               ; preds = %bb.e, %vec.epilog.middle.block, %middle.block
  %.pr93 = load i64, ptr %i.c, align 8, !tbaa !18 ; 3 uses
  %i.cx = icmp eq i64 %.pr93, 0
  br i1 %i.cx, label %_ZN4core6stringIcE6appendEc.exit, label %_ZNK4core6stringIcE8lastCharEv.exit

_ZNK4core6stringIcE8lastCharEv.exit:              ; preds = %_ZN4core6stringIcE7replaceEcc.exit
  %i.cy = load ptr, ptr %1, align 8, !tbaa !35
  %i.cz = getelementptr i8, ptr %i.cy, i64 %.pr93
  %i.da = getelementptr i8, ptr %i.cz, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !19
  %.not = icmp eq i8 %i.db, 47
  br i1 %.not, label %_ZN4core6stringIcE6appendEc.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4core6stringIcE8lastCharEv.exit
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.pr93, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %_ZN4core6stringIcE6appendEc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4core6stringIcE6appendEc.exit:                 ; preds = %bb.a, %_ZN4core6stringIcEC2ERKS1_.exit, %bb.f, %_ZNK4core6stringIcE8lastCharEv.exit, %_ZN4core6stringIcE7replaceEcc.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !29
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.g, label %bb.y

bb.g:                                             ; preds = %_ZN4core6stringIcE6appendEc.exit
  %i.dg = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2io9CFileListC1ERKN4core6stringIcEEbb(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNK4core6stringIcEplIcEES1_PKT_(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef i32 %i.dj(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.k unwind label %bb.p       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.dl = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.k
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #26
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.dq = load ptr, ptr %1, align 8, !tbaa !35
  %i.dr = call noalias ptr @opendir(ptr noundef %i.dq) ; 3 uses
  %.not41 = icmp eq ptr %i.dr, null
  br i1 %.not41, label %bb.al, label %.preheader

.preheader:                                       ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %.backedge, %.preheader
  %i.dv = invoke ptr @readdir(ptr noundef nonnull %i.dr)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.m:                                             ; preds = %bb.l
  %.not42 = icmp eq ptr %i.dv, null
  br i1 %.not42, label %bb.x, label %sub_0

sub_0:                                            ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 19 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1
  %.not98 = icmp eq i8 %i.dx, 46
  br i1 %.not98, label %.tail, label %.tail94.thread

.tail:                                            ; preds = %sub_0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %.backedge, label %sub_196

.backedge:                                        ; preds = %.tail, %.tail94, %_ZN4core6stringIcED2Ev.exit57
  br label %bb.l, !llvm.loop !123

sub_196:                                          ; preds = %.tail
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.ec = load i8, ptr %i.eb, align 1
  %.not100 = icmp eq i8 %i.ec, 46
  br i1 %.not100, label %.tail94, label %.tail94.thread

.tail94:                                          ; preds = %sub_196
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 21
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %.backedge, label %.tail94.thread

bb.n:                                             ; preds = %bb.h
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 96) #26
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core6stringIcED2Ev.exit53

bb.p:                                             ; preds = %bb.j
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZN4core6stringIcED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %bb.p
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #26
  br label %_ZN4core6stringIcED2Ev.exit53

_ZN4core6stringIcED2Ev.exit53:                    ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50, %bb.o
  %.pn39 = phi { ptr, i32 } [ %i.eh, %bb.o ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ %i.ei, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.f, %bb.g, %bb.y, %bb.al
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.tail94.thread:                                   ; preds = %sub_0, %sub_196, %.tail94
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.eo = call i32 @stat(ptr noundef nonnull %i.dw, ptr noundef nonnull %3) #27
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.tail94.thread
  %i.eq = load i64, ptr %i.ds, align 8, !tbaa !126
  %i.er = trunc i64 %i.eq to i32
  %i.es = load i32, ptr %i.dt, align 8, !tbaa !127
  %i.et = and i32 %i.es, 61440
  %i.eu = icmp eq i32 %i.et, 16384
  br label %bb.s

bb.r:                                             ; preds = %.tail94.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 18
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !130
  %i.ex = icmp eq i8 %i.ew, 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.019 = phi i32 [ %i.er, %bb.q ], [ 0, %bb.r ]
  %.0.in = phi i1 [ %i.eu, %bb.q ], [ %i.ex, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNK4core6stringIcEplIcEES1_PKT_(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.dw)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ey = load ptr, ptr %i.dg, align 8, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = invoke noundef i32 %i.fa(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i32 noundef %.019, i1 noundef zeroext %.0.in, i32 noundef 0)
          to label %bb.u unwind label %bb.w       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.fc = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.du
  br i1 %i.fd, label %_ZN4core6stringIcED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.u
  %i.fe = load i64, ptr %i.du, align 8, !tbaa !19
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #26
  br label %_ZN4core6stringIcED2Ev.exit57

_ZN4core6stringIcED2Ev.exit57:                    ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.backedge

bb.v:                                             ; preds = %bb.s
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4core6stringIcED2Ev.exit61

bb.w:                                             ; preds = %bb.t
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.du
  br i1 %i.fj, label %_ZN4core6stringIcED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58: ; preds = %bb.w
  %i.fk = load i64, ptr %i.du, align 8, !tbaa !19
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #26
  br label %_ZN4core6stringIcED2Ev.exit61

_ZN4core6stringIcED2Ev.exit61:                    ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58, %bb.v
  %.pn43 = phi { ptr, i32 } [ %i.fg, %bb.v ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i58 ], [ %i.fh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.loopexit.split-lp

bb.x:                                             ; preds = %bb.m
  %i.fm = call i32 @closedir(ptr noundef nonnull %i.dr) ; 0 uses
  br label %bb.al

bb.y:                                             ; preds = %_ZN4core6stringIcE6appendEc.exit
  %i.fn = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2io9CFileListC1ERKN4core6stringIcEEbb(ptr noundef nonnull align 8 dereferenceable(80) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.fo, ptr %5, align 8, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.fp, align 8, !tbaa !18
  store i8 0, ptr %i.fo, align 8, !tbaa !19
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.fs, align 8, !tbaa !18
  store i8 0, ptr %i.fr, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ft, ptr %6, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.fu, align 8, !tbaa !18
  store i8 0, ptr %i.ft, align 8, !tbaa !19
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !15
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.fx, align 8, !tbaa !18
  store i8 0, ptr %i.fw, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNK4core6stringIcEplIcEES1_PKT_(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.fy = load ptr, ptr %i.fn, align 8, !tbaa !11
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef i32 %i.ga(ptr noundef nonnull align 8 dereferenceable(80) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.ac unwind label %bb.ah     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZN4core6stringIcED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62: ; preds = %bb.ac
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !19
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #26
  br label %_ZN4core6stringIcED2Ev.exit65

_ZN4core6stringIcED2Ev.exit65:                    ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNK4core6stringIcEplIcEES1_PKT_(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %_ZN4core6stringIcED2Ev.exit65
  %i.gh = load ptr, ptr %i.fn, align 8, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = invoke noundef i32 %i.gj(ptr noundef nonnull align 8 dereferenceable(80) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 0, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.ae unwind label %bb.aj     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.gl = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZN4core6stringIcED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66: ; preds = %bb.ae
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !19
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #26
  br label %_ZN4core6stringIcED2Ev.exit69

_ZN4core6stringIcED2Ev.exit69:                    ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.gq = load ptr, ptr %i.fv, align 8, !tbaa !35 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fw
  br i1 %i.gr, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4core6stringIcED2Ev.exit69
  %i.gs = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #26
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %_ZN4core6stringIcED2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.gu = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.ft
  br i1 %i.gv, label %_ZN2io14SFileListEntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.gw = load i64, ptr %i.ft, align 8, !tbaa !19
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #26
  br label %_ZN2io14SFileListEntryD2Ev.exit

_ZN2io14SFileListEntryD2Ev.exit:                  ; preds = %_ZN4core6stringIcED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.gy = load ptr, ptr %i.fq, align 8, !tbaa !35 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fr
  br i1 %i.gz, label %_ZN4core6stringIcED2Ev.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70: ; preds = %_ZN2io14SFileListEntryD2Ev.exit
  %i.ha = load i64, ptr %i.fr, align 8, !tbaa !19
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #26
  br label %_ZN4core6stringIcED2Ev.exit.i71

_ZN4core6stringIcED2Ev.exit.i71:                  ; preds = %_ZN2io14SFileListEntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i70
  %i.hc = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fo
  br i1 %i.hd, label %_ZN2io14SFileListEntryD2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i72: ; preds = %_ZN4core6stringIcED2Ev.exit.i71
  %i.he = load i64, ptr %i.fo, align 8, !tbaa !19
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #26
  br label %_ZN2io14SFileListEntryD2Ev.exit75

_ZN2io14SFileListEntryD2Ev.exit75:                ; preds = %_ZN4core6stringIcED2Ev.exit.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.al

bb.af:                                            ; preds = %bb.z
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef 96) #26
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.aa
  %i.hh = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !16, i64 8, !6, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!"_ZTSN2io11IFileSystemE"}
!21 = !{!"_ZTSN2io15EFileSystemTypeE", !6, i64 0}
!22 = !{!"any p2 pointer", !12, i64 0}
!23 = !{!"p2 _ZTSN2io14IArchiveLoaderE", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIPN2io14IArchiveLoaderESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIPN2io14IArchiveLoaderESaIS2_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIPN2io14IArchiveLoaderESaIS2_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIPN2io14IArchiveLoaderESaIS2_EE", !26, i64 0}
!28 = !{!"_ZTSN2io11CFileSystemE", !20, i64 0, !21, i64 8, !6, i64 16, !27, i64 80}
!29 = !{!28, !21, i64 8}
!30 = !{!24, !23, i64 8}
!31 = !{!24, !23, i64 16}
!32 = !{!"p1 _ZTSN2io14IArchiveLoaderE", !12, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!24, !23, i64 0}
!35 = !{!17, !13, i64 0}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"_ZTS17IReferenceCounted", !7, i64 8}
!39 = !{!38, !7, i64 8}
!40 = !{ptr @_ZN2io11CFileSystemD1Ev}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 8, i32 24}
!44 = !{!16, !16, i64 0}
!45 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !12, i64 0}
!46 = !{!"_ZTSNSt8__detail15_List_node_baseE", !45, i64 0, !45, i64 8}
!47 = !{!46, !45, i64 0}
!48 = !{!"_ZTSNSt8__detail17_List_node_headerE", !46, i64 0, !16, i64 16}
!49 = distinct !{!49, !36}
!50 = distinct !{null}
!51 = !{!23, !23, i64 0}
!52 = !{ptr @_ZN2io11CFileSystemD0Ev, ptr @_ZN2io11CFileSystemD1Ev}
!53 = !{ptr @_ZN2io11CFileSystemD0Ev}
!54 = distinct !{!54, !36}
!55 = distinct !{!55, !36}
!56 = distinct !{!56, !36}
!57 = distinct !{!57, !37, !41, !42}
!58 = distinct !{!58, !37, !41, !42}
!59 = distinct !{!59, !37, !42, !41}
!60 = distinct !{!60, i1 true, !"_ZNK4core6stringIcE9subStringEjib"}
!61 = distinct !{!61, !60, !"_ZNK4core6stringIcE9subStringEjib: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!63 = distinct !{!63, !62, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!64 = distinct !{!64, !37}
!65 = distinct !{!65, !37}
!66 = !{!61}
!67 = !{!63}
!68 = !{!63, !61}
!69 = distinct !{!69, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!70 = distinct !{!70, !69, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!71 = distinct !{!71, !37, !41, !42}
!72 = distinct !{!72, !37, !41, !42}
!73 = distinct !{!73, !37, !42, !41}
!74 = !{!70}
!75 = !{!"branch_weights", i32 4, i32 12}
!76 = distinct !{!76, i1 true, !"_ZNK4core6stringIcE9subStringEjib"}
!77 = distinct !{!77, !76, !"_ZNK4core6stringIcE9subStringEjib: argument 0"}
!78 = distinct !{!78, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!79 = distinct !{!79, !78, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZNK4core6stringIcE9subStringEjib"}
!81 = distinct !{!81, !80, !"_ZNK4core6stringIcE9subStringEjib: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!83 = distinct !{!83, !82, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!84 = distinct !{!84, i1 true, !"_ZNK4core6stringIcE9subStringEjib"}
!85 = distinct !{!85, !84, !"_ZNK4core6stringIcE9subStringEjib: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!87 = distinct !{!87, !86, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!88 = distinct !{!88, !37, !41, !42}
!89 = distinct !{!89, !37, !41, !42}
!90 = distinct !{!90, !37, !42, !41}
!91 = distinct !{!91, !37}
!92 = distinct !{!92, i1 true, !"_ZNK4core6stringIcE9subStringEjib"}
!93 = distinct !{!93, !92, !"_ZNK4core6stringIcE9subStringEjib: argument 0"}
!94 = distinct !{!94, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!95 = distinct !{!95, !94, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!96 = distinct !{!96, !37}
!97 = distinct !{!97, !37}
!98 = !{!77}
!99 = !{!79}
!100 = !{!79, !77}
!101 = !{!81}
!102 = !{!83}
!103 = !{!83, !81}
!104 = !{!85}
!105 = !{!87}
!106 = !{!87, !85}
!107 = !{!93}
!108 = !{!95}
!109 = !{!95, !93}
!110 = !{!46, !45, i64 8}
!111 = !{!48, !16, i64 16}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !37}
!114 = distinct !{!114, !36}
!115 = distinct !{!115, !37}
!116 = distinct !{!116, !36}
!117 = !{!"_ZTSNSt7__cxx1110_List_baseIN4core6stringIcEESaIS3_EE10_List_implE", !48, i64 0}
!118 = !{!"_ZTSNSt7__cxx1110_List_baseIN4core6stringIcEESaIS3_EEE", !117, i64 0}
!119 = !{!118, !16, i64 16}
!120 = distinct !{!120, !37, !41, !42}
!121 = distinct !{!121, !37, !41, !42}
!122 = distinct !{!122, !37, !42, !41}
!123 = distinct !{!123, !37}
!124 = !{!"_ZTS8timespec", !16, i64 0, !16, i64 8}
!125 = !{!"_ZTS4stat", !16, i64 0, !16, i64 8, !16, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !124, i64 72, !124, i64 88, !124, i64 104, !6, i64 120}
!126 = !{!125, !16, i64 48}
!127 = !{!125, !7, i64 24}
!128 = !{!"short", !6, i64 0}
!129 = !{!"_ZTS6dirent", !16, i64 0, !16, i64 8, !128, i64 16, !6, i64 18, !6, i64 19}
!130 = !{!129, !6, i64 18}
end_hunk_1

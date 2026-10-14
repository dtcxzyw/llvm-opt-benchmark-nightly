Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereobm?download=true
inline.NumInlined: 442
inline.NumDeleted: 208
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv12StereoBMImpl7computeERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207: ; preds = %bb.cn
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !27
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i208: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body215

bb.co:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit206
  %i.ez = icmp sgt i32 %i.er, 0
  br i1 %i.ez, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.fa = icmp eq i32 %i.er, 2
  %.sroa.gep301 = getelementptr inbounds nuw i8, ptr %37, i64 88
  %.sroa.gep301.val = load i32, ptr %.sroa.gep301, align 8
  %.val = load i32, ptr %i.eh, align 4            ; 2 uses
  %i.fb = select i1 %i.fa, i32 %.sroa.gep301.val, i32 %.val
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.fc = icmp eq i32 %i.er, 0
  %i.fd = zext i1 %i.fc to i32
  %.pre = load i32, ptr %i.eh, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.fe = phi i32 [ %.val, %bb.cp ], [ %.pre, %bb.cq ]
  %i.ff = phi i32 [ %i.fb, %bb.cp ], [ %i.fd, %bb.cq ]
  %i.fg = icmp eq i32 %i.er, 2
  %i.fh = icmp sgt i32 %i.er, -1
  %i.fi = zext i1 %i.fh to i32
  %i.fj = select i1 %i.fg, i32 %i.fe, i32 %i.fi
  %.sroa.2.0.insert.ext.i210 = zext i32 %i.fj to i64
  %.sroa.2.0.insert.shift.i211 = shl nuw i64 %.sroa.2.0.insert.ext.i210, 32
  %.sroa.0.0.insert.ext.i212 = zext i32 %i.ff to i64
  %.sroa.0.0.insert.insert.i213 = or disjoint i64 %.sroa.2.0.insert.shift.i211, %.sroa.0.0.insert.ext.i212
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.eq, i64 %.sroa.0.0.insert.insert.i213, i32 noundef 0)
          to label %bb.cs unwind label %bb.ds

bb.cs:                                            ; preds = %bb.cr
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.fl = load i32, ptr %i.dr, align 8, !tbaa !58 ; 6 uses
  %i.fm = icmp slt i32 %i.fl, 3
  br i1 %i.fm, label %bb.cw, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc225 unwind label %bb.ds

.noexc225:                                        ; preds = %bb.ct
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.30, i32 noundef 109) #23
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %.noexc225
  unreachable

bb.cv:                                            ; preds = %.noexc225
  %i.fn = landingpad { ptr, i32 }
          cleanup
  %i.fo = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218: ; preds = %bb.cv
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !27
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i219: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body215

bb.cw:                                            ; preds = %bb.cs
  %i.ft = icmp sgt i32 %i.fl, 0
  br i1 %i.ft, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.fu = icmp eq i32 %i.fl, 2
  %.sroa.gep304 = getelementptr inbounds nuw i8, ptr %37, i64 88
  %.sroa.gep304.val = load i32, ptr %.sroa.gep304, align 8
  %.val319 = load i32, ptr %i.eh, align 4         ; 2 uses
  %i.fv = select i1 %i.fu, i32 %.sroa.gep304.val, i32 %.val319
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.fw = icmp eq i32 %i.fl, 0
  %i.fx = zext i1 %i.fw to i32
  %.pre327 = load i32, ptr %i.eh, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.fy = phi i32 [ %.val319, %bb.cx ], [ %.pre327, %bb.cy ]
  %i.fz = phi i32 [ %i.fv, %bb.cx ], [ %i.fx, %bb.cy ]
  %i.ga = icmp eq i32 %i.fl, 2
  %i.gb = icmp sgt i32 %i.fl, -1
  %i.gc = zext i1 %i.gb to i32
  %i.gd = select i1 %i.ga, i32 %i.fy, i32 %i.gc
  %.sroa.2.0.insert.ext.i221 = zext i32 %i.gd to i64
  %.sroa.2.0.insert.shift.i222 = shl nuw i64 %.sroa.2.0.insert.ext.i221, 32
  %.sroa.0.0.insert.ext.i223 = zext i32 %i.fz to i64
  %.sroa.0.0.insert.insert.i224 = or disjoint i64 %.sroa.2.0.insert.shift.i222, %.sroa.0.0.insert.ext.i223
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.fk, i64 %.sroa.0.0.insert.insert.i224, i32 noundef 0)
          to label %bb.da unwind label %bb.ds

bb.da:                                            ; preds = %bb.cz
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.gf = load i32, ptr %i.dr, align 8, !tbaa !58 ; 6 uses
  %i.gg = icmp slt i32 %i.gf, 3
  br i1 %i.gg, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc236 unwind label %bb.ds

.noexc236:                                        ; preds = %bb.db
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.30, i32 noundef 109) #23
          to label %bb.dc unwind label %bb.dd

bb.dc:                                            ; preds = %.noexc236
  unreachable

bb.dd:                                            ; preds = %.noexc236
  %i.gh = landingpad { ptr, i32 }
          cleanup
  %i.gi = load ptr, ptr %8, align 8, !tbaa !32    ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229: ; preds = %bb.dd
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !27
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i230: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body215

bb.de:                                            ; preds = %bb.da
  %i.gn = icmp sgt i32 %i.gf, 0
  br i1 %i.gn, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.go = icmp eq i32 %i.gf, 2
  %.sroa.gep307 = getelementptr inbounds nuw i8, ptr %37, i64 88
  %.sroa.gep307.val = load i32, ptr %.sroa.gep307, align 8
  %.val320 = load i32, ptr %i.eh, align 4         ; 2 uses
  %i.gp = select i1 %i.go, i32 %.sroa.gep307.val, i32 %.val320
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  %i.gq = icmp eq i32 %i.gf, 0
  %i.gr = zext i1 %i.gq to i32
  %.pre328 = load i32, ptr %i.eh, align 4
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.gs = phi i32 [ %.val320, %bb.df ], [ %.pre328, %bb.dg ]
  %i.gt = phi i32 [ %i.gp, %bb.df ], [ %i.gr, %bb.dg ]
  %i.gu = icmp eq i32 %i.gf, 2
  %i.gv = icmp sgt i32 %i.gf, -1
  %i.gw = zext i1 %i.gv to i32
  %i.gx = select i1 %i.gu, i32 %i.gs, i32 %i.gw
  %.sroa.2.0.insert.ext.i232 = zext i32 %i.gx to i64
  %.sroa.2.0.insert.shift.i233 = shl nuw i64 %.sroa.2.0.insert.ext.i232, 32
  %.sroa.0.0.insert.ext.i234 = zext i32 %i.gt to i64
  %.sroa.0.0.insert.insert.i235 = or disjoint i64 %.sroa.2.0.insert.shift.i233, %.sroa.0.0.insert.ext.i234
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.ge, i64 %.sroa.0.0.insert.insert.i235, i32 noundef 3)
          to label %bb.di unwind label %bb.ds

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(208) %i.eq)
          to label %bb.dj unwind label %bb.dt

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %i.fk)
          to label %bb.dk unwind label %bb.du

bb.dk:                                            ; preds = %bb.dj
  %i.gy = load i32, ptr %i.df, align 8, !tbaa !44
  %i.gz = load i32, ptr %i.bz, align 4, !tbaa !45 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %37, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !59 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !60 ; 4 uses
  %i.he = add i32 %i.gy, -1
  %i.hf = add i32 %i.he, %i.gz                    ; 2 uses
  %.sroa.speculated292 = call i32 @llvm.smax.i32(i32 %i.hf, i32 0)
  %.not109 = icmp slt i32 %.sroa.speculated292, %i.hb
  br i1 %.not109, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %.sroa.speculated287 = call i32 @llvm.smin.i32(i32 %i.hf, i32 0) ; 2 uses
  %i.hg = add nsw i32 %.sroa.speculated287, %i.hb
  %i.hh = sub nsw i32 0, %.sroa.speculated287
  %i.hi = icmp samesign ule i32 %i.hb, %i.hh
  %i.hj = icmp slt i32 %i.hg, %i.gz
  %or.cond3 = select i1 %i.hi, i1 true, i1 %i.hj
  br i1 %or.cond3, label %bb.dm, label %bb.dw

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.hk = sitofp i32 %i.di to double
  %i.hl = load i32, ptr %39, align 8, !tbaa !61
  %i.hm = and i32 %i.hl, 4095
  %i.hn = icmp samesign ult i32 %i.hm, 5
  %i.ho = shl nuw nsw i32 1, %.
  %i.hp = uitofp nneg i32 %i.ho to double
  %i.hq = fdiv nnan double 1.000000e+00, %i.hp
  %i.hr = select i1 %i.hn, double 1.000000e+00, double %i.hq
  %i.hs = fmul double %i.hr, %i.hk
  %i.ht = insertelement <4 x double> poison, double %i.hs, i64 0
  %i.hu = shufflevector <4 x double> %i.ht, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.hu, ptr %42, align 8, !tbaa !63, !alias.scope !153
  %i.hv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.dn unwind label %bb.dv     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.fk

bb.do:                                            ; preds = %bb.by, %bb.bx, %bb.bw
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.dp:                                            ; preds = %bb.ca, %bb.bz, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.dq:                                            ; preds = %bb.cb, %bb.ch
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dr:                                            ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ds:                                            ; preds = %bb.db, %bb.ct, %bb.cl, %bb.dh, %bb.cz, %bb.cr
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.body215

bb.dt:                                            ; preds = %bb.di
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.du:                                            ; preds = %bb.dj
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.dv:                                            ; preds = %bb.dm
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.fo

bb.dw:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %39)
          to label %bb.dx unwind label %bb.eh

bb.dx:                                            ; preds = %bb.dw
  %i.ie = icmp eq i32 %i.e, 5
  br i1 %i.ie, label %bb.dy, label %bb.ej

bb.dy:                                            ; preds = %bb.dx
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %39, i64 72
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !58 ; 6 uses
  %i.ii = icmp slt i32 %i.ih, 3
  br i1 %i.ii, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc249 unwind label %bb.ei

.noexc249:                                        ; preds = %bb.dz
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.30, i32 noundef 109) #23
          to label %bb.ea unwind label %bb.eb

bb.ea:                                            ; preds = %.noexc249
  unreachable

bb.eb:                                            ; preds = %.noexc249
  %i.ij = landingpad { ptr, i32 }
          cleanup
  %i.ik = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i242: ; preds = %bb.eb
  %i.in = load i64, ptr %i.il, align 8, !tbaa !27
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i243: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body250

bb.ec:                                            ; preds = %bb.dy
  %i.ip = icmp sgt i32 %i.ih, 0
  br i1 %i.ip, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.iq = icmp eq i32 %i.ih, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.iq, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %39, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ir = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !8
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.is = icmp eq i32 %i.ih, 0
  %i.it = zext i1 %i.is to i32
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.iu = phi i32 [ %i.ir, %bb.ed ], [ %i.it, %bb.ee ]
  %i.iv = icmp eq i32 %i.ih, 2
  %i.iw = getelementptr inbounds nuw i8, ptr %39, i64 84
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = icmp sgt i32 %i.ih, -1
  %i.iz = zext i1 %i.iy to i32
  %i.ja = select i1 %i.iv, i32 %i.ix, i32 %i.iz
  %.sroa.2.0.insert.ext.i245 = zext i32 %i.ja to i64
  %.sroa.2.0.insert.shift.i246 = shl nuw i64 %.sroa.2.0.insert.ext.i245, 32
  %.sroa.0.0.insert.ext.i247 = zext i32 %i.iu to i64
  %.sroa.0.0.insert.insert.i248 = or disjoint i64 %.sroa.2.0.insert.shift.i246, %.sroa.0.0.insert.ext.i247
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %i.if, i64 %.sroa.0.0.insert.insert.i248, i32 noundef 4)
          to label %bb.eg unwind label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.jb = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %i.if)
          to label %bb.ej unwind label %bb.ei     ; 0 uses

bb.eh:                                            ; preds = %bb.dw
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ei:                                            ; preds = %bb.dz, %bb.eg, %bb.ef
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body250

bb.ej:                                            ; preds = %bb.eg, %bb.dx
  %i.je = load i32, ptr %i.be, align 8, !tbaa !19
  %i.jf = icmp slt i32 %i.je, 32
  %i.jg = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.jh = icmp slt i32 %i.jg, 22
  %i.ji = and i1 %i.jf, %i.jh
  %i.jj = select i1 %i.ji, double 8.000000e+06, double 2.000000e+06
  %i.jk = mul nsw i32 %i.hb, %i.gz
  %i.jl = sitofp i32 %i.jk to double
  %i.jm = fdiv double %i.jj, %i.jl                ; 2 uses
  %i.jn = add nsw i32 %i.jg, -1
  %i.jo = sitofp i32 %i.jn to double
  %i.jp = fmul nnan double %i.jo, 1.000000e+01    ; 2 uses
  %i.jq = fcmp olt double %i.jm, %i.jp
  %i.jr = sitofp i32 %i.hd to double              ; 3 uses
  %.sroa.speculated283 = select i1 %i.jq, double %i.jp, double %i.jm ; 2 uses
  %i.js = fcmp ogt double %.sroa.speculated283, %i.jr
  %.sroa.speculated = select i1 %i.js, double %i.jr, double %.sroa.speculated283
  %i.jt = fdiv double %i.jr, %.sroa.speculated
  %i.ju = call double @llvm.ceil.f64(double %i.jt)
  %i.jv = fptosi double %i.ju to i32              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  %i.jw = sext i32 %i.jv to i64
  %i.jx = zext nneg i32 %i.hb to i64              ; 2 uses
  %i.jy = sext i32 %i.hd to i64
  invoke void @_ZN2cv8BufferBMC2EmmmRKNS_14StereoBMParamsE(ptr noundef nonnull align 8 dereferenceable(464) %44, i64 noundef %i.jw, i64 noundef %i.jx, i64 noundef %i.jy, ptr noundef nonnull align 4 dereferenceable(80) %i.aj)
          to label %bb.ek unwind label %bb.ex

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  store i32 0, ptr %45, align 4, !tbaa !65
  %i.jz = getelementptr inbounds nuw i8, ptr %45, i64 4
  store i32 2, ptr %i.jz, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv16PrefilterInvokerE, i64 16), ptr %46, align 8, !tbaa !14
  %i.ka = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr %44, ptr %i.ka, align 8, !tbaa !154
  %i.kb = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.aj, ptr %i.kb, align 8, !tbaa !155
  %i.kc = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %37, ptr %i.kc, align 8, !tbaa !70
  %i.kd = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %38, ptr %i.kd, align 8, !tbaa !70
  %i.ke = getelementptr inbounds nuw i8, ptr %46, i64 24
  store ptr %40, ptr %i.ke, align 8, !tbaa !70
  %i.kf = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr %41, ptr %i.kf, align 8, !tbaa !70
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %46, double noundef 1.000000e+00)
          to label %bb.el unwind label %bb.ey

bb.el:                                            ; preds = %bb.ek
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %.sroa.9.12.insert.ext = zext i32 %i.hd to i64
  %.sroa.9.12.insert.shift = shl nuw i64 %.sroa.9.12.insert.ext, 32
  %.sroa.9.12.insert.insert = or disjoint i64 %.sroa.9.12.insert.shift, %i.jx ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0262.0.copyload = load i64, ptr %i.kg, align 8, !tbaa !8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5263.0.copyload = load i64, ptr %.sroa.5263.0..sroa_idx, align 8, !tbaa !8 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload260 = load i64, ptr %i.kh, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8 ; 3 uses
  %.sroa.5263.8.extract.trunc = trunc i64 %.sroa.5263.0.copyload to i32
  %i.ki = icmp slt i32 %.sroa.5263.8.extract.trunc, 1
  %.sroa.5263.12.extract.shift = lshr i64 %.sroa.5263.0.copyload, 32
  %.sroa.5263.12.extract.trunc = trunc nuw i64 %.sroa.5263.12.extract.shift to i32
  %i.kj = icmp slt i32 %.sroa.5263.12.extract.trunc, 1
  %i.kk = select i1 %i.ki, i1 true, i1 %i.kj      ; 2 uses
  %.sroa.04.0.copyload = select i1 %i.kk, i64 0, i64 %.sroa.0262.0.copyload
  %.sroa.25.0.copyload = select i1 %i.kk, i64 %.sroa.9.12.insert.insert, i64 %.sroa.5263.0.copyload
  %.sroa.5.8.extract.trunc = trunc i64 %.sroa.5.0.copyload to i32
  %i.kl = icmp slt i32 %.sroa.5.8.extract.trunc, 1
  %.sroa.5.12.extract.shift = lshr i64 %.sroa.5.0.copyload, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.km = icmp slt i32 %.sroa.5.12.extract.trunc, 1
  %i.kn = select i1 %i.kl, i1 true, i1 %i.km      ; 2 uses
  %.sroa.0.0.copyload = select i1 %i.kn, i64 0, i64 %.sroa.0.0.copyload260
  %.sroa.2.0.copyload = select i1 %i.kn, i64 %.sroa.9.12.insert.insert, i64 %.sroa.5.0.copyload
  %i.ko = load i32, ptr %i.df, align 8, !tbaa !44
  %i.kp = load i32, ptr %i.bz, align 4, !tbaa !45
  %i.kq = load i32, ptr %i.bo, align 4, !tbaa !46
  %i.kr = invoke { i64, i64 } @_ZN2cv20getValidDisparityROIENS_5Rect_IiEES1_iii(i64 %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i32 noundef %i.ko, i32 noundef %i.kp, i32 noundef %i.kq)
          to label %bb.em unwind label %bb.ez     ; 2 uses

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv24FindStereoCorrespInvokerE, i64 16), ptr %47, align 8, !tbaa !14
  %i.ks = getelementptr inbounds nuw i8, ptr %47, i64 40
  store ptr %i.aj, ptr %i.ks, align 8, !tbaa !155
  %i.kt = getelementptr inbounds nuw i8, ptr %47, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kt, i8 0, i64 16, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %47, i64 72
  store ptr %44, ptr %i.ku, align 8, !tbaa !154
  %i.kv = load i32, ptr %43, align 8, !tbaa !61
  %i.kw = and i32 %i.kv, 4095
  %.off.i = add nsw i32 %i.kw, -3
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.es, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.eo unwind label %bb.eq

bb.eo:                                            ; preds = %bb.en
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv24FindStereoCorrespInvokerC2ERKNS_3MatES3_RS1_RKNS_14StereoBMParamsEiNS_5Rect_IiEES4_RKNS_8BufferBME, ptr noundef nonnull @.str.17, i32 noundef 1063) #23
          to label %bb.ep unwind label %bb.er

bb.ep:                                            ; preds = %bb.eo
  unreachable

bb.eq:                                            ; preds = %bb.en
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i255

bb.er:                                            ; preds = %bb.eo
  %i.ky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kz = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256: ; preds = %bb.er
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !27
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i255: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256, %bb.eq
  %.pn.i = phi { ptr, i32 } [ %i.kx, %bb.eq ], [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i256 ], [ %i.ky, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body258

bb.es:                                            ; preds = %bb.em
  %i.le = extractvalue { i64, i64 } %i.kr, 0
  %i.lf = extractvalue { i64, i64 } %i.kr, 1
  %i.lg = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %40, ptr %i.lg, align 8, !tbaa !73
  %i.lh = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %41, ptr %i.lh, align 8, !tbaa !74
  %i.li = getelementptr inbounds nuw i8, ptr %47, i64 24
  store ptr %43, ptr %i.li, align 8, !tbaa !75
  %i.lj = getelementptr inbounds nuw i8, ptr %47, i64 48
  store i32 %i.jv, ptr %i.lj, align 8, !tbaa !76
  store i64 %i.le, ptr %i.kt, align 4, !tbaa !8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %47, i64 60
  store i64 %i.lf, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !8
  %i.lk = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr %i.ge, ptr %i.lk, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #19
  store i32 0, ptr %48, align 4, !tbaa !65
  %i.ll = getelementptr inbounds nuw i8, ptr %48, i64 4
  store i32 %i.jv, ptr %i.ll, align 4, !tbaa !66
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %47, double noundef -1.000000e+00)
          to label %bb.et unwind label %bb.fa

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !156
  %i.lo = icmp sgt i32 %i.ln, -1
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = icmp sgt i32 %i.lq, 0
  %i.ls = select i1 %i.lo, i1 %i.lr, i1 false
  br i1 %i.ls, label %bb.eu, label %bb.fd

bb.eu:                                            ; preds = %bb.et
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.lu = mul i32 %i.hb, 9
  %i.lv = mul i32 %i.lu, %i.hd
  invoke void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %i.lt, i32 noundef 1, i32 noundef %i.lv, i32 noundef 0)
          to label %bb.ev unwind label %bb.fb

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  %i.lw = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.lx = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 0, ptr %i.lx, align 8
  store i32 50397184, ptr %49, align 8, !tbaa !78
  store ptr %43, ptr %i.lw, align 8, !tbaa !57
  %i.ly = load i32, ptr %i.lp, align 4, !tbaa !47
  %i.lz = load i32, ptr %i.lm, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.ma = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i64 0, ptr %i.mb, align 8
  store i32 50397184, ptr %50, align 8, !tbaa !78
  store ptr %i.lt, ptr %i.ma, align 8, !tbaa !57
  %i.mc = sitofp i32 %i.lz to double
  %i.md = sitofp i32 %i.di to double
  invoke void @_ZN2cv14filterSpecklesERKNS_17_InputOutputArrayEdidS2_(ptr noundef nonnull align 8 dereferenceable(24) %49, double noundef %i.md, i32 noundef %i.ly, double noundef %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %bb.ew unwind label %bb.fc

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %bb.fd

bb.ex:                                            ; preds = %bb.ej
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ey:                                            ; preds = %bb.ek
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %bb.fg

bb.ez:                                            ; preds = %bb.el
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.fa:                                            ; preds = %bb.es
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %.body258

bb.fb:                                            ; preds = %bb.eu
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body258

bb.fc:                                            ; preds = %bb.ev
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  br label %.body258

bb.fd:                                            ; preds = %bb.ew, %bb.et
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @_ZN2cv8BufferBMD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  %i.mk = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !79
  %i.mm = getelementptr inbounds nuw i8, ptr %43, i64 24
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !79
  %.not122 = icmp eq ptr %i.ml, %i.mn
  br i1 %.not122, label %bb.fj, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  %i.mo = getelementptr inbounds nuw i8, ptr %51, i64 8
end_hunk_0

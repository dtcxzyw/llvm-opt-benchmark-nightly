inline.NumInlined: 880
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a

.thread803:                                       ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i621

bb.bq:                                            ; preds = %bb.bg
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body359

bb.br:                                            ; preds = %.invoke
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body359

bb.bs:                                            ; preds = %bb.bo
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.iy) #25
  br label %.body359

bb.bt:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit
  %i.jh = zext i16 %i.ik to i64                   ; 2 uses
  %i.ji = mul nuw nsw i64 %i.jh, 20               ; 3 uses
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #28
          to label %.noexc371 unwind label %bb.bv ; 8 uses

.noexc371:                                        ; preds = %bb.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jj, i8 0, i64 20, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 20 ; 3 uses
  %i.jl = add nsw i64 %i.jh, -1                   ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %.preheader830.lr.ph, label %bb.bu

bb.bu:                                            ; preds = %.noexc371
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.jl, 20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bu
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.jk, %bb.bu ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.jj, i64 20, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jo, %i.jn
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.preheader830.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !28

.preheader830.lr.ph:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc371
  %.0.i.i.i.i.i1177 = phi ptr [ %i.jk, %.noexc371 ], [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %.preheader830

.preheader830:                                    ; preds = %.preheader830.lr.ph, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398
  %i.jq = phi ptr [ %i.ig, %.preheader830.lr.ph ], [ %i.kx, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398 ] ; 2 uses
  %i.jr = phi ptr [ %i.iq, %.preheader830.lr.ph ], [ %i.mp, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398 ] ; 2 uses
  %.sroa.0744.0869 = phi ptr [ %i.jj, %.preheader830.lr.ph ], [ %i.mu, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398 ] ; 13 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2 ; 3 uses
  %i.jt = icmp ugt ptr %i.js, %i.jq
  br i1 %i.jt, label %bb.by, label %bb.cb

._crit_edge.i.i372:                               ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.ju = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  store ptr %i.ju, ptr %16, align 8
  store i16 25202, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 2, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %16, i64 18
  store i8 0, ptr %i.jw, align 2
  %i.jx = load ptr, ptr %6, align 8
  %i.jy = load ptr, ptr %3, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = invoke noundef ptr %i.ka(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.jx, ptr noundef nonnull %i.ju)
          to label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.dk, !inline_history !27 ; 4 uses

bb.bv:                                            ; preds = %bb.bt
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %.body359

bb.bw:                                            ; preds = %bb.cp
  %i.kd = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull @.str.54)
          to label %.invoke1204 unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kd) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.by:                                            ; preds = %bb.ck, %bb.cf, %.preheader830
  %i.kf = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull @.str.54)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  invoke void @__cxa_throw(ptr nonnull %i.kf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.noexc379 unwind label %.loopexit.split-lp832

.noexc379:                                        ; preds = %bb.bz
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.kf) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.cb:                                            ; preds = %.preheader830
  %i.kh = load i16, ptr %i.jr, align 1            ; 2 uses
  store ptr %i.js, ptr %i.ic, align 8
  store i16 %i.kh, ptr %.sroa.0744.0869, align 2
  %.not257 = icmp ult i16 %i.kh, %i.ik
  br i1 %.not257, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ki = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cd unwind label %.loopexit831

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ki, ptr noundef nonnull @.str.15)
          to label %bb.ce unwind label %.loopexit831

bb.ce:                                            ; preds = %bb.cd
  store i16 0, ptr %.sroa.0744.0869, align 2
  %.pre = load ptr, ptr %i.ic, align 8
  %.pre941 = load ptr, ptr %i.if, align 8
  br label %bb.cf

.loopexit831:                                     ; preds = %bb.cn, %bb.cm, %bb.ci, %bb.ch, %bb.cc, %bb.cd
  %lpad.loopexit833 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

.loopexit.split-lp832:                            ; preds = %bb.bz
  %lpad.loopexit.split-lp834 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.cf:                                            ; preds = %bb.cb, %bb.ce
  %i.kj = phi ptr [ %i.jq, %bb.cb ], [ %.pre941, %bb.ce ] ; 2 uses
  %i.kk = phi ptr [ %i.js, %bb.cb ], [ %.pre, %bb.ce ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2 ; 3 uses
  %i.km = icmp ugt ptr %i.kl, %i.kj
  br i1 %i.km, label %bb.by, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kn = load i16, ptr %i.kk, align 1            ; 2 uses
  store ptr %i.kl, ptr %i.ic, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 2 ; 2 uses
  store i16 %i.kn, ptr %i.ko, align 2
  %.not257.1 = icmp ult i16 %i.kn, %i.ik
  br i1 %.not257.1, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.ci unwind label %.loopexit831

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kp, ptr noundef nonnull @.str.15)
          to label %bb.cj unwind label %.loopexit831

bb.cj:                                            ; preds = %bb.ci
  store i16 0, ptr %i.ko, align 2
  %.pre942 = load ptr, ptr %i.ic, align 8
  %.pre943 = load ptr, ptr %i.if, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg
  %i.kq = phi ptr [ %.pre943, %bb.cj ], [ %i.kj, %bb.cg ] ; 2 uses
  %i.kr = phi ptr [ %.pre942, %bb.cj ], [ %i.kl, %bb.cg ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 2 ; 3 uses
  %i.kt = icmp ugt ptr %i.ks, %i.kq
  br i1 %i.kt, label %bb.by, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ku = load i16, ptr %i.kr, align 1            ; 2 uses
  store ptr %i.ks, ptr %i.ic, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 4 ; 2 uses
  store i16 %i.ku, ptr %i.kv, align 2
  %.not257.2 = icmp ult i16 %i.ku, %i.ik
  br i1 %.not257.2, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kw = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.cn unwind label %.loopexit831

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kw, ptr noundef nonnull @.str.15)
          to label %bb.co unwind label %.loopexit831

bb.co:                                            ; preds = %bb.cn
  store i16 0, ptr %i.kv, align 2
  %.pre944 = load ptr, ptr %i.ic, align 8
  %.pre945 = load ptr, ptr %i.if, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %i.kx = phi ptr [ %.pre945, %bb.co ], [ %i.kq, %bb.cl ] ; 6 uses
  %i.ky = phi ptr [ %.pre944, %bb.co ], [ %i.ks, %bb.cl ] ; 11 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  %i.la = ptrtoaddr ptr %i.kx to i64              ; 6 uses
  %i.lb = icmp ugt ptr %i.kz, %i.kx
  br i1 %i.lb, label %bb.bw, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lc = load i8, ptr %i.ky, align 1             ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 6 ; 2 uses
  store i8 %i.lc, ptr %i.ld, align 2
  %i.le = load i8, ptr %i.jp, align 4, !range !30, !noundef !31
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.sink.split, label %bb.cs

bb.cr:                                            ; preds = %.invoke1204
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.cs:                                            ; preds = %bb.cq
  %.off = add i8 %i.lc, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.sink.split, label %bb.ct

.sink.split:                                      ; preds = %bb.cs, %bb.cq
  %.sink = phi i8 [ 0, %bb.cq ], [ 1, %bb.cs ]
  store i8 %.sink, ptr %i.ld, align 2
  br label %bb.ct

bb.ct:                                            ; preds = %.sink.split, %bb.cs
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 2 ; 4 uses
  store ptr %i.lh, ptr %i.ic, align 8
  %i.li = icmp ugt ptr %i.lh, %i.kx
  br i1 %i.li, label %bb.cu, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.preheader

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.preheader: ; preds = %bb.ct
  %.promoted863866932 = ptrtoaddr ptr %i.lh to i64 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ky, i64 3 ; 2 uses
  %exitcond = icmp eq i64 %i.la, %.promoted863866932
  br i1 %exitcond, label %bb.cy, label %bb.db

bb.cu:                                            ; preds = %bb.ct
  %i.lk = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, ptr noundef nonnull @.str.55)
          to label %.invoke1204 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lk) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.cw:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.2
  %i.lm = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull @.str.54)
          to label %.invoke1204 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lm) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.cy:                                            ; preds = %bb.dd, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.1, %bb.dc, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386, %bb.db, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.preheader
  %i.lo = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, ptr noundef nonnull @.str.54)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @__cxa_throw(ptr nonnull %i.lo, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.noexc391 unwind label %bb.de

.noexc391:                                        ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %bb.cy
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lo) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.db:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.preheader
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 8
  %i.lr = sub i64 %i.la, %.promoted863866932
  %i.ls = load i8, ptr %i.lh, align 1
  store ptr %i.lj, ptr %i.ic, align 8
  store i8 %i.ls, ptr %i.lq, align 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ky, i64 4 ; 3 uses
  %exitcond.1 = icmp eq i64 %i.lr, 1
  br i1 %exitcond.1, label %bb.cy, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386: ; preds = %bb.db
  %i.lu = load i8, ptr %i.lj, align 1
  store ptr %i.lt, ptr %i.ic, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 9
  store i8 %i.lu, ptr %i.lv, align 1
  %.promoted863866932.1 = ptrtoaddr ptr %i.lt to i64 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ky, i64 5 ; 2 uses
  %exitcond.1935.not = icmp ugt i64 %i.la, %.promoted863866932.1
  br i1 %exitcond.1935.not, label %bb.dc, label %bb.cy

bb.dc:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 10
  %i.ly = sub nuw i64 %i.la, %.promoted863866932.1
  %i.lz = load i8, ptr %i.lt, align 1
  store ptr %i.lw, ptr %i.ic, align 8
  store i8 %i.lz, ptr %i.lx, align 2
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ky, i64 6 ; 3 uses
  %exitcond.1.1 = icmp eq i64 %i.ly, 1
  br i1 %exitcond.1.1, label %bb.cy, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.1

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.1: ; preds = %bb.dc
  %i.mb = load i8, ptr %i.lw, align 1
  store ptr %i.ma, ptr %i.ic, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 11
  store i8 %i.mb, ptr %i.mc, align 1
  %.promoted863866932.2 = ptrtoaddr ptr %i.ma to i64 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.ky, i64 7 ; 2 uses
  %exitcond.2.not = icmp ugt i64 %i.la, %.promoted863866932.2
  br i1 %exitcond.2.not, label %bb.dd, label %bb.cy

bb.dd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.1
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 12
  %i.mf = sub nuw i64 %i.la, %.promoted863866932.2
  %i.mg = load i8, ptr %i.ma, align 1
  store ptr %i.md, ptr %i.ic, align 8
  store i8 %i.mg, ptr %i.me, align 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %exitcond.1.2 = icmp eq i64 %i.mf, 1
  br i1 %exitcond.1.2, label %bb.cy, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.2

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.2: ; preds = %bb.dd
  %i.mi = load i8, ptr %i.md, align 1
  store ptr %i.mh, ptr %i.ic, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 13
  store i8 %i.mi, ptr %i.mj, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ky, i64 9
  %i.ml = icmp ugt ptr %i.mk, %i.kx
  br i1 %i.ml, label %bb.cw, label %bb.df

bb.de:                                            ; preds = %bb.cz
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.df:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit386.2
  %i.mn = load i8, ptr %i.mh, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 14
  store i8 %i.mn, ptr %i.mo, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ky, i64 10 ; 3 uses
  store ptr %i.mp, ptr %i.ic, align 8
  %i.mq = icmp ugt ptr %i.mp, %i.kx
  br i1 %i.mq, label %bb.dg, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398

bb.dg:                                            ; preds = %bb.df
  %i.mr = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull @.str.55)
          to label %.invoke1204 unwind label %bb.dh

.invoke1204:                                      ; preds = %bb.bw, %bb.dg, %bb.cw, %bb.cu
  %i.ms = phi ptr [ %i.lm, %bb.cw ], [ %i.lk, %bb.cu ], [ %i.mr, %bb.dg ], [ %i.kd, %bb.bw ]
  invoke void @__cxa_throw(ptr nonnull %i.ms, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont1205 unwind label %bb.cr

.cont1205:                                        ; preds = %.invoke1204
  unreachable

bb.dh:                                            ; preds = %bb.dg
  %i.mt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mr) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit398: ; preds = %bb.df
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0744.0869, i64 20 ; 2 uses
  %.not810 = icmp eq ptr %i.mu, %.0.i.i.i.i.i1177
  br i1 %.not810, label %._crit_edge.i.i372, label %.preheader830

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %._crit_edge.i.i372
  %i.mv = load ptr, ptr %i.hd, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(8) %i.hd) #25, !inline_history !32
  %i.my = load ptr, ptr %16, align 8              ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.ju
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.na = load i64, ptr %i.ju, align 8
  %i.nb = add i64 %i.na, 1
  call void @_ZdlPvm(ptr noundef %i.my, i64 noundef %i.nb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EE5resetEPS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %.not811 = icmp eq ptr %i.kb, null
  br i1 %.not811, label %bb.di, label %._crit_edge.i.i407

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  %i.nc = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nc, ptr noundef nonnull @.str.16)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  invoke void @__cxa_throw(ptr nonnull %i.nc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.lf unwind label %bb.dm

bb.dk:                                            ; preds = %._crit_edge.i.i372
  %i.nd = landingpad { ptr, i32 }
          cleanup
  %i.ne = load ptr, ptr %16, align 8              ; 2 uses
  %i.nf = icmp eq ptr %i.ne, %i.ju
  br i1 %i.nf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %bb.dk
  %i.ng = load i64, ptr %i.ju, align 8
  %i.nh = add i64 %i.ng, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.dl:                                            ; preds = %bb.di
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nc) #25
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

bb.dm:                                            ; preds = %bb.dj
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6Assimp6Unreal8TriangleESaIS2_EED2Ev.exit614

._crit_edge.i.i407:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.nk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.nk, ptr %18, align 8
  store i16 25202, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 2, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %18, i64 18
  store i8 0, ptr %i.nm, align 2
  %i.nn = load ptr, ptr %6, align 8
  %i.no = load ptr, ptr %3, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = invoke noundef ptr %i.nq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.nn, ptr noundef nonnull %i.nk)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit412 unwind label %bb.ds, !inline_history !27

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit412: ; preds = %._crit_edge.i.i407
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %17, ptr noundef %i.nr, i1 noundef zeroext false)
          to label %bb.dn unwind label %bb.ds

bb.dn:                                            ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit412
  %i.ns = load ptr, ptr %18, align 8              ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.nk
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413: ; preds = %bb.dn
  %i.nu = load i64, ptr %i.nk, align 8
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.ns, i64 noundef %i.nv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.nw = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 5 uses
  %i.nx = load ptr, ptr %i.nw, align 8            ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 2 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.oa = load ptr, ptr %i.nz, align 8            ; 4 uses
  %i.ob = icmp ugt ptr %i.ny, %i.oa
  br i1 %i.ob, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.oc = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull @.str.54)
          to label %.invoke1206 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.oc) #25
  br label %.body417

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit415
  %i.oe = load i16, ptr %i.nx, align 1
  store ptr %i.ny, ptr %i.nw, align 8
  %i.of = sext i16 %i.oe to i32
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.oh = load i32, ptr %i.og, align 8            ; 2 uses
  %.not = icmp ult i32 %i.oh, %i.of
  br i1 %.not, label %bb.dv, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.oi = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.oi, ptr noundef nonnull @.str.17)
          to label %.invoke1206 unwind label %bb.du

bb.ds:                                            ; preds = %._crit_edge.i.i407, %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit412
  %i.oj = landingpad { ptr, i32 }
          cleanup
  %i.ok = load ptr, ptr %18, align 8              ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.nk
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.ds
  %i.om = load i64, ptr %i.nk, align 8
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.kv

bb.dt:                                            ; preds = %.invoke1206
  %i.oo = landingpad { ptr, i32 }
          cleanup
  br label %.body417
end_hunk_0

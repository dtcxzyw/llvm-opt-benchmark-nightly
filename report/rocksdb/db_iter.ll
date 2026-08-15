inline.NumInlined: 2870
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb6DBIter25FindUserKeyBeforeSavedKeyEv:bb.a
  %i.ek = icmp eq ptr %i.ej, %i.y
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.ap
  %i.el = load i64, ptr %i.y, align 8, !tbaa !24
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.ap, %.loopexit71, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %.pn.pn = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit71 ], [ %i.ei, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.av

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.en = load ptr, ptr %4, align 8, !tbaa !20
  store ptr %i.en, ptr %9, align 8, !tbaa !200
  %i.eo = load i64, ptr %i.x, align 8, !tbaa !229
  store i64 %i.eo, ptr %i.ag, align 8, !tbaa !201
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !204 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(40) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.noexc49 unwind label %bb.at, !inline_history !508

.noexc49:                                         ; preds = %bb.aq
  %i.et = load ptr, ptr %i.a, align 8, !tbaa !204 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(40) %i.et)
          to label %.noexc50 unwind label %bb.at, !inline_history !508 ; 2 uses

.noexc50:                                         ; preds = %.noexc49
  %i.ey = zext i1 %i.ex to i8
  store i8 %i.ey, ptr %i.b, align 8, !tbaa !205
  br i1 %i.ex, label %bb.ar, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit

bb.ar:                                            ; preds = %.noexc50
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !204 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke { ptr, i64 } %i.fc(ptr noundef nonnull align 8 dereferenceable(40) %i.ez)
          to label %.noexc51 unwind label %bb.at, !inline_history !508 ; 2 uses

.noexc51:                                         ; preds = %bb.ar
  %i.fe = extractvalue { ptr, i64 } %i.fd, 0
  %i.ff = extractvalue { ptr, i64 } %i.fd, 1
  store ptr %i.fe, ptr %i.ah, align 8, !tbaa !207
  store i64 %i.ff, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !208
  store i8 0, ptr %i.ai, align 8, !tbaa !209
  store i8 0, ptr %i.aj, align 1, !tbaa !210
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit: ; preds = %.noexc51, %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.fg = load ptr, ptr %i.ak, align 8, !tbaa !233 ; 3 uses
  %.not.i52 = icmp eq ptr %i.fg, null
  br i1 %.not.i52, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %bb.as

bb.as:                                            ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 176
  %i.fj = load ptr, ptr %i.fi, align 8
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(33) %i.fg, i32 noundef 71, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.au, !inline_history !416

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit, %bb.as
  %i.fk = load i8, ptr %i.b, align 8, !tbaa !205, !range !399, !noundef !400
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.w
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  %i.fo = load i64, ptr %i.w, align 8, !tbaa !24
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %i.fl, label %bb.ax, label %.loopexit.sink.split

bb.at:                                            ; preds = %bb.ar, %.noexc49, %bb.aq
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %bb.ag
  %.pn24 = phi { ptr, i32 } [ %i.fr, %bb.au ], [ %i.fq, %bb.at ], [ %i.dp, %bb.ag ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  %i.fs = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.w
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.av
  %i.fu = load i64, ptr %i.w, align 8, !tbaa !24
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn24

bb.aw:                                            ; preds = %bb.ac
  %i.fw = add nuw i64 %.014102, 1
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.aw
  %.115 = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.fw, %bb.aw ]
  %i.fx = load ptr, ptr %i.a, align 8, !tbaa !204 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 80
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(40) %i.fx), !inline_history !675
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !204 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !18
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = call noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(40) %i.gb), !inline_history !676 ; 2 uses
  %i.gg = zext i1 %i.gf to i8
  store i8 %i.gg, ptr %i.b, align 8, !tbaa !205
  br i1 %i.gf, label %bb.ay, label %.loopexit.sink.split

.thread:                                          ; preds = %bb.b, %_ZN7rocksdb6DBIter17CompareKeyForSkipERKNS_5SliceES3_.exit, %bb.l
  %.119.ph = phi i1 [ false, %bb.l ], [ true, %_ZN7rocksdb6DBIter17CompareKeyForSkipERKNS_5SliceES3_.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !204 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call { ptr, i64 } %i.gk(ptr noundef nonnull align 8 dereferenceable(40) %i.gh), !inline_history !676 ; 2 uses
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1
  store ptr %i.gm, ptr %i.ah, align 8, !tbaa !207
  store i64 %i.gn, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !208
  store i8 0, ptr %i.ai, align 8, !tbaa !209
  store i8 0, ptr %i.aj, align 1, !tbaa !210
  %.pre = load i8, ptr %i.b, align 8, !tbaa !205, !range !399
  %i.go = trunc nuw i8 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.go, label %bb.b, label %.loopexit

.loopexit.sink.split:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ay, %.loopexit.sink.split, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !204, !noalias !677 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !18, !noalias !677
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 120
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !677
  call void %i.gs(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(40) %i.gp), !inline_history !513
  %i.gt = load i8, ptr %10, align 8, !tbaa !453
  %i.gu = icmp eq i8 %i.gt, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !207 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.gw) #27
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %.loopexit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %i.gu, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1869
  store i8 0, ptr %i.gx, align 1, !tbaa !436
  br label %bb.ba

bb.ba:                                            ; preds = %.thread, %_ZN7rocksdb6StatusD2Ev.exit, %bb.az
  %.220 = phi i1 [ %.119.ph, %.thread ], [ false, %bb.az ], [ true, %_ZN7rocksdb6StatusD2Ev.exit ]
  ret i1 %.220
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7IterKey4SwapERS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 20 uses
  %3 = alloca [39 x i8], align 16                 ; 4 uses
  %4 = alloca [39 x i8], align 16                 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !219    ; 4 uses
  %i.d = icmp eq ptr %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !224
  %i.g = icmp eq ptr %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !220  ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !219    ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.n = icmp eq ptr %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.p = icmp eq ptr %i.c, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.r = icmp eq ptr %i.j, %i.q                   ; 2 uses
  %or.cond = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.s, align 8, !tbaa !208
  %i.v = load i64, ptr %i.t, align 8, !tbaa !208
  %i.w = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.w, i64 39) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 8 %i.o, i64 %i.x, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.q, i64 %i.x, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 16 %3, i64 %i.x, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !221
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.o, i64 %i.z, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !219
  store ptr %i.q, ptr %1, align 8, !tbaa !219
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !221
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.q, i64 %i.ab, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !219
  store ptr %i.o, ptr %0, align 8, !tbaa !219
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !207
  store ptr %i.c, ptr %1, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !224 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  %i.ah = icmp eq ptr %i.af, %i.ag                ; 2 uses
  %or.cond3 = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(39) %4, ptr noundef nonnull align 8 dereferenceable(39) %i.ad, i64 39, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.ad, ptr noundef nonnull align 8 dereferenceable(39) %i.ag, i64 39, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.ag, ptr noundef nonnull align 16 dereferenceable(39) %4, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !225
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.ad, i64 %i.aj, i1 false)
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !224
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !224
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !224
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.am = load i64, ptr %i.al, align 8, !tbaa !225
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ag, i64 %i.am, i1 false)
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !224
  store ptr %i.an, ptr %i.l, align 8, !tbaa !224
  store ptr %i.ad, ptr %i.e, align 8, !tbaa !224
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store ptr %i.af, ptr %i.e, align 8, !tbaa !207
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !207
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.i
  br i1 %i.k, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %0, align 8, !tbaa !219
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  br i1 %i.n, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !224
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.sink = phi ptr [ %i.ap, %bb.r ], [ %i.ao, %bb.p ], [ %i.i, %bb.q ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !220
  br i1 %i.d, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %1, align 8, !tbaa !219
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br i1 %i.g, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !224
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.sink84 = phi ptr [ %i.ar, %bb.v ], [ %i.aq, %bb.t ], [ %i.b, %bb.u ]
  store ptr %.sink84, ptr %i.h, align 8, !tbaa !220
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.as, align 8, !tbaa !208
  %i.av = load i64, ptr %i.at, align 8, !tbaa !208
  store i64 %i.av, ptr %i.as, align 8, !tbaa !208
  store i64 %i.au, ptr %i.at, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !208
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !208
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !208
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !208
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !208
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !208
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !208
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !208
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 71 ; 2 uses
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !454, !range !399, !noundef !400
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !454, !range !399, !noundef !400
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !454
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !454
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(80) %i.bi, i64 16, i1 false), !tbaa.struct !519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr noundef nonnull align 8 dereferenceable(80) %i.bj, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %.079.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.1.i.i, i64 16, i1 false), !tbaa.struct !519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.079.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.2.i.i, i64 16, i1 false), !tbaa.struct !519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %.079.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.3.i.i, i64 16, i1 false), !tbaa.struct !519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.3.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %.079.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.4.i.i, i64 16, i1 false), !tbaa.struct !519
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.079.i.ptr.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !519
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZN7rocksdb6DBIter22FindValueForCurrentKeyERb(ptr noundef nonnull align 8 dereferenceable(2304) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 18 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 12 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 8 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %22 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  store i8 0, ptr %1, align 1, !tbaa !454
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !429  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN7rocksdb12MergeContext5ClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !430  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !587
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.d, ptr %i.e, align 8, !tbaa !587
  br label %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb5SliceES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !421  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !422  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !425  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i1.i, label %_ZN7rocksdb12MergeContext5ClearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i ], [ %i.i, %_ZNSt6vectorIN7rocksdb5SliceESaIS1_EE5clearEv.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !426 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !871

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  store i8 %i.v, ptr %i.t, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !24
  store i8 %i.w, ptr %i.m, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !229
  %i.x = load ptr, ptr %0, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !24
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !229  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #31
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !445

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !24
  store i8 %i.t, ptr %i.s, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !24
  store i8 %i.x, ptr %i.w, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !24
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !24
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !20
  store i64 %.0, ptr %i.h, align 8, !tbaa !24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZNK7rocksdb17ParsedInternalKey11DebugStringB5cxx11EbbPKNS_10ComparatorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(25), i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [16 x i8], align 16                 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !229  ; 5 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !229  ; 4 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %.not = icmp eq i64 %i.f, 0
  %.not38 = icmp eq i64 %i.l, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.n = add nuw nsw i64 %i.l, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  %i.o = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.o, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 16 dereferenceable(1) %2, i64 %i.n, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.p = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.p, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !20
  %.pre51 = load i64, ptr %i.k, align 8, !tbaa !229
  store i64 %.pre51, ptr %i.e, align 8, !tbaa !229
  store i64 0, ptr %i.k, align 8, !tbaa !229
  store i8 0, ptr %.pre52, align 1, !tbaa !24
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.q = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.q, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !20
  %.pre = load i64, ptr %i.e, align 8, !tbaa !229
  store i64 %.pre, ptr %i.k, align 8, !tbaa !229
  store i64 0, ptr %i.e, align 8, !tbaa !229
  store i8 0, ptr %.pre50, align 1, !tbaa !24
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.r = load i64, ptr %i.i, align 8, !tbaa !24
  %i.s = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.s, i1 false)
  store ptr %i.h, ptr %0, align 8, !tbaa !20
  store ptr %i.i, ptr %1, align 8, !tbaa !20
  store i64 %i.r, ptr %i.c, align 8, !tbaa !24
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.t = load i64, ptr %i.c, align 8, !tbaa !24
  %i.u = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !229  ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  store ptr %i.b, ptr %1, align 8, !tbaa !20
  store ptr %i.c, ptr %0, align 8, !tbaa !20
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !20
  store ptr %i.b, ptr %1, align 8, !tbaa !20
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !24
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.t, ptr %i.v, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !229
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !229
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !229
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !229
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

declare void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #7

declare void @_ZN7rocksdb20ReadPathBlobResolver5ResetERKNS_5SliceEPKSt6vectorINS_10WideColumnESaIS5_EEPKS4_ISt4pairImNS_9BlobIndexEESaISC_EE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb12MergeContext10InitializeEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !429
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit, label %_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit

_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !429
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !421  ; 6 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !421
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !422  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !426 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !24
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 32) #27
  br label %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i2 = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !427

_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !422
  br label %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.b
  %i.q = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !428
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #27
  br label %_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i

_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EES9_EvT_SB_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 24) #27
  br label %_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit

_ZNSt10unique_ptrISt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EESaIS9_EES7_ISB_EE5resetEPSB_.exit: ; preds = %_ZNKSt14default_deleteISt6vectorISt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS7_EESaIS9_EEEclEPSB_.exit.i.i, %_ZNSt10unique_ptrISt6vectorIN7rocksdb5SliceESaIS2_EESt14default_deleteIS4_EE5resetEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb13MultiScanArgsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 16384, ptr %0, align 8, !tbaa !872
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !873
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !785
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !729
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !874
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.h, align 8, !tbaa !874
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7rocksdb11ScanOptionsESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.b unwind label %bb.m       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.k = load <2 x i64>, ptr %1, align 8, !tbaa !208
  store <2 x i64> %i.k, ptr %0, align 8, !tbaa !208
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !785, !range !399, !noundef !400
  store i8 %i.m, ptr %i.b, align 8, !tbaa !785
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.o = load i8, ptr %i.n, align 1, !tbaa !729, !range !399, !noundef !400
  store i8 %i.o, ptr %i.c, align 1, !tbaa !729
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !771
  store ptr %i.q, ptr %i.d, align 8, !tbaa !771
end_hunk_1

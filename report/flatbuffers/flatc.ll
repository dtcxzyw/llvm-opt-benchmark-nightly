Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/flatc?download=true
inline.NumInlined: 4552
inline.NumDeleted: 1341
begin_hunk_0_@_ZN11flatbuffers12FlatCompiler12GenerateCodeERKNS_12FlatCOptionsERNS_6ParserE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.l

bb.i:                                             ; preds = %bb.d
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.j:                                             ; preds = %bb.e
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ep = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.k
  br i1 %i.eq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.k, %.loopexit.split-lp755.loopexit.split-lp.loopexit.split-lp
  %.sink = phi ptr [ %i.ef, %.loopexit.split-lp755.loopexit.split-lp.loopexit.split-lp ], [ %i.ep, %bb.k ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1685, %.loopexit.split-lp755.loopexit.split-lp.loopexit.split-lp ], [ %i.eo, %bb.k ]
  %i.er = load i64, ptr %i.k, align 8, !tbaa !46
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.es) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.k, %.loopexit.split-lp755.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1685, %.loopexit.split-lp755.loopexit.split-lp.loopexit.split-lp ], [ %i.eo, %bb.k ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.gy

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.eu = ptrtoint ptr %.sroa.0707.01296 to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = ashr exact i64 %i.ew, 5
  %i.ey = load i64, ptr %i.n, align 8, !tbaa !114
  %.not143 = icmp ult i64 %i.ex, %i.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN11flatbuffers12GetExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ez = load i64, ptr %i.o, align 8, !tbaa !43  ; 3 uses
  switch i64 %i.ez, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.fa = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 1
  %i.fc = xor i16 %i.fb, 25190
  %i.fd = getelementptr i8, ptr %i.fa, i64 2
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i16
  %i.fg = xor i16 %i.ff, 115
  %i.fh = or i16 %i.fc, %i.fg
  %i.fi = icmp ne i16 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219: ; preds = %bb.m
  %i.fl = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 1
  %i.fn = xor i32 %i.fm, 1953460848
  %i.fo = getelementptr i8, ptr %i.fl, i64 4
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = xor i32 %i.fq, 111
  %i.fs = or i32 %i.fn, %i.fr
  %i.ft = icmp ne i32 %i.fs, 0
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219
  %i.fw = load i64, ptr %i.q, align 8, !tbaa !43
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN11flatbuffers13StripFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.fy = load ptr, ptr %i.p, align 8, !tbaa !24  ; 6 uses
  %i.fz = icmp eq ptr %i.fy, %i.r
  %i.ga = load ptr, ptr %9, align 8, !tbaa !24    ; 5 uses
  %i.gb = icmp eq ptr %i.ga, %i.s                 ; 2 uses
  br i1 %i.fz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.o
  br i1 %i.gb, label %bb.p, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.o
  br i1 %i.gb, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.gc = load i64, ptr %i.t, align 8, !tbaa !43  ; 3 uses
  %i.gd = icmp ult i64 %i.gc, 16
  call void @llvm.assume(i1 %i.gd)
  switch i64 %i.gc, label %bb.r [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ge = load i8, ptr %i.ga, align 1, !tbaa !46
  store i8 %i.ge, ptr %i.fy, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fy, ptr align 1 %i.ga, i64 %i.gc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.gf = load i64, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  store i64 %i.gf, ptr %i.q, align 8, !tbaa !43
  %i.gg = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gf
  store i8 0, ptr %i.gh, align 1, !tbaa !46
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ga, ptr %i.p, align 8, !tbaa !24
  %i.gi = load <2 x i64>, ptr %i.t, align 8, !tbaa !46
  store <2 x i64> %i.gi, ptr %i.q, align 8, !tbaa !46
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.gj = load i64, ptr %i.r, align 8, !tbaa !46
  store ptr %i.ga, ptr %i.p, align 8, !tbaa !24
  %i.gk = load <2 x i64>, ptr %i.t, align 8, !tbaa !46
  store <2 x i64> %i.gk, ptr %i.q, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.fy, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fy, ptr %9, align 8, !tbaa !24
  store i64 %i.gj, ptr %i.s, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %9, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.s, %bb.t
  %i.gl = phi ptr [ %i.fy, %bb.s ], [ %i.s, %bb.t ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.t, align 8, !tbaa !43
  store i8 0, ptr %i.gl, align 1, !tbaa !46
  %i.gm = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.s
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.go = load i64, ptr %i.s, align 8, !tbaa !46
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %.pre = load i64, ptr %i.o, align 8, !tbaa !43
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712

bb.u:                                             ; preds = %bb.l
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit695

bb.v:                                             ; preds = %bb.n
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.gx

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread
  %i.gs = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %i.ez, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ %i.ez, %bb.m ]
  %i.gt = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread ], [ false, %bb.m ] ; 2 uses
  %i.gu = icmp eq i64 %i.gs, 4
  br i1 %i.gu, label %bb.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712
  %i.gv = load ptr, ptr %8, align 8, !tbaa !24
  %i.gw = load i32, ptr %i.gv, align 1
  %i.gx = icmp ne i32 %i.gw, 1935828578
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712, %bb.w
  %i.ha = phi i1 [ %i.gt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712 ], [ %i.gt, %bb.w ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 8 uses
  %i.hb = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219.thread712 ], [ %i.gz, %bb.w ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit219 ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 4 uses
  br i1 %.not143, label %bb.ba, label %bb.x

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224
  %i.hc = load ptr, ptr %0, align 8, !tbaa !309   ; 15 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 536
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 528 ; 2 uses
  store i32 0, ptr %i.hd, align 8, !tbaa !598
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 540
  store i16 0, ptr %i.hf, align 4, !tbaa !599
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 512
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !310 ; 3 uses
  %.not.i.i = icmp eq ptr %i.hh, null
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 496 ; 2 uses
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !270
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  br label %_ZN11flatbuffers15vector_downwardIjE5clearEv.exit.i

bb.z:                                             ; preds = %bb.x
  store i64 0, ptr %i.hi, align 8, !tbaa !270
  br label %_ZN11flatbuffers15vector_downwardIjE5clearEv.exit.i

_ZN11flatbuffers15vector_downwardIjE5clearEv.exit.i: ; preds = %bb.z, %bb.y
  %.sink.i.i = phi ptr [ null, %bb.z ], [ %i.hk, %bb.y ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 520 ; 4 uses
  store ptr %.sink.i.i, ptr %i.hl, align 8, !tbaa !311
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 504 ; 3 uses
  store i32 0, ptr %i.hm, align 8, !tbaa !271
  store ptr %i.hh, ptr %i.he, align 8, !tbaa !312
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 552
  store i8 0, ptr %i.hn, align 8, !tbaa !273
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 553 ; 2 uses
  store i8 0, ptr %i.ho, align 1, !tbaa !274
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 560
  store i64 1, ptr %i.hp, align 8, !tbaa !275
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hc, i64 544
  store i64 0, ptr %i.hq, align 8, !tbaa !272
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hc, i64 576
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !313 ; 7 uses
  %.not.i225 = icmp eq ptr %i.hs, null
  br i1 %.not.i225, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5ClearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN11flatbuffers15vector_downwardIjE5clearEv.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeIN11flatbuffers6OffsetINS0_6StringEEES3_St9_IdentityIS3_ENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hs, ptr noundef %i.hu)
          to label %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE5clearEv.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #31
  unreachable

_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE5clearEv.exit.i: ; preds = %bb.aa
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  store ptr null, ptr %i.ht, align 8, !tbaa !49
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !101
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  store i64 0, ptr %i.ia, align 8, !tbaa !102
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5ClearEv.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5ClearEv.exit: ; preds = %_ZNSt3setIN11flatbuffers6OffsetINS0_6StringEEENS0_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS3_EE5clearEv.exit.i, %_ZN11flatbuffers15vector_downwardIjE5clearEv.exit.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hc, i64 456
  %i.ic = load ptr, ptr %6, align 8, !tbaa !24
  %i.id = load i64, ptr %i.j, align 8, !tbaa !43  ; 6 uses
  %.not.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5ClearEv.exit
  %.pre4.i.i.i.i = load ptr, ptr %i.hl, align 8, !tbaa !311 ; 2 uses
  %i.ie = load ptr, ptr %i.he, align 8, !tbaa !312
  %i.if = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = and i64 %i.ih, 4294967295
  %i.ij = icmp ugt i64 %i.id, %i.ii
  br i1 %i.ij, label %bb.ad, label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %i.ib, i64 noundef %i.id)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ad
  %.pre.i.i.i.i = load ptr, ptr %i.hl, align 8, !tbaa !311
  br label %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i.i

_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i.i: ; preds = %.noexc, %bb.ac
  %i.ik = phi ptr [ %.pre4.i.i.i.i, %bb.ac ], [ %.pre.i.i.i.i, %.noexc ]
  %i.il = sub i64 0, %i.id
  %i.im = getelementptr inbounds i8, ptr %i.ik, i64 %i.il ; 2 uses
  store ptr %i.im, ptr %i.hl, align 8, !tbaa !311
  %i.in = trunc i64 %i.id to i32
  %i.io = load i32, ptr %i.hm, align 8, !tbaa !271
  %i.ip = add i32 %i.io, %i.in
  store i32 %i.ip, ptr %i.hm, align 8, !tbaa !271
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.im, ptr align 1 %i.ic, i64 %i.id, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN11flatbuffers15vector_downwardIjE10make_spaceEm.exit.i.i.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5ClearEv.exit
  store i8 1, ptr %i.ho, align 1, !tbaa !274
  %i.iq = load i8, ptr %i.u, align 1, !tbaa !132, !range !95, !noundef !96
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %i.hc, i64 776 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !tbaa !43
  %.not159 = icmp eq i64 %i.it, 0
  br i1 %.not159, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.iu = load ptr, ptr %.sroa.0707.01296, align 8, !tbaa !24, !noalias !600
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0707.01296, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !43, !noalias !600 ; 3 uses
  store ptr %i.ae, ptr %11, align 8, !tbaa !47, !alias.scope !601
  store i64 0, ptr %i.af, align 8, !tbaa !43, !alias.scope !601
  store i8 0, ptr %i.ae, align 8, !tbaa !46, !alias.scope !601
  %i.ix = add i64 %i.iw, 55
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ix)
          to label %bb.ah unwind label %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  %i.iy = load i64, ptr %i.af, align 8, !tbaa !43, !alias.scope !601
  %i.iz = add i64 %i.iy, -4611686018427387849
  %i.ja = icmp ult i64 %i.iz, 55
  br i1 %i.ja, label %.invoke.i.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i229: ; preds = %bb.ah
  %i.jb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.367, i64 noundef 55)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i230 unwind label %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i230: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i229
  %i.jc = load i64, ptr %i.af, align 8, !tbaa !43, !alias.scope !601
  %i.jd = sub i64 4611686018427387903, %i.jc
  %i.je = icmp ult i64 %i.jd, %i.iw
  br i1 %i.je, label %.invoke.i.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i231

.invoke.i.i232:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i230, %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.cont.i.i233 unwind label %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp

.cont.i.i233:                                     ; preds = %.invoke.i.i232
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i230
  %i.jf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.iu, i64 noundef %i.iw)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit236 unwind label %.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp780.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i231, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i229, %bb.ag, %.invoke.i.i232
  %lpad.loopexit.split-lp1700 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = load ptr, ptr %11, align 8, !tbaa !24, !alias.scope !601 ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.ae
  br i1 %i.jh, label %.body234, label %.body234.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit236: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i231
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.ji = load i64, ptr %i.af, align 8, !tbaa !43, !noalias !602
  %i.jj = and i64 %i.ji, -64
  %i.jk = icmp eq i64 %i.jj, 4611686018427387840
  br i1 %i.jk, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ai:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit236
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.noexc239 unwind label %.loopexit.split-lp785.loopexit.split-lp.loopexit.split-lp

.noexc239:                                        ; preds = %bb.ai
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit236
  %i.jl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.368, i64 noundef 64)
          to label %.noexc240 unwind label %.loopexit.split-lp785.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc240:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ag, ptr %10, align 8, !tbaa !47, !alias.scope !602
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !24 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 5 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

bb.aj:                                            ; preds = %.noexc240
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !43 ; 3 uses
  %i.jr = icmp ult i64 %i.jq, 16
  call void @llvm.assume(i1 %i.jr)
  %i.js = add nuw nsw i64 %i.jq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.jn, i64 %i.js, i1 false)
  br label %bb.ak

end_hunk_0
begin_hunk_1_@_ZN11flatbuffers12FlatCompiler12GenerateCodeERKNS_12FlatCOptionsERNS_6ParserE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.np = load i64, ptr %i.y, align 8, !tbaa !46
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293
  %i.nr = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.w
  br i1 %i.ns, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295
  %i.nt = load i64, ptr %i.w, align 8, !tbaa !46
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

.loopexit.split-lp765.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i266, %bb.aq
  %lpad.loopexit.split-lp1691 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.at
  %lpad.loopexit.split-lp1694 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

.loopexit.split-lp775.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i278, %bb.aw
  %lpad.loopexit.split-lp1697 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

bb.az:                                            ; preds = %bb.ay
  %i.nv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nw = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.ac
  br i1 %i.nx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299: ; preds = %bb.az
  %i.ny = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.nz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301: ; preds = %bb.az, %.loopexit.split-lp775.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299
  %.pn163 = phi { ptr, i32 } [ %i.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i299 ], [ %lpad.loopexit.split-lp1697, %.loopexit.split-lp775.loopexit.split-lp.loopexit.split-lp ], [ %i.nv, %bb.az ] ; 2 uses
  %i.oa = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.ob = icmp eq ptr %i.oa, %i.aa
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301
  %i.oc = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.od) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301, %.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ], [ %lpad.loopexit.split-lp1694, %.loopexit.split-lp770.loopexit.split-lp.loopexit.split-lp ], [ %.pn163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301 ] ; 2 uses
  %i.oe = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.y
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %i.og = load i64, ptr %i.y, align 8, !tbaa !46
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, %.loopexit.split-lp765.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  %.pn163.pn.pn = phi { ptr, i32 } [ %.pn163.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305 ], [ %lpad.loopexit.split-lp1691, %.loopexit.split-lp765.loopexit.split-lp.loopexit.split-lp ], [ %.pn163.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ] ; 2 uses
  %i.oi = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.w
  br i1 %i.oj, label %.body263, label %.body263.sink.split

.body263.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %.loopexit.split-lp760.loopexit.split-lp.loopexit.split-lp
  %.sink1642 = phi ptr [ %i.lk, %.loopexit.split-lp760.loopexit.split-lp.loopexit.split-lp ], [ %i.oi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ]
  %.pn163.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1688, %.loopexit.split-lp760.loopexit.split-lp.loopexit.split-lp ], [ %.pn163.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ]
  %i.ok = load i64, ptr %i.w, align 8, !tbaa !46
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %.sink1642, i64 noundef %i.ol) #28
  br label %.body263

.body263:                                         ; preds = %.body263.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %.loopexit.split-lp760.loopexit.split-lp.loopexit.split-lp
  %.pn163.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp1688, %.loopexit.split-lp760.loopexit.split-lp.loopexit.split-lp ], [ %.pn163.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.pn163.pn.pn.pn.ph, %.body263.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.gx

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit224
  %i.om = load i8, ptr %i.ai, align 1, !tbaa !143, !range !95, !noundef !96
  %i.on = trunc nuw i8 %i.om to i1
  %or.cond = or i1 %i.hb, %i.on
  br i1 %or.cond, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oo = load i64, ptr %i.j, align 8, !tbaa !43
  %i.op = load ptr, ptr %6, align 8, !tbaa !24
  %i.oq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.op) #30
  %.not144 = icmp eq i64 %i.oo, %i.oq
  br i1 %.not144, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.or = load ptr, ptr %.sroa.0707.01296, align 8, !tbaa !24, !noalias !608
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0707.01296, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !43, !noalias !608 ; 3 uses
  store ptr %i.aj, ptr %16, align 8, !tbaa !47, !alias.scope !609
  store i64 0, ptr %i.ak, align 8, !tbaa !43, !alias.scope !609
  store i8 0, ptr %i.aj, align 8, !tbaa !46, !alias.scope !609
  %i.ou = add i64 %i.ot, 33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.ou)
          to label %bb.bd unwind label %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  %i.ov = load i64, ptr %i.ak, align 8, !tbaa !43, !alias.scope !609
  %i.ow = add i64 %i.ov, -4611686018427387871
  %i.ox = icmp ult i64 %i.ow, 33
  br i1 %i.ox, label %.invoke.i.i317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i314: ; preds = %bb.bd
  %i.oy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.372, i64 noundef 33)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i315 unwind label %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i315: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i314
  %i.oz = load i64, ptr %i.ak, align 8, !tbaa !43, !alias.scope !609
  %i.pa = sub i64 4611686018427387903, %i.oz
  %i.pb = icmp ult i64 %i.pa, %i.ot
  br i1 %i.pb, label %.invoke.i.i317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i316

.invoke.i.i317:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i315, %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.cont.i.i318 unwind label %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp

.cont.i.i318:                                     ; preds = %.invoke.i.i317
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i315
  %i.pc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.or, i64 noundef %i.ot)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit321 unwind label %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i314, %bb.bc, %.invoke.i.i317
  %lpad.loopexit.split-lp1706 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pd = load ptr, ptr %16, align 8, !tbaa !24, !alias.scope !609 ; 2 uses
  %i.pe = icmp eq ptr %i.pd, %i.aj
  br i1 %i.pe, label %.body319, label %.body319.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit321: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i316
  %i.pf = load ptr, ptr %i.m, align 8, !tbaa !41
  invoke void %i.pf(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %16, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit323 unwind label %bb.be, !inline_history !42

_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit323: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit321
  %i.pg = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.ph = icmp eq ptr %i.pg, %i.aj
  br i1 %i.ph, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit323
  %i.pi = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bf

bb.be:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit321
  %i.pk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pl = load ptr, ptr %16, align 8, !tbaa !24   ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.aj
  br i1 %i.pm, label %.body319, label %.body319.sink.split

.body319.sink.split:                              ; preds = %bb.be, %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp
  %.sink1645 = phi ptr [ %i.pd, %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp ], [ %i.pl, %bb.be ]
  %.pn145.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1706, %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp ], [ %i.pk, %bb.be ]
  %i.pn = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.po = add i64 %i.pn, 1
  call void @_ZdlPvm(ptr noundef %.sink1645, i64 noundef %i.po) #28
  br label %.body319

.body319:                                         ; preds = %.body319.sink.split, %bb.be, %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp
  %.pn145 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1706, %.loopexit.split-lp790.loopexit.split-lp.loopexit.split-lp ], [ %i.pk, %bb.be ], [ %.pn145.ph, %.body319.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.gx

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %bb.bb, %bb.ba
  %or.cond3 = or i1 %i.ha, %i.hb                  ; 2 uses
  br i1 %or.cond3, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.pp = invoke noalias noundef nonnull dereferenceable(1936) ptr @_Znwm(i64 noundef 1936) #27
          to label %bb.bh unwind label %bb.al     ; 5 uses

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN11flatbuffers6ParserC2ERKNS_10IDLOptionsE(ptr noundef nonnull align 8 dereferenceable(1936) %i.pp, ptr noundef nonnull align 8 dereferenceable(794) %5)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.pq = load ptr, ptr %0, align 8, !tbaa !309   ; 3 uses
  store ptr %i.pp, ptr %0, align 8, !tbaa !309
  %.not.i.i330 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i330, label %_ZNSt10unique_ptrIN11flatbuffers6ParserESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN11flatbuffers6ParserEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN11flatbuffers6ParserEEclEPS1_.exit.i.i: ; preds = %bb.bi
  call void @_ZN11flatbuffers6ParserD2Ev(ptr noundef nonnull align 8 dead_on_return(1936) dereferenceable(1936) %i.pq) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.pq, i64 noundef 1936) #28
  br label %_ZNSt10unique_ptrIN11flatbuffers6ParserESt14default_deleteIS1_EE5resetEPS1_.exit

bb.bj:                                            ; preds = %bb.bh
  %i.pr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pp, i64 noundef 1936) #28
  br label %bb.gx

_ZNSt10unique_ptrIN11flatbuffers6ParserESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN11flatbuffers6ParserEEclEPS1_.exit.i.i, %bb.bi
  br i1 %i.hb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNSt10unique_ptrIN11flatbuffers6ParserESt14default_deleteIS1_EE5resetEPS1_.exit
  invoke void @_ZN11flatbuffers12FlatCompiler16LoadBinarySchemaERNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1936) %i.pp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.thread715 unwind label %bb.al

bb.bl:                                            ; preds = %bb.bf, %_ZNSt10unique_ptrIN11flatbuffers6ParserESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.ps = load i8, ptr %i.ai, align 1, !tbaa !143, !range !95, !noundef !96
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.bm, label %bb.cc

bb.bm:                                            ; preds = %bb.bl
  %i.pu = load i64, ptr %i.ao, align 8, !tbaa !161
  %i.pv = icmp eq i64 %i.pu, 128
  br i1 %i.pv, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i, label %bb.bz

_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i:            ; preds = %bb.bm
  %i.pw = load ptr, ptr %6, align 8, !tbaa !24    ; 3 uses
  %i.px = load i64, ptr %i.j, align 8, !tbaa !43  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.pw, ptr %4, align 8, !tbaa !315
  store i64 %i.px, ptr %i.ap, align 8, !tbaa !316
  store i64 0, ptr %i.aq, align 8, !tbaa !317
  store i64 64, ptr %i.ar, align 8, !tbaa !318
  store i64 0, ptr %i.as, align 8, !tbaa !319
  store i64 %i.px, ptr %i.at, align 8, !tbaa !610
  store i8 1, ptr %i.au, align 8, !tbaa !611
  store ptr %17, ptr %i.av, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i8 0, ptr %i.c, align 1, !tbaa !46
  %.not717 = icmp eq i64 %i.px, 0
  br i1 %.not717, label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i.thread, label %bb.bn

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i.thread: ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.thread

bb.bn:                                            ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i
  invoke void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr null, i64 noundef %i.px, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i unwind label %bb.bw

_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i:        ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.py = icmp ugt i64 %i.px, 2
  br i1 %i.py, label %bb.bo, label %.thread

bb.bo:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.px ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %i.pz, i64 -1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !46
  %i.qc = zext i8 %i.qb to i64                    ; 5 uses
  %i.qd = call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.qc)
  %i.qe = icmp eq i64 %i.qd, 1
  %i.qf = and i64 %i.qc, 15
  %switch.i.i.i = icmp ne i64 %i.qf, 0
  %or.cond.i.i.i = and i1 %i.qe, %switch.i.i.i
  %i.qg = add nsw i64 %i.px, -2
  %i.qh = icmp sge i64 %i.qg, %i.qc
  %or.cond.i.i = and i1 %i.qh, %or.cond.i.i.i
  br i1 %or.cond.i.i, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %bb.bo
  %i.qi = getelementptr inbounds i8, ptr %i.pz, i64 -2 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !46  ; 2 uses
  %i.qk = sub nsw i64 0, %i.qc
  %i.ql = getelementptr inbounds i8, ptr %i.qi, i64 %i.qk
  %i.qm = and i8 %i.qj, 3
  %i.qn = shl nuw nsw i8 1, %i.qm
  %i.qo = lshr i8 %i.qj, 2
  %.sroa.510.8.insert.ext.i.i = zext nneg i8 %i.qo to i64
  %.sroa.510.8.insert.shift.i.i = shl nuw nsw i64 %.sroa.510.8.insert.ext.i.i, 32
  %.sroa.4.8.insert.ext.i.i = zext nneg i8 %i.qn to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i, 8
  %.sroa.4.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i, %.sroa.510.8.insert.shift.i.i
  %.sroa.2.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.insert.i.i, %i.qc
  %i.qp = invoke noundef zeroext i1 @_ZN11flexbuffers8Verifier9VerifyRefENS_9ReferenceE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nonnull %i.ql, i64 %.sroa.2.8.insert.insert.i.i)
          to label %bb.bq unwind label %bb.bw

.thread:                                          ; preds = %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i.thread, %_ZNSt6vectorIhSaIhEE6resizeEmRKh.exit.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.qp, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.thread, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  %i.qq = load ptr, ptr %.sroa.0707.01296, align 8, !tbaa !24, !noalias !612
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0707.01296, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !43, !noalias !612 ; 3 uses
  store ptr %i.aw, ptr %18, align 8, !tbaa !47, !alias.scope !613
  store i64 0, ptr %i.ax, align 8, !tbaa !43, !alias.scope !613
  store i8 0, ptr %i.aw, align 8, !tbaa !46, !alias.scope !613
  %i.qt = add i64 %i.qs, 35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.qt)
          to label %bb.bs unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp

bb.bs:                                            ; preds = %bb.br
  %i.qu = load i64, ptr %i.ax, align 8, !tbaa !43, !alias.scope !613
  %i.qv = add i64 %i.qu, -4611686018427387869
  %i.qw = icmp ult i64 %i.qv, 35
  br i1 %i.qw, label %.invoke.i.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i337: ; preds = %bb.bs
  %i.qx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.373, i64 noundef 35)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i338 unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i338: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i337
  %i.qy = load i64, ptr %i.ax, align 8, !tbaa !43, !alias.scope !613
  %i.qz = sub i64 4611686018427387903, %i.qy
  %i.ra = icmp ult i64 %i.qz, %i.qs
  br i1 %i.ra, label %.invoke.i.i340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i339

.invoke.i.i340:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i338, %bb.bs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.cont.i.i341 unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp

.cont.i.i341:                                     ; preds = %.invoke.i.i340
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i338
  %i.rb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %i.qq, i64 noundef %i.qs)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit344 unwind label %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i337, %bb.br, %.invoke.i.i340
  %lpad.loopexit.split-lp1712 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rc = load ptr, ptr %18, align 8, !tbaa !24, !alias.scope !613 ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.aw
  br i1 %i.rd, label %.body342, label %.body342.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit344: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i339
  %i.re = load ptr, ptr %i.m, align 8, !tbaa !41
  invoke void %i.re(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %18, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit346 unwind label %bb.bt, !inline_history !42

_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit346: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit344
  %i.rf = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.aw
  br i1 %i.rg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit346
  %i.rh = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bu

bb.bt:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit344
  %i.rj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rk = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.aw
  br i1 %i.rl, label %.body342, label %.body342.sink.split

.body342.sink.split:                              ; preds = %bb.bt, %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp
  %.sink1648 = phi ptr [ %i.rc, %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ], [ %i.rk, %bb.bt ]
  %.pn150.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1712, %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ], [ %i.rj, %bb.bt ]
  %i.rm = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %.sink1648, i64 noundef %i.rn) #28
  br label %.body342

.body342:                                         ; preds = %.body342.sink.split, %bb.bt, %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp
  %.pn150 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1712, %.loopexit.split-lp800.loopexit.split-lp.loopexit.split-lp ], [ %i.rj, %bb.bt ], [ %.pn150.ph, %.body342.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.px ; 2 uses
  %i.rp = getelementptr inbounds i8, ptr %i.ro, i64 -1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !46
  %i.rr = getelementptr inbounds i8, ptr %i.ro, i64 -2 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !46  ; 2 uses
  %i.rt = zext i8 %i.rq to i64                    ; 2 uses
  %i.ru = sub nsw i64 0, %i.rt
  %i.rv = getelementptr inbounds i8, ptr %i.rr, i64 %i.ru
  %i.rw = and i8 %i.rs, 3
  %i.rx = shl nuw nsw i8 1, %i.rw
  %i.ry = lshr i8 %i.rs, 2
  %.sroa.58.8.insert.ext.i = zext nneg i8 %i.ry to i64
  %.sroa.58.8.insert.shift.i = shl nuw nsw i64 %.sroa.58.8.insert.ext.i, 32
  %.sroa.4.8.insert.ext.i = zext nneg i8 %i.rx to i64
  %.sroa.4.8.insert.shift.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i, 8
  %.sroa.4.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %.sroa.58.8.insert.shift.i
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.insert.i, %i.rt
  %i.rz = load ptr, ptr %0, align 8, !tbaa !309   ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 744
  store ptr %i.rv, ptr %i.sa, align 8, !tbaa !28
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rz, i64 752
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.sb = load ptr, ptr %17, align 8, !tbaa !276  ; 3 uses
  %.not.i.i.i353 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i353, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sc = load ptr, ptr %i.ay, align 8, !tbaa !277
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = ptrtoint ptr %i.sb to i64
  %i.sf = sub i64 %i.sd, %i.se
end_hunk_1
begin_hunk_2_@_ZN11flatbuffers12FlatCompiler12GenerateCodeERKNS_12FlatCOptionsERNS_6ParserE:bb.a
  %.pn152 = phi { ptr, i32 } [ %i.sg, %bb.bw ], [ %.pn150, %.body342 ]
  %i.sh = load ptr, ptr %17, align 8, !tbaa !276  ; 3 uses
  %.not.i.i.i354 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i354, label %_ZNSt6vectorIhSaIhEED2Ev.exit355, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.si = load ptr, ptr %i.ay, align 8, !tbaa !277
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.sh to i64
  %i.sl = sub i64 %i.sj, %i.sk
  call void @_ZdlPvm(ptr noundef nonnull %i.sh, i64 noundef %i.sl) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit355

_ZNSt6vectorIhSaIhEED2Ev.exit355:                 ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.gx

bb.bz:                                            ; preds = %bb.bm
  %i.sm = load ptr, ptr %0, align 8, !tbaa !309   ; 20 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 584
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !276 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 592 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !279
  %.not.i.i.i356 = icmp eq ptr %i.sq, %i.so
  br i1 %.not.i.i.i356, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.bz
  store ptr %i.so, ptr %i.sp, align 8, !tbaa !279
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.bz
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 608
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !287 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 616 ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !614
  %.not.i.i1.i = icmp eq ptr %i.su, %i.ss
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN11flexbuffers7Builder5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11flexbuffers7Builder5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  store ptr %i.ss, ptr %i.st, align 8, !tbaa !614
  br label %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN11flexbuffers7Builder5ValueES2_EvT_S4_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sm, i64 632
  store i8 0, ptr %i.sv, align 8, !tbaa !615
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sm, i64 640
  store i32 0, ptr %i.sw, align 8, !tbaa !278
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sm, i64 648
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sm, i64 664 ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImEN11flexbuffers7Builder16KeyOffsetCompareESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.sx, ptr noundef %i.sz)
          to label %_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEE5clearEv.exit.i unwind label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EE5clearEv.exit.i
  %i.ta = landingpad { ptr, i32 }
          catch ptr null
  %i.tb = extractvalue { ptr, i32 } %i.ta, 0
  call void @__clang_call_terminate(ptr %i.tb) #31
  unreachable

_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEE5clearEv.exit.i: ; preds = %_ZNSt6vectorIN11flexbuffers7Builder5ValueESaIS2_EE5clearEv.exit.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sm, i64 656 ; 2 uses
  store ptr null, ptr %i.sy, align 8, !tbaa !49
  %i.td = getelementptr inbounds nuw i8, ptr %i.sm, i64 672
  store ptr %i.tc, ptr %i.td, align 8, !tbaa !50
  %i.te = getelementptr inbounds nuw i8, ptr %i.sm, i64 680
  store ptr %i.tc, ptr %i.te, align 8, !tbaa !101
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sm, i64 688
  store i64 0, ptr %i.tf, align 8, !tbaa !102
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sm, i64 696
  %i.th = getelementptr inbounds nuw i8, ptr %i.sm, i64 712 ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_EN11flexbuffers7Builder19StringOffsetCompareESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.tg, ptr noundef %i.ti)
          to label %_ZN11flexbuffers7Builder5ClearEv.exit unwind label %bb.cb

bb.cb:                                            ; preds = %_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEE5clearEv.exit.i
  %i.tj = landingpad { ptr, i32 }
          catch ptr null
  %i.tk = extractvalue { ptr, i32 } %i.tj, 0
  call void @__clang_call_terminate(ptr %i.tk) #31
  unreachable

_ZN11flexbuffers7Builder5ClearEv.exit:            ; preds = %_ZNSt3setImN11flexbuffers7Builder16KeyOffsetCompareESaImEE5clearEv.exit.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sm, i64 704 ; 2 uses
  store ptr null, ptr %i.th, align 8, !tbaa !49
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sm, i64 720
  store ptr %i.tl, ptr %i.tm, align 8, !tbaa !50
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sm, i64 728
  store ptr %i.tl, ptr %i.tn, align 8, !tbaa !101
  %i.to = getelementptr inbounds nuw i8, ptr %i.sm, i64 736
  store i64 0, ptr %i.to, align 8, !tbaa !102
  invoke void @_ZNK11flatbuffers12FlatCompiler9ParseFileERNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKSt6vectorIPKcSaISD_EE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1936) %i.sm, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.ci unwind label %bb.al

bb.cc:                                            ; preds = %bb.bl
  %i.tp = load ptr, ptr %0, align 8, !tbaa !309   ; 5 uses
  invoke void @_ZNK11flatbuffers12FlatCompiler9ParseFileERNS_6ParserERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_RKSt6vectorIPKcSaISD_EE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1936) %i.tp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.cd unwind label %bb.al

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.ha, label %.thread715, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 504
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !271
  %.not147 = icmp eq i32 %i.tr, 0
  br i1 %.not147, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.ts = load ptr, ptr %.sroa.0707.01296, align 8, !tbaa !24, !noalias !616
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0707.01296, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !43, !noalias !616 ; 3 uses
  store ptr %i.am, ptr %19, align 8, !tbaa !47, !alias.scope !617
  store i64 0, ptr %i.an, align 8, !tbaa !43, !alias.scope !617
  store i8 0, ptr %i.am, align 8, !tbaa !46, !alias.scope !617
  %i.tv = add i64 %i.tu, 53
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.tv)
          to label %bb.cg unwind label %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  %i.tw = load i64, ptr %i.an, align 8, !tbaa !43, !alias.scope !617
  %i.tx = add i64 %i.tw, -4611686018427387851
  %i.ty = icmp ult i64 %i.tx, 53
  br i1 %i.ty, label %.invoke.i.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360: ; preds = %bb.cg
  %i.tz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.374, i64 noundef 53)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361 unwind label %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360
  %i.ua = load i64, ptr %i.an, align 8, !tbaa !43, !alias.scope !617
  %i.ub = sub i64 4611686018427387903, %i.ua
  %i.uc = icmp ult i64 %i.ub, %i.tu
  br i1 %i.uc, label %.invoke.i.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362

.invoke.i.i363:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361, %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.cont.i.i364 unwind label %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp

.cont.i.i364:                                     ; preds = %.invoke.i.i363
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i361
  %i.ud = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.ts, i64 noundef %i.tu)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit367 unwind label %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i360, %bb.cf, %.invoke.i.i363
  %lpad.loopexit.split-lp1709 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ue = load ptr, ptr %19, align 8, !tbaa !24, !alias.scope !617 ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.am
  br i1 %i.uf, label %.body365, label %.body365.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit367: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i362
  %i.ug = load ptr, ptr %i.m, align 8, !tbaa !41
  invoke void %i.ug(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit369 unwind label %bb.ch, !inline_history !42

_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit369: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit367
  %i.uh = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.am
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit369
  %i.uj = load i64, ptr %i.am, align 8, !tbaa !46
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ci

bb.ch:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit367
  %i.ul = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.um = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.am
  br i1 %i.un, label %.body365, label %.body365.sink.split

.body365.sink.split:                              ; preds = %bb.ch, %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp
  %.sink1651 = phi ptr [ %i.ue, %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp ], [ %i.um, %bb.ch ]
  %.pn148.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1709, %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp ], [ %i.ul, %bb.ch ]
  %i.uo = load i64, ptr %i.am, align 8, !tbaa !46
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %.sink1651, i64 noundef %i.up) #28
  br label %.body365

.body365:                                         ; preds = %.body365.sink.split, %bb.ch, %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp
  %.pn148 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1709, %.loopexit.split-lp795.loopexit.split-lp.loopexit.split-lp ], [ %i.ul, %bb.ch ], [ %.pn148.ph, %.body365.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.gx

bb.ci:                                            ; preds = %_ZN11flexbuffers7Builder5ClearEv.exit, %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %bb.ce
  %i.uq = phi ptr [ %i.sm, %_ZN11flexbuffers7Builder5ClearEv.exit ], [ %i.rz, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.tp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %i.tp, %bb.ce ] ; 2 uses
  br i1 %or.cond3, label %.thread715, label %bb.cq

.thread715:                                       ; preds = %bb.bk, %bb.cd, %bb.ci
  %i.ur = phi ptr [ %i.pp, %bb.bk ], [ %i.tp, %bb.cd ], [ %i.uq, %bb.ci ] ; 2 uses
  %i.us = load i64, ptr %i.az, align 8, !tbaa !43
  %i.ut = icmp eq i64 %i.us, 0
  br i1 %i.ut, label %bb.cq, label %bb.cj

bb.cj:                                            ; preds = %.thread715
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN11flatbuffers6Parser9ConformToB5cxx11ERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(1936) %i.ur, ptr noundef nonnull align 8 dereferenceable(1936) %3)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.uu = load i64, ptr %i.ba, align 8, !tbaa !43 ; 4 uses
  %i.uv = icmp eq i64 %i.uu, 0
  br i1 %i.uv, label %bb.cp, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.uw = load ptr, ptr %20, align 8, !tbaa !24, !noalias !618
  store ptr %i.bb, ptr %21, align 8, !tbaa !47, !alias.scope !619
  store i64 0, ptr %i.bc, align 8, !tbaa !43, !alias.scope !619
  store i8 0, ptr %i.bb, align 8, !tbaa !46, !alias.scope !619
  %i.ux = add i64 %i.uu, 23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.ux)
          to label %bb.cm unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp

bb.cm:                                            ; preds = %bb.cl
  %i.uy = load i64, ptr %i.bc, align 8, !tbaa !43, !alias.scope !619
  %i.uz = add i64 %i.uy, -4611686018427387881
  %i.va = icmp ult i64 %i.uz, 23
  br i1 %i.va, label %.invoke.i.i382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i379: ; preds = %bb.cm
  %i.vb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.375, i64 noundef 23)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i380 unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i380: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i379
  %i.vc = load i64, ptr %i.bc, align 8, !tbaa !43, !alias.scope !619
  %i.vd = sub i64 4611686018427387903, %i.vc
  %i.ve = icmp ult i64 %i.vd, %i.uu
  br i1 %i.ve, label %.invoke.i.i382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i381

.invoke.i.i382:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i380, %bb.cm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.cont.i.i383 unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp

.cont.i.i383:                                     ; preds = %.invoke.i.i382
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i380
  %i.vf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.uw, i64 noundef %i.uu)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit386 unwind label %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i379, %bb.cl, %.invoke.i.i382
  %lpad.loopexit.split-lp1715 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vg = load ptr, ptr %21, align 8, !tbaa !24, !alias.scope !619 ; 2 uses
  %i.vh = icmp eq ptr %i.vg, %i.bb
  br i1 %i.vh, label %.body384, label %.body384.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit386: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i381
  %i.vi = load ptr, ptr %i.m, align 8, !tbaa !41
  invoke void %i.vi(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %21, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit388 unwind label %bb.co, !inline_history !42

_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit388: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit386
  %i.vj = load ptr, ptr %21, align 8, !tbaa !24   ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.bb
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit388
  %i.vl = load i64, ptr %i.bb, align 8, !tbaa !46
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cj
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

bb.co:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit386
  %i.vo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vp = load ptr, ptr %21, align 8, !tbaa !24   ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.bb
  br i1 %i.vq, label %.body384, label %.body384.sink.split

.body384.sink.split:                              ; preds = %bb.co, %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp
  %.sink1654 = phi ptr [ %i.vg, %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp ], [ %i.vp, %bb.co ]
  %.pn154.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1715, %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp ], [ %i.vo, %bb.co ]
  %i.vr = load i64, ptr %i.bb, align 8, !tbaa !46
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %.sink1654, i64 noundef %i.vs) #28
  br label %.body384

.body384:                                         ; preds = %.body384.sink.split, %bb.co, %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp
  %.pn154 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1715, %.loopexit.split-lp805.loopexit.split-lp.loopexit.split-lp ], [ %i.vo, %bb.co ], [ %.pn154.ph, %.body384.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.vt = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.bd
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %.body384
  %i.vv = load i64, ptr %i.bd, align 8, !tbaa !46
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %bb.ck
  %i.vx = load ptr, ptr %20, align 8, !tbaa !24   ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.bd
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.cp
  %i.vz = load i64, ptr %i.bd, align 8, !tbaa !46
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %.pre1300 = load ptr, ptr %0, align 8, !tbaa !309
  br label %bb.cq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %.body384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %bb.cn
  %.pn154.pn = phi { ptr, i32 } [ %i.vn, %bb.cn ], [ %.pn154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ], [ %.pn154, %.body384 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.gx

bb.cq:                                            ; preds = %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, %.thread715
  %50 = phi i1 [ false, %bb.ci ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %i.ha, %.thread715 ] ; 3 uses
  %i.wb = phi ptr [ %i.uq, %bb.ci ], [ %.pre1300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400 ], [ %i.ur, %.thread715 ]
  %i.wc = invoke noundef zeroext i1 @_ZN11flatbuffers6Parser27HasCircularStructDependencyEv(ptr noundef nonnull align 8 dereferenceable(1936) %i.wb)
          to label %bb.cr unwind label %bb.al

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.wc, label %bb.cs, label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.wd = load ptr, ptr %.sroa.0707.01296, align 8, !tbaa !24, !noalias !620
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0707.01296, i64 8
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !43, !noalias !620 ; 3 uses
  store ptr %i.be, ptr %22, align 8, !tbaa !47, !alias.scope !621
  store i64 0, ptr %i.bf, align 8, !tbaa !43, !alias.scope !621
  store i8 0, ptr %i.be, align 8, !tbaa !46, !alias.scope !621
  %i.wg = add i64 %i.wf, 41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %22, i64 noundef %i.wg)
          to label %bb.ct unwind label %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cs
  %i.wh = load i64, ptr %i.bf, align 8, !tbaa !43, !alias.scope !621
  %i.wi = add i64 %i.wh, -4611686018427387863
  %i.wj = icmp ult i64 %i.wi, 41
  br i1 %i.wj, label %.invoke.i.i407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i404: ; preds = %bb.ct
  %i.wk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.376, i64 noundef 41)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i405 unwind label %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i405: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i404
  %i.wl = load i64, ptr %i.bf, align 8, !tbaa !43, !alias.scope !621
  %i.wm = sub i64 4611686018427387903, %i.wl
  %i.wn = icmp ult i64 %i.wm, %i.wf
  br i1 %i.wn, label %.invoke.i.i407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i406

.invoke.i.i407:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i405, %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.433) #29
          to label %.cont.i.i408 unwind label %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp

.cont.i.i408:                                     ; preds = %.invoke.i.i407
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i405
  %i.wo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef %i.wd, i64 noundef %i.wf)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit411 unwind label %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i406, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i404, %bb.cs, %.invoke.i.i407
  %lpad.loopexit.split-lp1718 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %22, align 8, !tbaa !24, !alias.scope !621 ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.be
  br i1 %i.wq, label %.body409, label %.body409.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit411: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i406
  %i.wr = load ptr, ptr %i.m, align 8, !tbaa !41
  invoke void %i.wr(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %22, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit413 unwind label %bb.cu, !inline_history !42

_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit413: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit411
  %i.ws = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.be
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit413
  %i.wu = load i64, ptr %i.be, align 8, !tbaa !46
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.wv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %_ZNK11flatbuffers12FlatCompiler5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb.exit413, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.cv

bb.cu:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit411
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wx = load ptr, ptr %22, align 8, !tbaa !24   ; 2 uses
  %i.wy = icmp eq ptr %i.wx, %i.be
  br i1 %i.wy, label %.body409, label %.body409.sink.split

.body409.sink.split:                              ; preds = %bb.cu, %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp
  %.sink1657 = phi ptr [ %i.wp, %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp ], [ %i.wx, %bb.cu ]
  %.pn157.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp1718, %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp ], [ %i.ww, %bb.cu ]
  %i.wz = load i64, ptr %i.be, align 8, !tbaa !46
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %.sink1657, i64 noundef %i.xa) #28
  br label %.body409

.body409:                                         ; preds = %.body409.sink.split, %bb.cu, %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp
  %.pn157 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1718, %.loopexit.split-lp810.loopexit.split-lp.loopexit.split-lp ], [ %i.ww, %bb.cu ], [ %.pn157.ph, %.body409.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.gx

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, %bb.cr
  %i.xb = load i8, ptr %i.bg, align 4, !tbaa !135, !range !95, !noundef !96
  %i.xc = trunc nuw i8 %i.xb to i1
  %i.xd = load i8, ptr %i.bh, align 1, !range !95
  %i.xe = trunc nuw i8 %i.xd to i1
  %or.cond8 = select i1 %i.xc, i1 true, i1 %i.xe
  br i1 %or.cond8, label %bb.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.cw:                                            ; preds = %bb.cv
  %i.xf = load ptr, ptr %0, align 8, !tbaa !309
  invoke void @_ZN11flatbuffers6Parser9SerializeEv(ptr noundef nonnull align 8 dereferenceable(1936) %i.xf)
          to label %bb.cx unwind label %bb.al

bb.cx:                                            ; preds = %bb.cw
  %.pre1302 = load i8, ptr %i.bg, align 4, !tbaa !135, !range !95
  %i.xg = trunc nuw i8 %.pre1302 to i1
  br i1 %i.xg, label %bb.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.cy:                                            ; preds = %bb.cx
  %i.xh = load ptr, ptr %0, align 8, !tbaa !309   ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 800
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 808
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !43
  %i.xl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.xi, i64 noundef 0, i64 noundef %i.xk, ptr noundef nonnull @.str.430, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.al ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.cv, %bb.cy, %bb.cx, %bb.ae, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %51 = phi i1 [ %50, %bb.cy ], [ %50, %bb.cx ], [ %i.ha, %bb.ae ], [ %i.ha, %bb.an ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298 ], [ %i.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %50, %bb.cv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  invoke void @_ZN11flatbuffers14StripExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296)
          to label %bb.cz unwind label %bb.dd

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZN11flatbuffers9StripPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.da unwind label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.xm = load ptr, ptr %24, align 8, !tbaa !24   ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.bi
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %bb.da
  %i.xo = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.xq = load i8, ptr %i.bj, align 2, !tbaa !162, !range !95, !noundef !96
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %bb.db, label %bb.df

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %i.xs = load ptr, ptr %0, align 8, !tbaa !309   ; 3 uses
  invoke void @_ZN11flatbuffers6Parser9SerializeEv(ptr noundef nonnull align 8 dereferenceable(1936) %i.xs)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dc:                                            ; preds = %bb.db
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 520
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !311
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 504
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !271
  %i.xx = zext i32 %i.xw to i64
  br label %bb.df

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

bb.de:                                            ; preds = %bb.cz
  %i.xz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ya = load ptr, ptr %24, align 8, !tbaa !24   ; 2 uses
  %i.yb = icmp eq ptr %i.ya, %i.bi
  br i1 %i.yb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424: ; preds = %bb.de
  %i.yc = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.yd = add i64 %i.yc, 1
  call void @_ZdlPvm(ptr noundef %i.ya, i64 noundef %i.yd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424, %bb.dd
  %.pn168 = phi { ptr, i32 } [ %i.xy, %bb.dd ], [ %i.xz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i424 ], [ %i.xz, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692

bb.df:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %.089 = phi ptr [ %i.xu, %bb.dc ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ]
  %.0 = phi i64 [ %i.xx, %bb.dc ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ]
  %i.ye = load ptr, ptr %i.bk, align 8, !tbaa !321 ; 2 uses
  %i.yf = load ptr, ptr %i.bl, align 8, !tbaa !321 ; 2 uses
  %.not7181293 = icmp eq ptr %i.ye, %i.yf
  br i1 %.not7181293, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.df
  %invariant.op = or i1 %51, %i.hb
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.gl, %bb.df
  %i.yg = load i64, ptr %i.dh, align 8, !tbaa !43
  %i.yh = icmp eq i64 %i.yg, 0
  br i1 %i.yh, label %bb.gu, label %bb.gm

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.gl
  %.sroa.0702.01294 = phi ptr [ %i.api, %bb.gl ], [ %i.ye, %.lr.ph.preheader ] ; 14 uses
  %i.yi = load i8, ptr %i.bm, align 2, !tbaa !136, !range !95, !noundef !96
  %i.yj = trunc nuw i8 %i.yi to i1
  br i1 %i.yj, label %bb.dg, label %bb.dz

bb.dg:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  store ptr %i.cm, ptr %25, align 8, !tbaa !47
  store i64 0, ptr %i.cn, align 8, !tbaa !43
  store i8 0, ptr %i.cm, align 8, !tbaa !46
  %i.yk = load ptr, ptr %.sroa.0702.01294, align 8, !tbaa !158 ; 2 uses
  %i.yl = load ptr, ptr %0, align 8, !tbaa !309
  %i.ym = load ptr, ptr %i.yk, align 8, !tbaa !57
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 40
  %i.yo = load ptr, ptr %i.yn, align 8
  %i.yp = invoke noundef i32 %i.yo(ptr noundef nonnull align 8 dereferenceable(40) %i.yk, ptr noundef nonnull align 8 dereferenceable(1936) %i.yl, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0707.01296, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.dh unwind label %bb.dn

bb.dh:                                            ; preds = %bb.dg
  %i.yq = icmp eq i32 %i.yp, 0
  br i1 %i.yq, label %bb.di, label %bb.dq

bb.di:                                            ; preds = %bb.dh
  %i.yr = load i64, ptr %i.cn, align 8, !tbaa !43 ; 5 uses
  %i.ys = icmp eq i64 %i.yr, 0
  br i1 %i.ys, label %bb.dq, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  store ptr %i.co, ptr %27, align 8, !tbaa !47
  %i.yt = load ptr, ptr %25, align 8, !tbaa !24   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.yr, ptr %i.b, align 8, !tbaa !48
  %i.yu = icmp ugt i64 %i.yr, 15
  br i1 %i.yu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.dj
  %i.yv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.do ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i
  store ptr %i.yv, ptr %27, align 8, !tbaa !24
  %i.yw = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.yw, ptr %i.co, align 8, !tbaa !46
  br label %bb.dl

._crit_edge.i.i:                                  ; preds = %bb.dj
  %cond = icmp eq i64 %i.yr, 1
  br i1 %cond, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %._crit_edge.i.i
  %i.yx = load i8, ptr %i.yt, align 1, !tbaa !46
  store i8 %i.yx, ptr %i.co, align 8, !tbaa !46
  br label %._crit_edge.i.i428

bb.dl:                                            ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.yy = phi ptr [ %i.yv, %._crit_edge.i.i.thread ], [ %i.co, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yy, ptr align 1 %i.yt, i64 %i.yr, i1 false)
  br label %._crit_edge.i.i428

._crit_edge.i.i428:                               ; preds = %bb.dl, %bb.dk
  %i.yz = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  store i64 %i.yz, ptr %i.cp, align 8, !tbaa !43
  %i.za = load ptr, ptr %27, align 8, !tbaa !24
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.yz
  store i8 0, ptr %i.zb, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  store ptr %i.cq, ptr %28, align 8, !tbaa !47
  store i8 32, ptr %i.cq, align 8, !tbaa !46
  store i64 1, ptr %i.cr, align 8, !tbaa !43
  store i8 0, ptr %i.do, align 1, !tbaa !46
  store ptr %i.cs, ptr %29, align 8, !tbaa !47
  store i16 23584, ptr %i.cs, align 8
  store i64 2, ptr %i.ct, align 8, !tbaa !43
  store i8 0, ptr %i.dp, align 2, !tbaa !46
  invoke void @_ZN11flatbuffers8WordWrapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %27, i64 noundef 80, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %28, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.dm unwind label %bb.dp

bb.dm:                                            ; preds = %._crit_edge.i.i428
  %i.zc = load ptr, ptr %26, align 8, !tbaa !24
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.zc) ; 0 uses
  %i.zd = load ptr, ptr %26, align 8, !tbaa !24   ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.cu
  br i1 %i.ze, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.dm
  %i.zf = load i64, ptr %i.cu, align 8, !tbaa !46
  %i.zg = add i64 %i.zf, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  %i.zh = load ptr, ptr %29, align 8, !tbaa !24   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.cs
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %i.zj = load i64, ptr %i.cs, align 8, !tbaa !46
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438
  %i.zl = load ptr, ptr %28, align 8, !tbaa !24   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.cq
  br i1 %i.zm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440
  %i.zn = load i64, ptr %i.cq, align 8, !tbaa !46
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zl, i64 noundef %i.zo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  %i.zp = load ptr, ptr %27, align 8, !tbaa !24   ; 2 uses
  %i.zq = icmp eq ptr %i.zp, %i.co
  br i1 %i.zq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443
  %i.zr = load i64, ptr %i.co, align 8, !tbaa !46
  %i.zs = add i64 %i.zr, 1
  call void @_ZdlPvm(ptr noundef %i.zp, i64 noundef %i.zs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.dx

bb.dn:                                            ; preds = %bb.dg
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.do:                                            ; preds = %.noexc.i
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

bb.dp:                                            ; preds = %._crit_edge.i.i428
  %i.zv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zw = load ptr, ptr %29, align 8, !tbaa !24   ; 2 uses
  %i.zx = icmp eq ptr %i.zw, %i.cs
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447: ; preds = %bb.dp
  %i.zy = load i64, ptr %i.cs, align 8, !tbaa !46
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zw, i64 noundef %i.zz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447
  %i.aaa = load ptr, ptr %28, align 8, !tbaa !24  ; 2 uses
  %i.aab = icmp eq ptr %i.aaa, %i.cq
  br i1 %i.aab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449
  %i.aac = load i64, ptr %i.cq, align 8, !tbaa !46
  %i.aad = add i64 %i.aac, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  %i.aae = load ptr, ptr %27, align 8, !tbaa !24  ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.co
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452
  %i.aag = load i64, ptr %i.co, align 8, !tbaa !46
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453, %bb.do
  %.pn191.pn.pn = phi { ptr, i32 } [ %i.zu, %bb.do ], [ %i.zv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453 ], [ %i.zv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  br label %bb.dy

bb.dq:                                            ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #26
  %i.aai = load ptr, ptr %.sroa.0702.01294, align 8, !tbaa !158 ; 2 uses
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !57
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 96
  %i.aal = load ptr, ptr %i.aak, align 8
  invoke void %i.aal(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(40) %i.aai)
          to label %bb.dr unwind label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.aam = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.379, i64 noundef 30)
          to label %.noexc459 unwind label %bb.dv ; 6 uses

end_hunk_2

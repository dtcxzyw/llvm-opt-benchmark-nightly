inline.NumInlined: 2462
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow8internal13GetRandomSeedEv:bb.a

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5arrow8internal13GetRandomSeedEvE14seed_gen_mutex) #36 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_116GetSeedGeneratorEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::random_device", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.79, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !15
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !15
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #39
  br label %_ZNSt13random_deviceC2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt13random_deviceD2Ev.exit2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.aj, %_ZNSt13random_deviceD2Ev.exit2 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  %i.m = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.h

_ZNSt13random_deviceclEv.exit:                    ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.n = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceclEv.exit1 unwind label %bb.h

_ZNSt13random_deviceclEv.exit1:                   ; preds = %_ZNSt13random_deviceclEv.exit
  %i.o = zext i32 %i.m to i64
  %i.p = zext i32 %i.n to i64
  %i.q = shl nuw i64 %i.p, 32
  %i.r = or disjoint i64 %i.q, %i.o
  %i.s = call i32 @getpid() #36
  %i.t = sext i32 %i.s to i64
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  store i64 %i.u, ptr @_ZZN5arrow8internal13GetRandomSeedEvE8seed_gen, align 8, !tbaa !392
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZNSt13random_deviceclEv.exit1
  %store_forwarded = phi i64 [ %i.u, %_ZNSt13random_deviceclEv.exit1 ], [ %i.af, %bb.e ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %_ZNSt13random_deviceclEv.exit1 ], [ %i.ag, %bb.e ] ; 4 uses
  %i.v = getelementptr [8 x i8], ptr @_ZZN5arrow8internal13GetRandomSeedEvE8seed_gen, i64 %.011.i.i
  %i.w = lshr i64 %store_forwarded, 62
  %i.x = xor i64 %i.w, %store_forwarded
  %i.y = mul i64 %i.x, 6364136223846793005
  %i.z = add i64 %i.y, %.011.i.i                  ; 3 uses
  store i64 %i.z, ptr %i.v, align 8, !tbaa !392
  %i.aa = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, 312
  br i1 %exitcond.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr [8 x i8], ptr @_ZZN5arrow8internal13GetRandomSeedEvE8seed_gen, i64 %i.aa
  %i.ac = lshr i64 %i.z, 62
  %i.ad = xor i64 %i.ac, %i.z
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, %i.aa                    ; 2 uses
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !392
  %i.ag = add nuw nsw i64 %.011.i.i, 2
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  store i64 312, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal13GetRandomSeedEvE8seed_gen, i64 2496), align 8, !tbaa !660
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #41
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.h:                                             ; preds = %_ZNSt13random_deviceclEv.exit, %_ZNSt13random_deviceC2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceD2Ev.exit2 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #41
  unreachable

_ZNSt13random_deviceD2Ev.exit2:                   ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !660  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 311
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !392
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load9, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !392 ; 4 uses
  %wide.load9 = load <2 x i64>, ptr %i.g, align 8, !tbaa !392 ; 4 uses
  %i.h = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.i = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load9, <2 x i32> <i32 1, i32 2>
  %i.j = and <2 x i64> %i.h, splat (i64 -2147483648)
  %i.k = and <2 x i64> %i.i, splat (i64 -2147483648)
  %i.l = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.m = and <2 x i64> %wide.load9, splat (i64 2147483646)
  %i.n = or disjoint <2 x i64> %i.l, %i.j
  %i.o = or disjoint <2 x i64> %i.m, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 1248
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 1264
  %wide.load10 = load <2 x i64>, ptr %i.p, align 8, !tbaa !392
  %wide.load11 = load <2 x i64>, ptr %i.q, align 8, !tbaa !392
  %i.r = lshr exact <2 x i64> %i.n, splat (i64 1)
  %i.s = lshr exact <2 x i64> %i.o, splat (i64 1)
  %i.t = xor <2 x i64> %i.r, %wide.load10
  %i.u = xor <2 x i64> %i.s, %wide.load11
  %i.v = and <2 x i64> %wide.load, splat (i64 1)
  %i.w = and <2 x i64> %wide.load9, splat (i64 1)
  %i.x = icmp eq <2 x i64> %i.v, zeroinitializer
  %i.y = icmp eq <2 x i64> %i.w, zeroinitializer
  %i.z = select <2 x i1> %i.x, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.aa = select <2 x i1> %i.y, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.ab = xor <2 x i64> %i.t, %i.z
  %i.ac = xor <2 x i64> %i.u, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store <2 x i64> %i.ab, ptr %i.d, align 8, !tbaa !392
  store <2 x i64> %i.ac, ptr %i.ad, align 8, !tbaa !392
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, 156
  br i1 %i.ae, label %vector.ph12, label %vector.body, !llvm.loop !662

vector.ph12:                                      ; preds = %vector.body
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !392
  %vector.recur.init15 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body13

vector.body13:                                    ; preds = %vector.body13, %vector.ph12
  %index14 = phi i64 [ 0, %vector.ph12 ], [ %index.next21, %vector.body13 ] ; 3 uses
  %vector.recur16 = phi <2 x i64> [ %vector.recur.init15, %vector.ph12 ], [ %wide.load18, %vector.body13 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index14 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1248
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index14 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1256
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1272
  %wide.load17 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !392 ; 4 uses
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !392 ; 5 uses
  %i.ak = shufflevector <2 x i64> %vector.recur16, <2 x i64> %wide.load17, <2 x i32> <i32 1, i32 2>
  %i.al = shufflevector <2 x i64> %wide.load17, <2 x i64> %wide.load18, <2 x i32> <i32 1, i32 2>
  %i.am = and <2 x i64> %i.ak, splat (i64 -2147483648)
  %i.an = and <2 x i64> %i.al, splat (i64 -2147483648)
  %i.ao = and <2 x i64> %wide.load17, splat (i64 2147483646)
  %i.ap = and <2 x i64> %wide.load18, splat (i64 2147483646)
  %i.aq = or disjoint <2 x i64> %i.ao, %i.am
  %i.ar = or disjoint <2 x i64> %i.ap, %i.an
  %i.as = getelementptr i8, ptr %i.af, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.af, align 8, !tbaa !392
  %wide.load20 = load <2 x i64>, ptr %i.as, align 8, !tbaa !392
  %i.at = lshr exact <2 x i64> %i.aq, splat (i64 1)
  %i.au = lshr exact <2 x i64> %i.ar, splat (i64 1)
  %i.av = xor <2 x i64> %i.at, %wide.load19
  %i.aw = xor <2 x i64> %i.au, %wide.load20
  %i.ax = and <2 x i64> %wide.load17, splat (i64 1)
  %i.ay = and <2 x i64> %wide.load18, splat (i64 1)
  %i.az = icmp eq <2 x i64> %i.ax, zeroinitializer
  %i.ba = icmp eq <2 x i64> %i.ay, zeroinitializer
  %i.bb = select <2 x i1> %i.az, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.bc = select <2 x i1> %i.ba, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -5403634167711393303)
  %i.bd = xor <2 x i64> %i.av, %i.bb
  %i.be = xor <2 x i64> %i.aw, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 1264
  store <2 x i64> %i.bd, ptr %i.ag, align 8, !tbaa !392
  store <2 x i64> %i.be, ptr %i.bf, align 8, !tbaa !392
  %index.next21 = add nuw i64 %index14, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next21, 152
  br i1 %i.bg, label %.preheader.i, label %vector.body13, !llvm.loop !665

.preheader.i:                                     ; preds = %vector.body13
  %vector.recur.extract = extractelement <2 x i64> %wide.load18, i64 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %i.bi = and i64 %vector.recur.extract, -2147483648
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !392 ; 3 uses
  %i.bl = and i64 %i.bk, 2147483646
  %i.bm = or disjoint i64 %i.bl, %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !392
  %i.bp = lshr exact i64 %i.bm, 1
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = and i64 %i.bk, 1
  %.not19.i = icmp eq i64 %i.br, 0
  %i.bs = select i1 %.not19.i, i64 0, i64 -5403634167711393303
  %i.bt = xor i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bh, align 8, !tbaa !392
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.bv = and i64 %i.bk, -2147483648
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !392 ; 3 uses
  %i.by = and i64 %i.bx, 2147483646
  %i.bz = or disjoint i64 %i.by, %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !392
  %i.cc = lshr exact i64 %i.bz, 1
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = and i64 %i.bx, 1
  %.not19.i.1 = icmp eq i64 %i.ce, 0
  %i.cf = select i1 %.not19.i.1, i64 0, i64 -5403634167711393303
  %i.cg = xor i64 %i.cd, %i.cf
  store i64 %i.cg, ptr %i.bu, align 8, !tbaa !392
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ci = and i64 %i.bx, -2147483648
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !392 ; 2 uses
  %i.cl = and i64 %i.ck, 2147483646
  %i.cm = or disjoint i64 %i.cl, %i.ci
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !392
  %i.cp = lshr exact i64 %i.cm, 1
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = and i64 %i.ck, 1
  %.not19.i.2 = icmp eq i64 %i.cr, 0
  %i.cs = select i1 %.not19.i.2, i64 0, i64 -5403634167711393303
  %i.ct = xor i64 %i.cq, %i.cs
  store i64 %i.ct, ptr %i.ch, align 8, !tbaa !392
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !392
  %i.cw = and i64 %i.cv, -2147483648
  %i.cx = load i64, ptr %0, align 8, !tbaa !392   ; 2 uses
  %i.cy = and i64 %i.cx, 2147483646
  %i.cz = or disjoint i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.db = load i64, ptr %i.da, align 8, !tbaa !392
  %i.dc = lshr exact i64 %i.cz, 1
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = and i64 %i.cx, 1
  %.not.i = icmp eq i64 %i.de, 0
  %i.df = select i1 %.not.i, i64 0, i64 -5403634167711393303
  %i.dg = xor i64 %i.dd, %i.df
  store i64 %i.dg, ptr %i.cu, align 8, !tbaa !392
  br label %bb.b

bb.b:                                             ; preds = %.preheader.i, %bb.a
  %i.dh = phi i64 [ 0, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.a, align 8, !tbaa !660
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dh
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !392 ; 2 uses
  %i.dl = lshr i64 %i.dk, 29
  %i.dm = and i64 %i.dl, 22906492245
  %i.dn = xor i64 %i.dm, %i.dk                    ; 2 uses
  %i.do = shl i64 %i.dn, 17
  %i.dp = and i64 %i.do, 8202884508482404352
  %i.dq = xor i64 %i.dp, %i.dn                    ; 2 uses
  %i.dr = shl i64 %i.dq, 37
  %i.ds = and i64 %i.dr, -2270628950310912
  %i.dt = xor i64 %i.ds, %i.dq                    ; 2 uses
  %i.du = lshr i64 %i.dt, 43
  %i.dv = xor i64 %i.du, %i.dt
  ret i64 %i.dv
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN5arrow8internal11GetThreadIdEv() local_unnamed_addr #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @pthread_self() #40
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5arrow8internal13GetCurrentRSSEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.std::basic_ifstream", align 8 ; 9 uses
  %1 = alloca %"class.arrow::util::ArrowLog", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !392
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull @.str.29, i32 noundef 8)
  %i.b = load ptr, ptr %0, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !666
  %i.h = and i32 %i.g, 5
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSirsERl.exit unwind label %bb.c ; 0 uses

_ZNSirsERl.exit:                                  ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !tbaa !392
  %i.k = call i64 @sysconf(i32 noundef 30) #36
  %i.l = mul nsw i64 %i.k, %i.j
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull @.str.30, i32 noundef 2177, i32 noundef 1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.h, !inline_history !675

.noexc:                                           ; preds = %bb.e
  br i1 %i.q, label %bb.f, label %_ZN5arrow4util12ArrowLogBaselsIA46_cEERS1_RKT_.exit

bb.f:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %1, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc8 unwind label %bb.h, !inline_history !675

.noexc8:                                          ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.31, i64 noundef 45)
          to label %_ZN5arrow4util12ArrowLogBaselsIA46_cEERS1_RKT_.exit unwind label %bb.h ; 0 uses

_ZN5arrow4util12ArrowLogBaselsIA46_cEERS1_RKT_.exit: ; preds = %.noexc, %.noexc8
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %.noexc8, %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %1) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.k

bb.j:                                             ; preds = %_ZN5arrow4util12ArrowLogBaselsIA46_cEERS1_RKT_.exit, %_ZNSirsERl.exit
  %.04 = phi i64 [ %i.l, %_ZNSirsERl.exit ], [ 0, %_ZN5arrow4util12ArrowLogBaselsIA46_cEERS1_RKT_.exit ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i64 %.04

bb.k:                                             ; preds = %bb.i, %bb.c
  %.pn6 = phi { ptr, i32 } [ %i.m, %bb.c ], [ %.pn, %bb.i ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #1

end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence_base64_encoding?download=true
inline.NumInlined: 334
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv6base6412Base64Writer8check_dtEPKc:bb.a
          to label %.noexc unwind label %bb.k     ; 0 uses

.noexc:                                           ; preds = %bb.j, %bb.i
  %i.ai = icmp ult ptr %i.ad, %i.r
  br i1 %i.ai, label %bb.i, label %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit.loopexit, !llvm.loop !1

_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit.loopexit: ; preds = %.noexc
  %.pre = load ptr, ptr %4, align 8, !tbaa !29
  br label %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit

_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit: ; preds = %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit.loopexit, %bb.h
  %i.aj = phi ptr [ %.pre, %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit.loopexit ], [ %i.o, %bb.h ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.k
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  %i.au = icmp eq i64 %i.k, %i.m
  br i1 %i.au, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.l
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !29
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.av, ptr nonnull %1, i64 %i.k)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %bb.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv6base6412Base64Writer8check_dtEPKc, ptr noundef nonnull @.str.1, i32 noundef 267) #22
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.p:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.p
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.o
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.o ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ax, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN2cv6base6420Base64ContextEmitter5writeINS0_24RawDataToBinaryConvertorEEERS1_RT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [80 x i8], align 16               ; 5 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #23 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.c, i8 0, i64 1024, i1 false)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !124  ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !125
  %i.h = icmp ult ptr %i.f, %i.g
  br i1 %i.h, label %.lr.ph, label %_ZNSt6vectorIhSaIhEED2Ev.exit12

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit
  %i.r = phi ptr [ %i.f, %.lr.ph ], [ %i.fx, %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit ]
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !126  ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 24
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.aj, %.noexc ] ; 2 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.09.i ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.ad = load i64, ptr %i.z, align 8, !tbaa !155
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !156
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag
  %i.ai = invoke noundef i64 %i.ab(ptr noundef %i.ae, ptr noundef nonnull %i.ah)
          to label %.noexc unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp, !inline_history !149 ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.aj = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aj, %i.x
  br i1 %exitcond.not.i, label %.loopexit.loopexit, label %bb.c, !llvm.loop !150

.loopexit.loopexit:                               ; preds = %.noexc
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !124
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.ak = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.r, %bb.b ]
  %i.al = load i64, ptr %i.k, align 8, !tbaa !127
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al ; 2 uses
  store ptr %i.am, ptr %i.d, align 8, !tbaa !124
  %i.an = load i64, ptr %i.l, align 8, !tbaa !128 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.an ; 2 uses
  %.not.i9.not = icmp eq i64 %i.an, 0
  br i1 %.not.i9.not, label %_ZN2cv6base6420Base64ContextEmitter5writeEPKhS3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit
  %i.ap = ptrtoint ptr %i.ao to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.preheader.i
  %.01218.i = phi ptr [ %i.c, %.preheader.i ], [ %i.ax, %.noexc10 ] ; 3 uses
  %i.aq = ptrtoint ptr %.01218.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !113 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.aw, i64 %i.ar) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %.01218.i, i64 %.sroa.speculated.i, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.01218.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.speculated.i ; 4 uses
  store ptr %i.az, ptr %i.n, align 8, !tbaa !113
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !112
  %.not14.i = icmp ult ptr %i.az, %i.ba
  br i1 %.not14.i, label %.noexc10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !111 ; 6 uses
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !109 ; 4 uses
  %2 = ptrtoint ptr %i.az to i64                  ; 2 uses
  %i.bd = icmp ne ptr %i.bb, null
  %i.be = icmp ne ptr %i.bc, null
  %or.cond.i = and i1 %i.bd, %i.be
  %i.bf = icmp ne ptr %i.az, %i.bb
  %or.cond3.i = and i1 %i.bf, %or.cond.i
  br i1 %or.cond3.i, label %bb.f, label %.noexc10

bb.f:                                             ; preds = %bb.e
  %i.bg = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bh = sub i64 %2, %i.bg                       ; 3 uses
  %i.bi = urem i64 %i.bh, 3                       ; 2 uses
  %i.bj = sub nuw i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bj
  %.not.i18 = icmp eq i64 %i.bh, %i.bi
  br i1 %.not.i18, label %._crit_edge.i, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.f, %.lr.ph.i19
  %.05364.i = phi ptr [ %i.ct, %.lr.ph.i19 ], [ %i.bc, %bb.f ] ; 5 uses
  %.05463.i = phi ptr [ %i.bp, %.lr.ph.i19 ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05463.i, i64 1
  %i.bm = load i8, ptr %.05463.i, align 1, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %.05463.i, i64 2
  %i.bo = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.05463.i, i64 3 ; 4 uses
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !23
  %i.br = zext i8 %i.bm to i32                    ; 2 uses
  %i.bs = lshr i32 %i.br, 2
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !23
  %i.bw = getelementptr inbounds nuw i8, ptr %.05364.i, i64 1
  store i8 %i.bv, ptr %.05364.i, align 1, !tbaa !23
  %i.bx = zext i8 %i.bo to i32                    ; 2 uses
  %i.by = lshr i32 %i.bx, 4
  %i.bz = shl nuw nsw i32 %i.br, 4
  %i.ca = and i32 %i.bz, 48
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !23
  %i.cf = getelementptr inbounds nuw i8, ptr %.05364.i, i64 2
  store i8 %i.ce, ptr %i.bw, align 1, !tbaa !23
  %i.cg = zext i8 %i.bq to i32                    ; 2 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = shl nuw nsw i32 %i.bx, 2
  %i.cj = and i32 %i.ci, 60
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %.05364.i, i64 3
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !23
  %i.cp = and i32 %i.cg, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.05364.i, i64 4 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !23
  %i.cu = icmp ult ptr %i.bp, %i.bk
  br i1 %i.cu, label %.lr.ph.i19, label %._crit_edge.i.loopexit, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i19
  %.pre30 = ptrtoint ptr %i.bp to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.f
  %.pre-phi = phi i64 [ %.pre30, %._crit_edge.i.loopexit ], [ %i.bg, %bb.f ]
  %.054.lcssa.i = phi ptr [ %i.bp, %._crit_edge.i.loopexit ], [ %i.bb, %bb.f ] ; 3 uses
  %.053.lcssa.i = phi ptr [ %i.ct, %._crit_edge.i.loopexit ], [ %i.bc, %bb.f ] ; 9 uses
  %i.cv = sub i64 %2, %.pre-phi
  switch i64 %i.cv, label %_ZN2cv6base6413base64_encodeEPKhPhmm.exit [
    i64 1, label %.thread.i
    i64 2, label %.thread61.i
  ]

.thread.i:                                        ; preds = %._crit_edge.i
  %i.cw = load i8, ptr %.054.lcssa.i, align 1, !tbaa !23
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = lshr i32 %i.cx, 2
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 1
  store i8 %i.db, ptr %.053.lcssa.i, align 1, !tbaa !23
  %i.dd = shl nuw nsw i32 %i.cx, 4
  %i.de = and i32 %i.dd, 48
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 16, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 2
  store i8 %i.dh, ptr %i.dc, align 1, !tbaa !23
  store i8 61, ptr %i.di, align 1, !tbaa !23
  br label %bb.g

.thread61.i:                                      ; preds = %._crit_edge.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.054.lcssa.i, i64 1
  %i.dk = load i8, ptr %.054.lcssa.i, align 1, !tbaa !23
  %i.dl = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dm = zext i8 %i.dk to i32                    ; 2 uses
  %i.dn = lshr i32 %i.dm, 2
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 1
  store i8 %i.dq, ptr %.053.lcssa.i, align 1, !tbaa !23
  %i.ds = shl nuw nsw i32 %i.dm, 4
  %i.dt = and i32 %i.ds, 48
  %i.du = zext i8 %i.dl to i32                    ; 2 uses
  %i.dv = lshr i32 %i.du, 4
  %i.dw = or disjoint i32 %i.dt, %i.dv
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !23
  %i.ea = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 2
  store i8 %i.dz, ptr %i.dr, align 1, !tbaa !23
  %i.eb = shl nuw nsw i32 %i.du, 2
  %i.ec = and i32 %i.eb, 60
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @_ZN2cv6base64L14base64_mappingE, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !23
  store i8 %i.ef, ptr %i.ea, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %.thread61.i, %.thread.i
  %.2.i = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 3
  %i.eg = getelementptr inbounds nuw i8, ptr %.053.lcssa.i, i64 4
  store i8 61, ptr %.2.i, align 1, !tbaa !23
  br label %_ZN2cv6base6413base64_encodeEPKhPhmm.exit

_ZN2cv6base6413base64_encodeEPKhPhmm.exit:        ; preds = %._crit_edge.i, %bb.g
  %.3.i = phi ptr [ %i.eg, %bb.g ], [ %.053.lcssa.i, %._crit_edge.i ] ; 2 uses
  store i8 0, ptr %.3.i, align 1, !tbaa !23
  %.not = icmp eq ptr %.3.i, %i.bc
  br i1 %.not, label %.noexc10, label %bb.h

bb.h:                                             ; preds = %_ZN2cv6base6413base64_encodeEPKhPhmm.exit
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !111
  store ptr %i.eh, ptr %i.n, align 8, !tbaa !113
  %i.ei = load i8, ptr %i.q, align 8, !tbaa !108, !range !104, !noundef !105
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ek = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !105, !align !115 ; 2 uses
  %i.el = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(700) %i.ek, ptr noundef %i.el)
          to label %.noexc10 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !157

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i16 10, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ep = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !105, !align !115 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 176
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !129, !noalias !158 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 184
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !130, !noalias !158
  %i.eu = icmp eq ptr %i.er, %i.et
  br i1 %i.eu, label %bb.k, label %_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 200
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !131, !noalias !158
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !132
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 480
  br label %_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i

_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i: ; preds = %bb.k, %bb.j
  %i.fa = phi ptr [ %i.ez, %bb.k ], [ %i.er, %bb.j ]
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !134
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 32, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds i8, ptr %i.b, i64 %i.fd
  store i8 0, ptr %i.fe, align 1, !tbaa !23
  %i.ff = load ptr, ptr %i.ep, align 8, !tbaa !11
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  invoke void %i.fh(ptr noundef nonnull align 8 dereferenceable(700) %i.ep, ptr noundef nonnull %i.b)
          to label %.noexc14 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !157

.noexc14:                                         ; preds = %_ZNSt5dequeIN2cv11FStructDataESaIS1_EE4backEv.exit.i
  %i.fi = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !105, !align !115 ; 2 uses
  %i.fj = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !11
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8
  invoke void %i.fm(ptr noundef nonnull align 8 dereferenceable(700) %i.fi, ptr noundef %i.fj)
          to label %.noexc15 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !157

.noexc15:                                         ; preds = %.noexc14
  %i.fn = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !105, !align !115 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !11
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(700) %i.fn, ptr noundef nonnull %i.a)
          to label %.noexc16 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, !inline_history !157

.noexc16:                                         ; preds = %.noexc15
  %i.fr = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !105, !align !115 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 120
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(700) %i.fr)
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/symbol_encoding?download=true
inline.NumInlined: 4453
inline.NumDeleted: 900
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN5draco13EncodeSymbolsEPKjiiPKNS_7OptionsEPNS_13EncoderBufferE:bb.a
  %i.ef = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc79 unwind label %bb.w   ; 2 uses

.noexc79:                                         ; preds = %.noexc.i78
  store ptr %i.ef, ptr %7, align 8, !tbaa !55
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ef, ptr noundef nonnull align 1 dereferenceable(22) @.str, i64 22, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !57
  %i.ei = load ptr, ptr %7, align 8, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ek = invoke noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %.noexc79
  %i.el = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ee
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.q
  %i.en = load i64, ptr %i.ee, align 8, !tbaa !56
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.y

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

.loopexit.split-lp:                               ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, %bb.f
  %i.ep = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i ], [ %i.s, %bb.f ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.s:                                             ; preds = %._crit_edge.i71
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i84 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorIjSaIjEED2Ev.exit85, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.u:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.v:                                             ; preds = %.noexc.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.w:                                             ; preds = %.noexc.i78
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.x:                                             ; preds = %.noexc79
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ee
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.x
  %i.ey = load i64, ptr %i.ee, align 8, !tbaa !56
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.w
  %.pn54 = phi { ptr, i32 } [ %i.eu, %bb.w ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.ev, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

.critedge62.thread:                               ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fa = icmp sge i64 %i.cl, %i.cw
  %i.fb = icmp samesign ult i32 %i.cy, 18
  %or.cond.not = and i1 %i.fb, %i.fa
  %. = zext i1 %or.cond.not to i32
  br label %bb.y

bb.y:                                             ; preds = %.critedge62.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %.041 = phi i32 [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83 ], [ %., %.critedge62.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.fc = trunc i32 %.041 to i8
  store i8 %i.fc, ptr %i.e, align 1, !tbaa !56
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !86
  %i.ff = icmp slt i64 %i.fe, 1
  br i1 %i.ff, label %bb.z, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !87
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.fj = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.fk = ptrtoint ptr %i.fh to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %4, ptr %i.fn, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull %i.fi)
          to label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit unwind label %bb.ab

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  switch i32 %.041, label %bb.ae [
    i32 0, label %bb.aa
    i32 1, label %bb.ad
  ]

bb.aa:                                            ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.fo = invoke noundef zeroext i1 @_ZN5draco19EncodeTaggedSymbolsINS_17RAnsSymbolEncoderEEEbPKjiiRKSt6vectorIjSaIjEEPNS_13EncoderBufferE(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %spec.store.select, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %4)
          to label %._crit_edge unwind label %bb.ac

._crit_edge:                                      ; preds = %bb.aa
  %.pre114 = load ptr, ptr %5, align 8, !tbaa !60
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.ac:                                            ; preds = %bb.ad, %bb.aa
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %.pre115 = load ptr, ptr %5, align 8, !tbaa !60
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit85

bb.ad:                                            ; preds = %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %i.fr = invoke noundef zeroext i1 @_ZN5draco16EncodeRawSymbolsINS_17RAnsSymbolEncoderEEEbPKjijiPKNS_7OptionsEPNS_13EncoderBufferE(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %spec.select, i32 noundef %i.cn, ptr noundef %3, ptr noundef nonnull %4)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %._crit_edge, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit, %bb.ad
  %i.fs = phi ptr [ %i.ax, %bb.ad ], [ %.pre114, %._crit_edge ], [ %i.ax, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ] ; 3 uses
  %.049 = phi i1 [ %i.fr, %bb.ad ], [ %i.fo, %._crit_edge ], [ false, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ]
  %.not.i.i.i93 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIjSaIjEED2Ev.exit94, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ft = load ptr, ptr %i.i, align 8, !tbaa !214
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit94

_ZNSt6vectorIjSaIjEED2Ev.exit94:                  ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ah

_ZNSt6vectorIjSaIjEED2Ev.exit85:                  ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %bb.v, %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.t, %bb.s, %bb.r
  %i.fx = phi ptr [ %i.ax, %bb.v ], [ %i.ax, %bb.t ], [ %i.ax, %bb.r ], [ %i.ax, %bb.s ], [ %i.ax, %bb.u ], [ %.pre115, %bb.ac ], [ %i.ax, %bb.ab ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.s, %.loopexit ], [ %i.ep, %.loopexit.split-lp ] ; 3 uses
  %.pn56.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.v ], [ %i.er, %bb.t ], [ %i.eq, %bb.r ], [ %i.er, %bb.s ], [ %i.es, %bb.u ], [ %i.fq, %bb.ac ], [ %i.fp, %bb.ab ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i95 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIjSaIjEED2Ev.exit96, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit85
  %i.fy = load ptr, ptr %i.i, align 8, !tbaa !214
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gb) #16
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit96

_ZNSt6vectorIjSaIjEED2Ev.exit96:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit85, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn56.pn.pn.pn

bb.ah:                                            ; preds = %bb.b, %bb.a, %_ZNSt6vectorIjSaIjEED2Ev.exit94
  %.150 = phi i1 [ %.049, %_ZNSt6vectorIjSaIjEED2Ev.exit94 ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.150
}

declare noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco19EncodeTaggedSymbolsINS_17RAnsSymbolEncoderEEEbPKjiiRKSt6vectorIjSaIjEEPNS_13EncoderBufferE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 10 uses
  %5 = alloca %"class.draco::EncoderBuffer", align 8 ; 14 uses
  %6 = alloca %"class.draco::RAnsSymbolEncoder", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !60     ; 7 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03949 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03949
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03949
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03949
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !62
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03949
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !62
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !53
  %i.ak = add nuw i64 %.03949, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !216

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03949.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03949.epil = phi i64 [ %i.ar, %.lr.ph.epil ], [ %.03949.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.03949.epil
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !53
  %i.ar = add nuw i64 %.03949.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !217

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN5draco13EncoderBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(41) %5)
  %i.as = sext i32 %1 to i64
  %i.at = shl nsw i64 %i.as, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %i.av = invoke noundef zeroext i1 @_ZN5draco17RAnsSymbolEncoderILi5EE6CreateEPKmiPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %4)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %._crit_edge
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !97
  %i.ax = shl i64 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !98
  %i.ba = load ptr, ptr %4, align 8, !tbaa !99
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !100
  %i.bf = add i64 %i.ax, 38
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 8
  %i.bi = add i64 %i.bh, %i.bd
  invoke void @_ZN5draco13EncoderBuffer6ResizeEl(ptr noundef nonnull align 8 dereferenceable(41) %4, i64 noundef %i.bi)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.bj = load ptr, ptr %4, align 8, !tbaa !99
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.be, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !102
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 5 uses
  store i32 16384, ptr %i.bo, align 4, !tbaa !103
  %i.bp = invoke noundef zeroext i1 @_ZN5draco13EncoderBuffer16StartBitEncodingElb(ptr noundef nonnull align 8 dereferenceable(41) %5, i64 noundef %i.at, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.bq = sub nsw i32 %1, %2                      ; 3 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %.lr.ph56, label %._crit_edge57.a

.lr.ph56:                                         ; preds = %bb.d
  %i.bs = icmp sgt i32 %2, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.f

._crit_edge57.a:                                  ; preds = %._crit_edge53, %bb.d
  invoke void @_ZN5draco17RAnsSymbolEncoderILi5EE11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.b, %bb.h, %._crit_edge57.a, %bb.c, %._crit_edge
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = load ptr, ptr %6, align 8, !tbaa !104      ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i47, label %_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit48, label %bb.m

bb.f:                                             ; preds = %.lr.ph56, %._crit_edge53
  %.03454.a = phi i32 [ %i.bq, %.lr.ph56 ], [ %14, %._crit_edge53 ] ; 3 uses
  %9 = sdiv i32 %.03454.a, %2
  %10 = sext i32 %9 to i64
  %i.bv = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %10
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !62
  %i.by = zext i32 %i.bx to i64
  %i.bz = load ptr, ptr %6, align 8, !tbaa !104
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !106 ; 3 uses
  %i.cc = shl i32 %i.cb, 10                       ; 2 uses
  %i.cd = load i32, ptr %i.bo, align 4, !tbaa !103 ; 3 uses
  %.not6.i.i.a = icmp ult i32 %i.cd, %i.cc
  br i1 %.not6.i.i.a, label %.loopexit.a, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.f, %.lr.ph.i.i.a
  %i.ce = phi i32 [ %i.cm, %.lr.ph.i.i.a ], [ %i.cd, %bb.f ]
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = load ptr, ptr %i.bk, align 8, !tbaa !101
  %i.ch = load i32, ptr %i.bn, align 8, !tbaa !102 ; 2 uses
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.bn, align 8, !tbaa !102
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  store i8 %i.cf, ptr %i.ck, align 1, !tbaa !56
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !103
  %i.cm = lshr i32 %i.cl, 8                       ; 4 uses
  store i32 %i.cm, ptr %i.bo, align 4, !tbaa !103
  %.not.i.i.a = icmp ult i32 %i.cm, %i.cc
  br i1 %.not.i.i.a, label %.loopexit.loopexit, label %.lr.ph.i.i.a, !llvm.loop !1

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.a
  %.pre.a = load ptr, ptr %3, align 8, !tbaa !60
  br label %.loopexit.a

.loopexit.a:                                      ; preds = %.loopexit.loopexit, %bb.f
  %i.cn = phi ptr [ %i.bv, %bb.f ], [ %.pre.a, %.loopexit.loopexit ]
  %.lcssa.i.i.a = phi i32 [ %i.cd, %bb.f ], [ %i.cm, %.loopexit.loopexit ] ; 2 uses
  %i.co = udiv i32 %.lcssa.i.i.a, %i.cb
  %i.cp = shl i32 %i.co, 12
  %i.cq = urem i32 %.lcssa.i.i.a, %i.cb
  %i.cr = add i32 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !107
  %i.cu = add i32 %i.cr, %i.ct
  store i32 %i.cu, ptr %i.bo, align 4, !tbaa !103
  %i.cv = sub nsw i32 %i.bq, %.03454.a            ; 2 uses
  %i.cw = sdiv i32 %i.cv, %2
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !62 ; 2 uses
  br i1 %i.bs, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %.loopexit.a
  %11 = icmp sgt i32 %i.cz, 0
  %12 = load i64, ptr %i.bt, align 8, !tbaa !86   ; 2 uses
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %.lr.ph52.split.preheader, label %._crit_edge53

.lr.ph52.split.preheader:                         ; preds = %.lr.ph52
  %i.da = sext i32 %i.cv to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.da
  br label %.lr.ph52.split

._crit_edge53:                                    ; preds = %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit, %.lr.ph52, %.loopexit.a
  %14 = sub nsw i32 %.03454.a, %2                 ; 2 uses
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %bb.f, label %._crit_edge57.a, !llvm.loop !218

.lr.ph52.splitthread-pre-split:                   ; preds = %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit
  %.pr = load i64, ptr %i.bt, align 8, !tbaa !86
  br label %.lr.ph52.split

.lr.ph52.split:                                   ; preds = %.lr.ph52.splitthread-pre-split, %.lr.ph52.split.preheader
  %i.db = phi i64 [ %.pr, %.lr.ph52.splitthread-pre-split ], [ %12, %.lr.ph52.split.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph52.splitthread-pre-split ], [ 0, %.lr.ph52.split.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %16 = load i32, ptr %gep, align 4, !tbaa !62
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %17, label %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit

17:                                               ; preds = %.lr.ph52.split
  %18 = load ptr, ptr %i.bu, align 8, !tbaa !108  ; 3 uses
  br i1 %11, label %.lr.ph.i.i44, label %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit

.lr.ph.i.i44:                                     ; preds = %17
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %.pre.i.i = load i64, ptr %i.dd, align 8, !tbaa !222
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i44
  %i.de = phi i64 [ %.pre.i.i, %.lr.ph.i.i44 ], [ %i.dy, %bb.g ] ; 2 uses
  %.05.i.i = phi i32 [ 0, %.lr.ph.i.i44 ], [ %i.dz, %bb.g ] ; 2 uses
  %i.df = lshr i32 %16, %.05.i.i
  %i.dg = and i32 %i.df, 1
  %i.dh = lshr i64 %i.de, 3                       ; 2 uses
  %i.di = trunc i64 %i.de to i32
  %i.dj = and i32 %i.di, 7                        ; 2 uses
  %i.dk = shl nuw nsw i32 1, %i.dj
  %i.dl = load ptr, ptr %18, align 8, !tbaa !223
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dh ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !56
  %i.do = trunc nuw i32 %i.dk to i8
  %i.dp = xor i8 %i.do, -1
  %i.dq = and i8 %i.dn, %i.dp
  store i8 %i.dq, ptr %i.dm, align 1, !tbaa !56
  %i.dr = shl nuw nsw i32 %i.dg, %i.dj
  %i.ds = load ptr, ptr %18, align 8, !tbaa !223
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dh ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !56
  %i.dv = trunc nuw i32 %i.dr to i8
  %i.dw = or i8 %i.du, %i.dv
  store i8 %i.dw, ptr %i.dt, align 1, !tbaa !56
  %i.dx = load i64, ptr %i.dd, align 8, !tbaa !222
  %i.dy = add i64 %i.dx, 1                        ; 2 uses
  store i64 %i.dy, ptr %i.dd, align 8, !tbaa !222
  %i.dz = add nuw nsw i32 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dz, %i.cz
  br i1 %exitcond.not.i.i, label %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit, label %bb.g, !llvm.loop !219

_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit: ; preds = %bb.g, %17, %.lr.ph52.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond60.not, label %._crit_edge53, label %.lr.ph52.splitthread-pre-split, !llvm.loop !220

bb.h:                                             ; preds = %._crit_edge57.a
  invoke void @_ZN5draco13EncoderBuffer14EndBitEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %5)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !86
  %i.ec = icmp slt i64 %i.eb, 1
  br i1 %i.ec, label %bb.j, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.j:                                             ; preds = %bb.i
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !98
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.ef, %i.eh
  %i.ej = load ptr, ptr %i.ay, align 8, !tbaa !87
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei
  %i.el = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.el, i64 %i.eo
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %4, ptr %i.ep, ptr noundef %i.eg, ptr noundef %i.ek)
          to label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit unwind label %bb.e

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit:        ; preds = %bb.i, %bb.j
  %i.eq = load ptr, ptr %6, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i, label %_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !110
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #16
  br label %_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit

_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit:      ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !108 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i45, label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i: ; preds = %_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 16) #16
  br label %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco13EncoderBuffer10BitEncoderEEclEPS2_.exit.i.i, %_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit
  %i.ey = load ptr, ptr %5, align 8, !tbaa !99    ; 3 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i46, label %_ZN5draco13EncoderBufferD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !111
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #16
  br label %_ZN5draco13EncoderBufferD2Ev.exit

_ZN5draco13EncoderBufferD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 true

bb.m:                                             ; preds = %bb.e
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !110
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %8 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.fi) #16
  br label %_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit48

_ZN5draco17RAnsSymbolEncoderILi5EED2Ev.exit48:    ; preds = %bb.m, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN5draco13EncoderBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco16EncodeRawSymbolsINS_17RAnsSymbolEncoderEEEbPKjijiPKNS_7OptionsEPNS_13EncoderBufferE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %3, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %i.g = icmp samesign ugt i32 %3, 262143
  br i1 %i.g, label %bb.af, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 1, %bb.a ]     ; 6 uses
  %.not.not = icmp eq ptr %4, null
  br i1 %.not.not, label %.thread145, label %.noexc.i

.noexc.i:                                         ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 33, ptr %i.b, align 8, !tbaa !53
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !55
  %i.j = load i64, ptr %i.b, align 8, !tbaa !53   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.i, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, null
  %.pre = load ptr, ptr %6, align 8               ; 4 uses
  br i1 %.not10.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc.i
  %i.p = load i64, ptr %i.k, align 8, !tbaa !57   ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.r) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.v = call i32 @memcmp(ptr noundef %i.u, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #15 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.r, %i.p
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.x, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.c, !llvm.loop !0

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.y = icmp eq ptr %.19.i.i.i.i, %i.o
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.p) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ae = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #15 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.af = sub i64 %i.p, %i.aa
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ag = icmp sgt i32 %.0.i.i.i.i.i.i, -1
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.noexc.i
  %i.ah = phi i1 [ false, %.noexc.i ], [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ]
  %i.ai = icmp eq ptr %.pre, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !56
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %i.ah, label %.noexc.i113, label %.thread145

.noexc.i113:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.al, ptr %7, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 33, ptr %i.a, align 8, !tbaa !53
  %i.am = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.am, ptr %7, align 8, !tbaa !55
  %i.an = load i64, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.am, ptr noundef nonnull align 1 dereferenceable(33) @.str.1, i64 33, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aq = invoke noundef i32 @_ZNK5draco7Options6GetIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f       ; 4 uses

bb.e:                                             ; preds = %.noexc.i113
  %i.ar = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.al
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.e
  %i.at = load i64, ptr %i.al, align 8, !tbaa !56
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117

bb.f:                                             ; preds = %.noexc.i113
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.al
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.f
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !56
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  resume { ptr, i32 } %i.av

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ba = icmp slt i32 %i.aq, 4
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117
  %i.bb = add nsw i32 %.0, -2
  br label %.thread145

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i117
  %i.bc = icmp samesign ult i32 %i.aq, 6
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = add nsw i32 %.0, -1
  br label %.thread145

bb.j:                                             ; preds = %bb.h
  %i.be = icmp samesign ugt i32 %i.aq, 9
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = add nuw nsw i32 %.0, 2
  br label %.thread145
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i32
!19 = distinct !{!19, !63, !116}
!20 = distinct !{!20, !63, !116}
!21 = distinct !{!21, !63, !116}
!22 = distinct !{!22, !63, !116}
!23 = distinct !{!23, !63, !116}
!24 = distinct !{!24, !63, !116}
!25 = distinct !{!25, !63, !116}
!26 = distinct !{!26, !63, !116}
!27 = distinct !{!27, !63, !116}
!28 = distinct !{!28, !63, !116}
!29 = distinct !{!29, !63, !116}
!30 = distinct !{!30, !63, !116}
!31 = distinct !{!31, !63, !116}
!32 = distinct !{!32, !63, !116}
!33 = distinct !{!33, !63, !116}
!34 = distinct !{!34, !63, !116}
!35 = distinct !{!35, !63, !116}
!36 = distinct !{!36, !63, !116}
!37 = distinct !{!37, !63, !116}
!38 = distinct !{!38, !63, !116}
!39 = distinct !{!39, !63, !116}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 2}
!42 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"omnipotent char", !43, i64 0}
!45 = !{!"int", !44, i64 0}
!46 = !{!"__libc_errno", !45, i64 0}
!47 = !{!46, !45, i64 0}
!48 = !{!"any pointer", !44, i64 0}
!49 = !{!"p1 omnipotent char", !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!"long", !44, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !52, i64 8, !44, i64 16}
!55 = !{!54, !49, i64 0}
!56 = !{!44, !44, i64 0}
!57 = !{!54, !52, i64 8}
!58 = !{!"p1 int", !48, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !58, i64 8}
!62 = !{!45, !45, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{!"_ZTSSt14_Rb_tree_color", !44, i64 0}
!68 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !48, i64 0}
!69 = !{!"_ZTSSt18_Rb_tree_node_base", !67, i64 0, !68, i64 8, !68, i64 16, !68, i64 24}
!70 = !{!"_ZTSSt15_Rb_tree_header", !69, i64 0, !52, i64 32}
!71 = !{!70, !68, i64 8}
!72 = !{!68, !68, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIcSaIcEE", !75, i64 0}
!77 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !48, i64 0}
!78 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !77, i64 0}
!79 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !78, i64 0}
!80 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !79, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !80, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !81, i64 0}
!83 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !82, i64 0}
!84 = !{!"bool", !44, i64 0}
!85 = !{!"_ZTSN5draco13EncoderBufferE", !76, i64 0, !83, i64 24, !52, i64 32, !84, i64 40}
!86 = !{!85, !52, i64 32}
!87 = !{!49, !49, i64 0}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!"p1 _ZTSN5draco8rans_symE", !48, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN5draco8rans_symESaIS1_EE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!91 = !{!"_ZTSNSt12_Vector_baseIN5draco8rans_symESaIS1_EE12_Vector_implE", !90, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIN5draco8rans_symESaIS1_EE", !91, i64 0}
!93 = !{!"_ZTSSt6vectorIN5draco8rans_symESaIS1_EE", !92, i64 0}
!94 = !{!"_ZTSN5draco8AnsCoderE", !49, i64 0, !45, i64 8, !45, i64 12}
!95 = !{!"_ZTSN5draco11RAnsEncoderILi12EEE", !94, i64 0}
!96 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi5EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!97 = !{!96, !52, i64 32}
!98 = !{!73, !49, i64 8}
!99 = !{!73, !49, i64 0}
!100 = !{!96, !52, i64 56}
!101 = !{!95, !49, i64 0}
!102 = !{!95, !45, i64 8}
!103 = !{!95, !45, i64 12}
!104 = !{!90, !89, i64 0}
!105 = !{!"_ZTSN5draco8rans_symE", !45, i64 0, !45, i64 4}
!106 = !{!105, !45, i64 0}
!107 = !{!105, !45, i64 4}
!108 = !{!77, !77, i64 0}
!109 = !{!"llvm.loop.unswitch.partial.disable"}
!110 = !{!90, !89, i64 16}
!111 = !{!73, !49, i64 16}
!112 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!113 = !{!96, !45, i64 24}
!114 = !{!90, !89, i64 8}
!115 = !{!"branch_weights", !"expected", i32 2146946912, i32 536736}
!116 = !{!"llvm.loop.peeled.count", i32 1}
!117 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi1EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!118 = !{!117, !52, i64 32}
!119 = !{!117, !52, i64 56}
!120 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi2EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!121 = !{!120, !52, i64 32}
!122 = !{!120, !52, i64 56}
!123 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi3EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!124 = !{!123, !52, i64 32}
!125 = !{!123, !52, i64 56}
!126 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi4EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!127 = !{!126, !52, i64 32}
!128 = !{!126, !52, i64 56}
!129 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi6EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!130 = !{!129, !52, i64 32}
!131 = !{!129, !52, i64 56}
!132 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi7EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!133 = !{!132, !52, i64 32}
!134 = !{!132, !52, i64 56}
!135 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi8EEE", !93, i64 0, !45, i64 24, !52, i64 32, !95, i64 40, !52, i64 56}
!136 = !{!135, !52, i64 32}
!137 = !{!135, !52, i64 56}
!138 = !{!"_ZTSN5draco11RAnsEncoderILi13EEE", !94, i64 0}
!139 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi9EEE", !93, i64 0, !45, i64 24, !52, i64 32, !138, i64 40, !52, i64 56}
!140 = !{!139, !52, i64 32}
!141 = !{!139, !52, i64 56}
!142 = !{!138, !49, i64 0}
!143 = !{!138, !45, i64 8}
!144 = !{!138, !45, i64 12}
!145 = !{!"_ZTSN5draco11RAnsEncoderILi15EEE", !94, i64 0}
!146 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi10EEE", !93, i64 0, !45, i64 24, !52, i64 32, !145, i64 40, !52, i64 56}
!147 = !{!146, !52, i64 32}
!148 = !{!146, !52, i64 56}
!149 = !{!145, !49, i64 0}
!150 = !{!145, !45, i64 8}
!151 = !{!145, !45, i64 12}
!152 = !{!"_ZTSN5draco11RAnsEncoderILi16EEE", !94, i64 0}
!153 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi11EEE", !93, i64 0, !45, i64 24, !52, i64 32, !152, i64 40, !52, i64 56}
!154 = !{!153, !52, i64 32}
!155 = !{!153, !52, i64 56}
!156 = !{!152, !49, i64 0}
!157 = !{!152, !45, i64 8}
!158 = !{!152, !45, i64 12}
!159 = !{!"_ZTSN5draco11RAnsEncoderILi18EEE", !94, i64 0}
!160 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi12EEE", !93, i64 0, !45, i64 24, !52, i64 32, !159, i64 40, !52, i64 56}
!161 = !{!160, !52, i64 32}
!162 = !{!160, !52, i64 56}
!163 = !{!159, !49, i64 0}
!164 = !{!159, !45, i64 8}
!165 = !{!159, !45, i64 12}
!166 = !{!"_ZTSN5draco11RAnsEncoderILi19EEE", !94, i64 0}
!167 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi13EEE", !93, i64 0, !45, i64 24, !52, i64 32, !166, i64 40, !52, i64 56}
!168 = !{!167, !52, i64 32}
!169 = !{!167, !52, i64 56}
!170 = !{!166, !49, i64 0}
!171 = !{!166, !45, i64 8}
!172 = !{!166, !45, i64 12}
!173 = !{!"_ZTSN5draco11RAnsEncoderILi20EEE", !94, i64 0}
!174 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi14EEE", !93, i64 0, !45, i64 24, !52, i64 32, !173, i64 40, !52, i64 56}
!175 = !{!174, !52, i64 32}
!176 = !{!174, !52, i64 56}
!177 = !{!173, !49, i64 0}
!178 = !{!173, !45, i64 8}
!179 = !{!173, !45, i64 12}
!180 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi15EEE", !93, i64 0, !45, i64 24, !52, i64 32, !173, i64 40, !52, i64 56}
!181 = !{!180, !52, i64 32}
!182 = !{!180, !52, i64 56}
!183 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi16EEE", !93, i64 0, !45, i64 24, !52, i64 32, !173, i64 40, !52, i64 56}
!184 = !{!183, !52, i64 32}
!185 = !{!183, !52, i64 56}
!186 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi17EEE", !93, i64 0, !45, i64 24, !52, i64 32, !173, i64 40, !52, i64 56}
!187 = !{!186, !52, i64 32}
!188 = !{!186, !52, i64 56}
!189 = !{!"_ZTSN5draco17RAnsSymbolEncoderILi18EEE", !93, i64 0, !45, i64 24, !52, i64 32, !173, i64 40, !52, i64 56}
!190 = !{!189, !52, i64 32}
!191 = !{!189, !52, i64 56}
!192 = !{!117, !45, i64 24}
!193 = !{!120, !45, i64 24}
!194 = !{!123, !45, i64 24}
!195 = !{!126, !45, i64 24}
!196 = !{!129, !45, i64 24}
!197 = !{!132, !45, i64 24}
!198 = !{!135, !45, i64 24}
!199 = !{!139, !45, i64 24}
!200 = !{!146, !45, i64 24}
!201 = !{!153, !45, i64 24}
!202 = !{!160, !45, i64 24}
!203 = !{!167, !45, i64 24}
!204 = !{!174, !45, i64 24}
!205 = !{!180, !45, i64 24}
!206 = !{!183, !45, i64 24}
!207 = !{!186, !45, i64 24}
!208 = !{!189, !45, i64 24}
!209 = distinct !{!209, !63, !64, !65}
!210 = distinct !{!210, !63, !65, !64}
!211 = distinct !{!211, !63}
!212 = distinct !{!212, !63, !64, !65}
!213 = distinct !{!213, !63, !65, !64}
!214 = !{!59, !58, i64 16}
!215 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!216 = distinct !{!216, !63}
!217 = distinct !{!217, !88}
!218 = distinct !{!218, !63}
!219 = distinct !{!219, !63}
!220 = distinct !{!220, !63, !109}
!221 = !{!"_ZTSN5draco13EncoderBuffer10BitEncoderE", !49, i64 0, !52, i64 8}
!222 = !{!221, !52, i64 8}
!223 = !{!221, !49, i64 0}
!224 = distinct !{!224, !63, !64, !65}
!225 = distinct !{!225, !63, !64, !65}
!226 = distinct !{!226, !63, !64}
!227 = distinct !{!227, !63, !64, !65}
!228 = distinct !{!228, !63, !64, !65}
!229 = distinct !{!229, !63, !64}
!230 = distinct !{!230, !63, !64, !65}
!231 = distinct !{!231, !63, !64, !65}
!232 = distinct !{!232, !63, !64}
!233 = !{!"branch_weights", i32 4, i32 28}
!234 = distinct !{!234, !88}
!235 = distinct !{!235, !63, !64, !65}
!236 = distinct !{!236, !63}
!237 = distinct !{!237, !63, !65, !64}
!238 = distinct !{!238, !63, !64, !65}
!239 = distinct !{!239, !63, !65, !64}
!240 = distinct !{!240, !63}
!241 = distinct !{!241, !63}
!242 = distinct !{!242, !88}
!243 = distinct !{!243, !63}
!244 = distinct !{!244, !63}
!245 = distinct !{!245, !63}
!246 = distinct !{!246, !63, !109}
!247 = distinct !{!247, !63}
!248 = distinct !{!248, !63, !64, !65}
!249 = distinct !{!249, !63, !65, !64}
!250 = distinct !{!250, !63, !64, !65}
!251 = distinct !{!251, !63, !65, !64}
!252 = distinct !{!252, !63}
!253 = distinct !{!253, !63}
!254 = distinct !{!254, !63}
!255 = distinct !{!255, !63}
!256 = distinct !{!256, !63}
!257 = distinct !{!257, !63}
!258 = distinct !{!258, !63}
!259 = distinct !{!259, !63}
!260 = distinct !{!260, !63}
!261 = distinct !{!261, i1 false, !"LVerDomain"}
!262 = distinct !{!262, !261}
!263 = distinct !{!263, !261}
!264 = distinct !{!264, !63, !64, !65}
!265 = distinct !{!265, !63, !64}
!266 = distinct !{!266, i1 false, !"LVerDomain"}
!267 = distinct !{!267, !266}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !63, !64, !65}
!270 = distinct !{!270, !88}
!271 = distinct !{!271, !63, !64}
!272 = distinct !{!272, i1 false, !"LVerDomain"}
!273 = distinct !{!273, !272}
!274 = distinct !{!274, !272}
!275 = distinct !{!275, !63, !64, !65}
!276 = distinct !{!276, !88}
!277 = distinct !{!277, !63}
!278 = distinct !{!278, !63, !64}
!279 = !{!262}
!280 = !{!263}
!281 = !{!267}
!282 = !{!268}
!283 = !{!273}
!284 = !{!274}
!285 = distinct !{!285, !63}
!286 = distinct !{!286, !88}
!287 = distinct !{!287, !63}
!288 = distinct !{!288, !63}
!289 = distinct !{!289, !88}
!290 = distinct !{!290, !63}
!291 = distinct !{!291, !63}
!292 = distinct !{!292, !88}
!293 = distinct !{!293, !63}
!294 = distinct !{!294, !63}
!295 = distinct !{!295, !88}
!296 = distinct !{!296, !63}
!297 = distinct !{!297, !63}
!298 = distinct !{!298, !88}
!299 = distinct !{!299, !63}
!300 = distinct !{!300, !88}
!301 = distinct !{!301, !63}
!302 = distinct !{!302, !63}
!303 = distinct !{!303, !88}
!304 = distinct !{!304, !63}
!305 = distinct !{!305, !63}
!306 = distinct !{!306, !88}
!307 = distinct !{!307, !63}
!308 = distinct !{!308, !63}
!309 = distinct !{!309, !88}
!310 = distinct !{!310, !63}
!311 = distinct !{!311, !63}
!312 = distinct !{!312, !88}
!313 = distinct !{!313, !63}
!314 = distinct !{!314, !63}
!315 = distinct !{!315, !88}
!316 = distinct !{!316, !63}
!317 = distinct !{!317, !63}
!318 = distinct !{!318, !88}
!319 = distinct !{!319, !63}
!320 = distinct !{!320, !63}
!321 = distinct !{!321, !88}
!322 = distinct !{!322, !63}
!323 = distinct !{!323, !63}
!324 = distinct !{!324, !88}
!325 = distinct !{!325, !63}
!326 = distinct !{!326, !88}
!327 = distinct !{!327, !63}
!328 = distinct !{!328, !63}
!329 = distinct !{!329, !88}
!330 = distinct !{!330, !63}
!331 = distinct !{!331, !63}
!332 = distinct !{!332, !88}
!333 = distinct !{!333, !63}
!334 = distinct !{!334, !63}
!335 = distinct !{!335, !88}
!336 = distinct !{!336, !63}
!337 = distinct !{!337, !88}
!338 = distinct !{!338, !63, !64, !65}
!339 = distinct !{!339, !63}
!340 = distinct !{!340, !63, !65, !64}
!341 = distinct !{!341, !63, !64, !65}
!342 = distinct !{!342, !63, !65, !64}
!343 = distinct !{!343, !63}
!344 = distinct !{!344, !63}
!345 = distinct !{!345, !88}
!346 = distinct !{!346, !63}
!347 = distinct !{!347, !63}
!348 = distinct !{!348, !63}
!349 = distinct !{!349, !63, !109}
!350 = distinct !{!350, !63}
!351 = distinct !{!351, !63}
!352 = distinct !{!352, !63}
!353 = distinct !{!353, !63}
!354 = distinct !{!354, !63}
!355 = distinct !{!355, !63}
!356 = distinct !{!356, !63}
!357 = distinct !{!357, !63}
!358 = distinct !{!358, !63}
!359 = distinct !{!359, !63}
!360 = distinct !{!360, !88}
!361 = distinct !{!361, !63, !64, !65}
!362 = distinct !{!362, !63}
!363 = distinct !{!363, !63, !65, !64}
!364 = distinct !{!364, !63, !64, !65}
!365 = distinct !{!365, !63, !65, !64}
!366 = distinct !{!366, !63}
!367 = distinct !{!367, !63}
!368 = distinct !{!368, !88}
!369 = distinct !{!369, !63}
!370 = distinct !{!370, !63}
!371 = distinct !{!371, !63}
!372 = distinct !{!372, !63, !109}
!373 = distinct !{!373, !63}
!374 = distinct !{!374, !63}
!375 = distinct !{!375, !63}
!376 = distinct !{!376, !63}
!377 = distinct !{!377, !63}
!378 = distinct !{!378, !63}
!379 = distinct !{!379, !63}
!380 = distinct !{!380, !63}
!381 = distinct !{!381, !63}
!382 = distinct !{!382, !63}
!383 = distinct !{!383, !88}
!384 = distinct !{!384, !63, !64, !65}
!385 = distinct !{!385, !63}
!386 = distinct !{!386, !63, !65, !64}
!387 = distinct !{!387, !63, !64, !65}
!388 = distinct !{!388, !63, !65, !64}
!389 = distinct !{!389, !63}
!390 = distinct !{!390, !63}
!391 = distinct !{!391, !88}
!392 = distinct !{!392, !63}
!393 = distinct !{!393, !63}
!394 = distinct !{!394, !63}
!395 = distinct !{!395, !63, !109}
!396 = distinct !{!396, !63}
!397 = distinct !{!397, !63}
!398 = distinct !{!398, !63}
!399 = distinct !{!399, !63}
!400 = distinct !{!400, !63}
!401 = distinct !{!401, !63}
!402 = distinct !{!402, !63}
!403 = distinct !{!403, !63}
!404 = distinct !{!404, !63}
!405 = distinct !{!405, !63}
!406 = distinct !{!406, !88}
!407 = distinct !{!407, !63, !64, !65}
!408 = distinct !{!408, !63}
!409 = distinct !{!409, !63, !65, !64}
!410 = distinct !{!410, !63, !64, !65}
!411 = distinct !{!411, !63, !65, !64}
!412 = distinct !{!412, !63}
!413 = distinct !{!413, !63}
!414 = distinct !{!414, !88}
!415 = distinct !{!415, !63}
!416 = distinct !{!416, !63}
!417 = distinct !{!417, !63}
!418 = distinct !{!418, !63, !109}
!419 = distinct !{!419, !63}
!420 = distinct !{!420, !63}
end_hunk_1

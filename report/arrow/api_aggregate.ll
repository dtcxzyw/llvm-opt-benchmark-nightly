Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/api_aggregate?download=true
inline.NumInlined: 5275
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m:bb.a
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ag, i64 noundef %i.aj)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !366, !alias.scope !1435 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !354, !alias.scope !1435
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %.body

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !325
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %2 ; 9 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !366 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 4 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %5, align 8, !tbaa !366   ; 6 uses
  %i.ay = icmp eq ptr %i.ax, %i.y                 ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ay, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.az = load i64, ptr %i.z, align 8, !tbaa !353 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %.not21.i = icmp eq ptr %5, %i.at
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !367

bb.j:                                             ; preds = %bb.i
  switch i64 %i.az, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !354
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !354
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.az, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !353 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !353
  %i.be = load ptr, ptr %i.at, align 8, !tbaa !366
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !354
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !366
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !366
  %i.bh = load i64, ptr %i.z, align 8, !tbaa !353
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !353
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !354
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !354
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !354
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !366
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !353
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !353
  %i.bm = load i64, ptr %i.y, align 8, !tbaa !354
  store i64 %i.bm, ptr %i.av, align 8, !tbaa !354
  %.not.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %5, align 8, !tbaa !366
  store i64 %i.bj, ptr %i.y, align 8, !tbaa !354
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.y, ptr %5, align 8, !tbaa !366
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.bn = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.au, %bb.m ], [ %i.y, %bb.n ], [ %i.ax, %bb.i ]
  store i64 0, ptr %i.z, align 8, !tbaa !353
  store i8 0, ptr %i.bn, align 1, !tbaa !354
  %i.bo = load ptr, ptr %5, align 8, !tbaa !366   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.y
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.y, align 8, !tbaa !354
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.bs = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bs, ptr %3, align 8, !tbaa !298
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %3, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !298
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !298
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.by, align 8, !tbaa !298
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !366 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !354
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.by, align 8, !tbaa !298
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cf) #26
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cg, ptr %3, align 8, !tbaa !298
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ci = getelementptr i8, ptr %i.cg, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %3, i64 %i.cj
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !298
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !426
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cm) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.d
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.q:                                             ; preds = %bb.e
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !366   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.q
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !354
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.p
  %.pn = phi { ptr, i32 } [ %i.co, %bb.p ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.cp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.r

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.r

bb.r:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %bb.o
  %.pn8 = phi { ptr, i32 } [ %i.al, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %i.cn, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internalL15GenericToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIT_SaISA_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #14 personality ptr @__gxx_personality_v0 !guid !1453 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 26 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.64, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !316    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !316
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.o = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 -24      ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -24      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !1454
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %.noexc16.peel unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp, !noalias !1454

.noexc16.peel:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel
  %i.aa = load double, ptr %i.d, align 8, !tbaa !306, !noalias !1454
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %i.aa)
          to label %_ZNSolsEd.exit.i.peel unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp, !noalias !1454 ; 0 uses

_ZNSolsEd.exit.i.peel:                            ; preds = %.noexc16.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  store ptr %i.i, ptr %4, align 8, !tbaa !352, !alias.scope !1457
  store i64 0, ptr %i.j, align 8, !tbaa !353, !alias.scope !1457
  store i8 0, ptr %i.i, align 8, !tbaa !354, !alias.scope !1457
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !423, !noalias !1457 ; 3 uses
  %.not.i.not.i.i.i.peel = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.l, align 8, !noalias !1457 ; 2 uses
  %i.ae = icmp ugt ptr %i.ac, %i.ad
  %.08.i.i.i.i.peel = select i1 %i.ae, ptr %i.ac, ptr %i.ad ; 2 uses
  %.not5.i.i.i.peel = icmp eq ptr %.08.i.i.i.i.peel, null
  %.not.i.i.i.peel = select i1 %.not.i.not.i.i.i.peel, i1 true, i1 %.not5.i.i.i.peel
  br i1 %.not.i.i.i.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEd.exit.i.peel
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !424, !noalias !1457 ; 2 uses
  %i.ag = ptrtoint ptr %.08.i.i.i.i.peel to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ai)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.peel unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %_ZNSolsEd.exit.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.peel unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.peel: ; preds = %bb.c, %bb.b
  store ptr %i.o, ptr %2, align 8, !tbaa !298, !noalias !1454
  %i.ak = load i64, ptr %i.q, align 8
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak
  store ptr %i.p, ptr %i.al, align 8, !tbaa !298, !noalias !1454
  store ptr %i.r, ptr %i.h, align 8, !tbaa !298, !noalias !1454
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !298, !noalias !1454
  %i.am = load ptr, ptr %i.n, align 8, !tbaa !366, !noalias !1454 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.t
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.peel: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.peel
  %i.ao = load i64, ptr %i.t, align 8, !tbaa !354, !noalias !1454
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.peel
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !298, !noalias !1454
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #26
  store ptr %i.v, ptr %2, align 8, !tbaa !298, !noalias !1454
  %i.aq = load i64, ptr %i.x, align 8
  %i.ar = getelementptr inbounds i8, ptr %2, i64 %i.aq
  store ptr %i.w, ptr %i.ar, align 8, !tbaa !298, !noalias !1454
  store i64 0, ptr %i.y, align 8, !tbaa !426, !noalias !1454
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !1454
  %i.as = load ptr, ptr %4, align 8, !tbaa !366
  %i.at = load i64, ptr %i.j, align 8, !tbaa !353
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.as, i64 noundef %i.at)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.d
  %i.av = load ptr, ptr %4, align 8, !tbaa !366   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.i
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !354
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !316
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 93, ptr %i.a, align 1, !tbaa !354
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !298
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !418
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %._crit_edge
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef signext 93)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.025.031 = phi ptr [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.bk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !1458
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %.noexc16 unwind label %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp, !noalias !1458

.noexc16:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bl = load double, ptr %.sroa.025.031, align 8, !tbaa !306, !noalias !1458
  %i.bm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %i.bl)
          to label %_ZNSolsEd.exit.i unwind label %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp, !noalias !1458 ; 0 uses

_ZNSolsEd.exit.i:                                 ; preds = %.noexc16
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  store ptr %i.i, ptr %4, align 8, !tbaa !352, !alias.scope !1461
  store i64 0, ptr %i.j, align 8, !tbaa !353, !alias.scope !1461
  store i8 0, ptr %i.i, align 8, !tbaa !354, !alias.scope !1461
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !423, !noalias !1461 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = load ptr, ptr %i.l, align 8, !noalias !1461 ; 2 uses
  %i.bp = icmp ugt ptr %i.bn, %i.bo
  %.08.i.i.i.i = select i1 %i.bp, ptr %i.bn, ptr %i.bo ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSolsEd.exit.i
  %i.bq = load ptr, ptr %i.m, align 8, !tbaa !424, !noalias !1461 ; 2 uses
  %i.br = ptrtoint ptr %.08.i.i.i.i to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bt)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.g, %bb.b, %bb.c
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !366, !alias.scope !1461 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.i
  br i1 %i.bw, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !354, !alias.scope !1461
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #25
  br label %.body.i

bb.h:                                             ; preds = %_ZNSolsEd.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i unwind label %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.h, %bb.g
  store ptr %i.o, ptr %2, align 8, !tbaa !298, !noalias !1458
  %i.bz = load i64, ptr %i.q, align 8
  %i.ca = getelementptr inbounds i8, ptr %2, i64 %i.bz
  store ptr %i.p, ptr %i.ca, align 8, !tbaa !298, !noalias !1458
  store ptr %i.r, ptr %i.h, align 8, !tbaa !298, !noalias !1458
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.s, align 8, !tbaa !298, !noalias !1458
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !366, !noalias !1458 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.t
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.cd = load i64, ptr %i.t, align 8, !tbaa !354, !noalias !1458
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc16, %.noexc16.peel
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp86, %.loopexit.split-lp41.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp46.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !1458
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.s, align 8, !tbaa !298, !noalias !1458
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #26
  store ptr %i.v, ptr %2, align 8, !tbaa !298, !noalias !1458
  %i.cf = load i64, ptr %i.x, align 8
  %i.cg = getelementptr inbounds i8, ptr %2, i64 %i.cf
  store ptr %i.w, ptr %i.cg, align 8, !tbaa !298, !noalias !1458
  store i64 0, ptr %i.y, align 8, !tbaa !426, !noalias !1458
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.z) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !1458
  %i.ch = load ptr, ptr %4, align 8, !tbaa !366
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !353
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ch, i64 noundef %i.ci)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ck = load ptr, ptr %4, align 8, !tbaa !366   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.i
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !354
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !316
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %._crit_edge, label %.peel.next, !llvm.loop !1448

.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %bb.d
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !366   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.i
  br i1 %i.cs, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp
  %i.ct = load i64, ptr %i.i, align 8, !tbaa !354
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #25
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %.body.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp37.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp51.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body21

bb.i:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cv, ptr %0, align 8, !tbaa !352, !alias.scope !1464
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !353, !alias.scope !1464
  store i8 0, ptr %i.cv, align 8, !tbaa !354, !alias.scope !1464
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !423, !noalias !1464 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cy, null
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !1464 ; 2 uses
  %i.db = icmp ugt ptr %i.cy, %i.da
  %.08.i.i.i = select i1 %i.db, ptr %i.cy, ptr %i.da ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !424, !noalias !1464 ; 2 uses
  %i.de = ptrtoint ptr %.08.i.i.i to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.dd, i64 noundef %i.dg)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !366, !alias.scope !1464 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cv
  br i1 %i.dk, label %.body21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !354, !alias.scope !1464
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %.body21

bb.l:                                             ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.do = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.do, ptr %3, align 8, !tbaa !298
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %3, i64 %i.dr
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !298
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.dt, ptr %i.b, align 8, !tbaa !298
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.du, align 8, !tbaa !298
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !366 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !354
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i23
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.du, align 8, !tbaa !298
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eb) #26
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ec, ptr %3, align 8, !tbaa !298
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ee = getelementptr i8, ptr %i.ec, i64 -24
  %i.ef = load i64, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds i8, ptr %3, i64 %i.ef
  store ptr %i.ed, ptr %i.eg, align 8, !tbaa !298
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !426
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ei) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.f, %bb.e, %bb.a
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %.body21

.body21:                                          ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %.body ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.di, %bb.k ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1467 {
bb.a:
  %3 = alloca %"class.arrow::Result.138", align 8 ; 14 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !339
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = load ptr, ptr %0, align 8, !tbaa !554, !nonnull !351, !align !421
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !536
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  call fastcc void @_ZN5arrow7compute8internalL15GenericToScalarIdEENS_6ResultISt10shared_ptrINS_6ScalarEEEERKSt6vectorIT_SaIS9_EE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %3, align 8, !tbaa !339
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !408
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !409
  store i64 %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.j, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK5arrow6Status11WithMessageIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(27) @.str.49, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(18) @.str.50, ptr noundef nonnull align 1 dereferenceable(16) @_ZN5arrow7compute15QuantileOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !339  ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
end_hunk_0

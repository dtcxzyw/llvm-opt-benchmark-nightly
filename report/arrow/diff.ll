inline.NumInlined: 8589
inline.NumDeleted: 3289
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKS8_:bb.a
  %i.dyb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyc = load i32, ptr %i.dyb, align 4, !tbaa !739
  %i.dyd = and i32 %i.dyc, 8192
  %.not.i2521 = icmp eq i32 %i.dyd, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dye = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyf = icmp eq i32 %i.dye, 0
  br i1 %i.dyf, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dyg = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyh = getelementptr inbounds nuw i8, ptr %i.dyg, i64 32
  %i.dyi = load i32, ptr %i.dyh, align 8, !tbaa !677
  %i.dyj = icmp eq i32 %i.dyi, 0
  br i1 %i.dyj, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyg, i64 232
  %i.dyl = load ptr, ptr %i.dyk, align 8, !tbaa !727 ; 2 uses
  %i.dym = load ptr, ptr %i.dyl, align 8, !tbaa !446
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dym, i64 48
  %i.dyo = load ptr, ptr %i.dyn, align 8
  %i.dyp = invoke noundef i32 %i.dyo(ptr noundef nonnull align 8 dereferenceable(64) %i.dyl)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyq = landingpad { ptr, i32 }
          catch ptr null
  %i.dyr = extractvalue { ptr, i32 } %i.dyq, 0
  call void @__clang_call_terminate(ptr %i.dyr) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lb, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dso, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cnl, %bb.xr ], [ %i.tz, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.bmg, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dex, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byl, %bb.st ], [ %i.byj, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.dek, %bb.abk ], [ %i.ckh, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbr, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvn, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.bit, %bb.nh ], [ %i.chf, %bb.wd ], [ %i.bsy, %bb.qu ], [ %i.cxu, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dki, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqf, %bb.afk ], [ %i.bsi, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cmy, %bb.xm ], [ %i.azm, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.la, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !746
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !746
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !746
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !746
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !677
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bx = trunc nuw nsw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !746 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !70
  %2 = zext i8 %i.ck to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %2, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bw, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %3 = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
  ret i32 %.1
}

declare { ptr, i8 } @_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmPKcSB_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i8, ptr noundef nonnull align 8 dereferenceable(216), i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !739
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !677
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !727  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !743 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #26
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !716, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !739
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2521 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !677
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !727 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !446
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cno, %bb.xr ], [ %i.ua, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.bmi, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dfa, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.den, %bb.abk ], [ %i.ckk, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvq, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dkl, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqi, %bb.afk ], [ %i.bsk, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cnb, %bb.xm ], [ %i.azn, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !746
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !746
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !746
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !746
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !677
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bx = trunc nuw nsw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !746 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !70
  %2 = zext i8 %i.ck to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %2, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bw, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %3 = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !766, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !446
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !688, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !739
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2521 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !677
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !727 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !446
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cno, %bb.xr ], [ %i.ua, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.bmi, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dfa, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.den, %bb.abk ], [ %i.ckk, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvq, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dkl, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqi, %bb.afk ], [ %i.bsk, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cnb, %bb.xm ], [ %i.azn, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !746
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !746
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !746
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !746
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !677
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bx = trunc nuw nsw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !746 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !70
  %2 = zext i8 %i.ck to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %2, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bw, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %3 = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !805, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !446
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !688, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9to_streamIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEERSt13basic_ostreamIT_T0_ESD_PKSA_RKNS0_6fieldsIT1_EEPKNSt7__cxx1112basic_stringIcS3_SaIcEEEPKNS5_IlS6_ILl1ELl1EEEE:bb.a
  %i.dye = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dyf = load i32, ptr %i.dye, align 4, !tbaa !739
  %i.dyg = and i32 %i.dyf, 8192
  %.not.i2521 = icmp eq i32 %i.dyg, 0
  br i1 %.not.i2521, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522, label %bb.ait

bb.ait:                                           ; preds = %_ZNSolsEj.exit2148
  %i.dyh = call noundef i32 @_ZSt19uncaught_exceptionsv() #31
  %i.dyi = icmp eq i32 %i.dyh, 0
  br i1 %i.dyi, label %bb.aiu, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiu:                                           ; preds = %bb.ait
  %i.dyj = load ptr, ptr %5, align 8, !tbaa !742, !nonnull !87, !align !546 ; 2 uses
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyj, i64 32
  %i.dyl = load i32, ptr %i.dyk, align 8, !tbaa !677
  %i.dym = icmp eq i32 %i.dyl, 0
  br i1 %i.dym, label %bb.aiv, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522

bb.aiv:                                           ; preds = %bb.aiu
  %i.dyn = getelementptr inbounds nuw i8, ptr %i.dyj, i64 232
  %i.dyo = load ptr, ptr %i.dyn, align 8, !tbaa !727 ; 2 uses
  %i.dyp = load ptr, ptr %i.dyo, align 8, !tbaa !446
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyp, i64 48
  %i.dyr = load ptr, ptr %i.dyq, align 8
  %i.dys = invoke noundef i32 %i.dyr(ptr noundef nonnull align 8 dereferenceable(64) %i.dyo)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522 unwind label %bb.aiw, !inline_history !743 ; 0 uses

bb.aiw:                                           ; preds = %bb.aiv
  %i.dyt = landingpad { ptr, i32 }
          catch ptr null
  %i.dyu = extractvalue { ptr, i32 } %i.dyt, 0
  call void @__clang_call_terminate(ptr %i.dyu) #28
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit2522: ; preds = %_ZNSolsEj.exit2148, %bb.ait, %bb.aiu, %bb.aiv
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret ptr %0

bb.aix:                                           ; preds = %.loopexit, %.loopexit.split-lp, %bb.kw, %bb.ld, %bb.afk, %bb.abt, %bb.abp, %bb.abk, %bb.zd, %bb.yz, %bb.xv, %bb.xr, %bb.xm, %bb.qs, %bb.qu, %bb.mc, %bb.ca, %bb.cj, %bb.u, %bb.ar, %bb.gn, %bb.ic, %bb.jl, %bb.op, %bb.ow, %bb.qa, %bb.rq, %bb.sr, %bb.st, %bb.ue, %bb.acx, %bb.afa, %bb.agl, %bb.dx, %bb.dq, %bb.fj, %bb.fc, %bb.np, %bb.nh, %bb.wk, %bb.wd, %bb.xe, %bb.zz, %bb.zq, %bb.abc, %bb.adq, %bb.adi, %bb.j
  %.pn953.pn = phi { ptr, i32 } [ %i.lc, %bb.j ], [ %lpad.phi2986, %bb.ld ], [ %lpad.phi3036, %bb.u ], [ %lpad.phi3031, %bb.ar ], [ %lpad.phi2921, %bb.adq ], [ %i.dsr, %bb.agl ], [ %lpad.phi3016, %bb.dx ], [ %.pn935.pn, %bb.gn ], [ %.pn931.pn, %bb.ic ], [ %.pn927.pn, %bb.jl ], [ %i.cno, %bb.xr ], [ %i.ua, %bb.ca ], [ %lpad.phi3006, %bb.fj ], [ %i.bmi, %bb.op ], [ %lpad.phi2971, %bb.ow ], [ %lpad.phi2966, %bb.qa ], [ %i.dfa, %bb.abp ], [ %lpad.phi2961, %bb.rq ], [ %i.byo, %bb.st ], [ %i.bym, %bb.sr ], [ %lpad.phi2956, %bb.ue ], [ %lpad.phi2976, %bb.np ], [ %lpad.phi2951, %bb.wk ], [ %i.den, %bb.abk ], [ %i.ckk, %bb.xe ], [ %lpad.phi2936, %bb.zz ], [ %lpad.phi2926, %bb.acx ], [ %i.dbu, %bb.abc ], [ %.pn861.pn, %bb.afa ], [ %i.cvq, %bb.yz ], [ %.pn943, %bb.dq ], [ %.pn939, %bb.fc ], [ %i.biv, %bb.nh ], [ %i.chi, %bb.wd ], [ %i.btb, %bb.qu ], [ %i.cxx, %bb.zq ], [ %lpad.phi2931, %bb.abt ], [ %i.dkl, %bb.adi ], [ %lpad.phi3026, %bb.cj ], [ %lpad.phi2941, %bb.zd ], [ %.pn918, %bb.mc ], [ %i.dqi, %bb.afk ], [ %i.bsk, %bb.qs ], [ %lpad.phi2946, %bb.xv ], [ %i.cnb, %bb.xm ], [ %i.azn, %bb.kw ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aiy

bb.aiy:                                           ; preds = %bb.aix, %bb.i
  %.pn953.pn.pn = phi { ptr, i32 } [ %.pn953.pn, %bb.aix ], [ %i.lb, %bb.i ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn953.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN14arrow_vendored4date6detail15extract_weekdayIcSt11char_traitsIcENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEjRSt13basic_ostreamIT_T0_ERKNS0_6fieldsIT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(49) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !730    ; 8 uses
  %.not.i = icmp eq i16 %i.a, -32768
  br i1 %.not.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !731   ; 8 uses
  %i.d = add i8 %i.c, -1
  %spec.select.i.i = icmp ult i8 %i.d, 12
  br i1 %spec.select.i.i, label %bb.c, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !732   ; 2 uses
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i8 %i.c, 2
  %i.g = and i16 %i.a, 3
  %i.h = icmp eq i16 %i.g, 0
  %or.cond.i = and i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %bb.e, label %.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = srem i16 %i.a, 100
  %.not.i.i.i = icmp ne i16 %i.i, 0
  %i.j = srem i16 %i.a, 400
  %i.k = icmp eq i16 %i.j, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.l = zext nneg i8 %i.c to i64
  %i.m = add nuw nsw i64 %i.l, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.e, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.p, %.thread.i.i ], [ 29, %bb.e ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.f
  br i1 %.not, label %.thread26, label %.thread

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i8, ptr %i.q, align 4, !tbaa !746
  %i.s = icmp ult i8 %i.r, 7
  br i1 %i.s, label %.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !746
  %i.v = icmp ult i8 %i.u, 7
  br i1 %i.v, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !746
  %i.y = icmp ult i8 %i.x, 7
  br i1 %i.y, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.f

.thread26:                                        ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !746
  %i.ab = icmp ult i8 %i.aa, 7
  br i1 %i.ab, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.ac = load ptr, ptr %0, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !677
  %i.ai = or i32 %i.ah, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.af, i32 noundef %i.ai)
  br label %bb.l

.thread:                                          ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, %.thread26, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !732 ; 3 uses
  %.not8.i12 = icmp eq i8 %i.ak, 0
  br i1 %.not8.i12, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.g

bb.g:                                             ; preds = %.thread
  %.not.i.i13 = icmp eq i8 %i.c, 2
  %i.al = and i16 %i.a, 3
  %i.am = icmp eq i16 %i.al, 0
  %or.cond.i14 = and i1 %i.am, %.not.i.i13
  br i1 %or.cond.i14, label %bb.h, label %.thread.i.i15

bb.h:                                             ; preds = %bb.g
  %i.an = srem i16 %i.a, 100
  %.not.i.i.i18 = icmp ne i16 %i.an, 0
  %i.ao = srem i16 %i.a, 400
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond.i.i19 = or i1 %.not.i.i.i18, %i.ap
  br i1 %or.cond.i.i19, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20, label %.thread.i.i15

.thread.i.i15:                                    ; preds = %bb.h, %bb.g
  %i.aq = zext nneg i8 %i.c to i64
  %i.ar = add nuw nsw i64 %i.aq, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !70
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20: ; preds = %bb.h, %.thread.i.i15
  %.sroa.03.0.i.i17 = phi i8 [ %i.au, %.thread.i.i15 ], [ 29, %bb.h ]
  %.not30 = icmp ult i8 %.sroa.03.0.i.i17, %i.ak
  br i1 %.not30, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.av = sext i16 %i.a to i32
  %i.aw = icmp samesign ult i8 %i.c, 3
  %.neg.i.i = sext i1 %i.aw to i32
  %i.ax = add nsw i32 %.neg.i.i, %i.av            ; 4 uses
  %i.ay = zext nneg i8 %i.c to i32
  %i.az = zext i8 %i.ak to i32
  %i.ba = add nsw i32 %i.ax, -399
  %i.bb = icmp slt i32 %i.ax, 0
  %i.bc = select i1 %i.bb, i32 %i.ba, i32 %i.ax
  %i.bd = sdiv i32 %i.bc, 400                     ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.bd, -400
  %i.be = add nsw i32 %.neg15.i.i, %i.ax          ; 3 uses
  %i.bf = icmp samesign ugt i8 %i.c, 2
  %.v.i.i = select i1 %i.bf, i32 -3, i32 9
  %i.bg = add nsw i32 %.v.i.i, %i.ay
  %i.bh = mul nsw i32 %i.bg, 153
  %i.bi = add nsw i32 %i.bh, 2
  %i.bj = udiv i32 %i.bi, 5
  %i.bk = mul nsw i32 %i.be, 365
  %i.bl = lshr i32 %i.be, 2
  %i.bm = udiv i32 %i.be, 100
  %i.bn = mul nsw i32 %i.bd, 146097
  %i.bo = add nuw nsw i32 %i.az, -719469
  %i.bp = add nsw i32 %i.bo, %i.bj
  %i.bq = add nsw i32 %i.bp, %i.bn
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %i.br, %i.bk
  %i.bt = sub nsw i32 %i.bs, %i.bm                ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -5
  %i.bv = add nsw i32 %i.bt, 4
  %.in.i.i = select i1 %i.bu, i32 %i.bv, i32 %i.bt
  %i.bw = urem i32 %.in.i.i, 7                    ; 2 uses
  %i.bx = trunc nuw nsw i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !746 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 7
  %i.cb = icmp ne i8 %i.bz, %i.bx
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %0, align 8, !tbaa !446
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !677
  %i.ci = or i32 %i.ch, 4
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.cf, i32 noundef %i.ci)
  br label %bb.l

_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread33, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread.thread, %.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ck = load i8, ptr %i.cj, align 4, !tbaa !70
  %2 = zext i8 %i.ck to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread
  %.sroa.023.0 = phi i32 [ %2, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit20.thread ], [ %i.bw, %bb.i ]
  %.fr.i = freeze i32 %.sroa.023.0
  %3 = srem i32 %.fr.i, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.f
  %.1 = phi i32 [ 8, %bb.f ], [ 8, %bb.j ], [ %3, %bb.k ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_8hh_mm_ssINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i8, ptr %i.f, align 8, !tbaa !813, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 45, ptr %i.e, align 1, !tbaa !70
  %i.i = load ptr, ptr %0, align 8, !tbaa !446
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !659
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 45) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !408    ; 2 uses
  %i.r = icmp slt i64 %i.q, 10
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 48, ptr %i.d, align 1, !tbaa !70
  %i.s = load ptr, ptr %0, align 8, !tbaa !446
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !659
  %.not.i15 = icmp eq i64 %i.x, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

bb.h:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i64, ptr %1, align 8, !tbaa !715
  br label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17, %bb.e
  %i.aa = phi i64 [ %.pre, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit17 ], [ %i.q, %bb.e ]
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.aa) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 58, ptr %i.c, align 1, !tbaa !70
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !446
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !659
  %.not.i18 = icmp eq i64 %i.ah, 0
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

bb.k:                                             ; preds = %bb.i
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !408 ; 2 uses
  %i.am = icmp slt i64 %i.al, 10
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 48, ptr %i.b, align 1, !tbaa !70
  %i.an = load ptr, ptr %0, align 8, !tbaa !446
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !659
  %.not.i21 = icmp eq i64 %i.as, 0
  br i1 %.not.i21, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.n:                                             ; preds = %bb.l
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 48) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre29 = load i64, ptr %i.ak, align 8, !tbaa !714
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20
  %i.av = phi i64 [ %.pre29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ %i.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit20 ]
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.av) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 58, ptr %i.a, align 1, !tbaa !70
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !446
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !659
  %.not.i24 = icmp eq i64 %i.bc, 0
  br i1 %.not.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

bb.q:                                             ; preds = %bb.o
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 58) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit26: ; preds = %bb.p, %bb.q
  %.0.i25 = phi ptr [ %i.bd, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %.0.i25) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14arrow_vendored4date6detail22decimal_format_secondsINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE5printIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ESG_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %5 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = load ptr, ptr %1, align 8, !tbaa !446
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !446    ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 225 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !688, !range !86, !noundef !87
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !694  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !695
  %.not.i1.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

end_hunk_3

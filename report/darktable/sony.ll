Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/sony?download=true
inline.NumInlined: 98
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN6LibRaw12parseSonySR2EPhjjj:bb.a
.preheader229.preheader:                          ; preds = %bb.bu
  %i.tf = load i64, ptr %i.e, align 8, !tbaa !146
  %i.tg = trunc i64 %i.tf to i32
  %i.th = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tg)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader224.preheader:                          ; preds = %bb.bu
  %i.ti = load i64, ptr %i.e, align 8, !tbaa !146
  %i.tj = trunc i64 %i.ti to i32
  %i.tk = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tj)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188:          ; preds = %.preheader224.preheader
  %i.tl = zext i16 %i.tk to i32
  store i32 %i.tl, ptr %i.bl, align 4, !tbaa !77
  %i.tm = load i64, ptr %i.e, align 8, !tbaa !146
  %i.tn = load i32, ptr %i.f, align 4, !tbaa !77
  %i.to = trunc i64 %i.tm to i32
  %i.tp = add i32 %i.tn, %i.to
  %i.tq = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tp)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188.1:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit188
  %i.tr = zext i16 %i.tq to i32
  store i32 %i.tr, ptr %i.ag, align 8, !tbaa !77
  %i.ts = load i64, ptr %i.e, align 8, !tbaa !146
  %i.tt = load i32, ptr %i.f, align 4, !tbaa !77
  %i.tu = shl i32 %i.tt, 1
  %i.tv = trunc i64 %i.ts to i32
  %i.tw = add i32 %i.tu, %i.tv
  %i.tx = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tw)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188.2:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit188.1
  %i.ty = zext i16 %i.tx to i32
  store i32 %i.ty, ptr %i.bm, align 8, !tbaa !77
  %i.tz = load i64, ptr %i.e, align 8, !tbaa !146
  %i.ua = load i32, ptr %i.f, align 4, !tbaa !77
  %i.ub = mul i32 %i.ua, 3
  %i.uc = trunc i64 %i.tz to i32
  %i.ud = add i32 %i.ub, %i.uc
  %i.ue = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.ud)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188.3:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit188.2
  %i.uf = zext i16 %i.ue to i32
  store i32 %i.uf, ptr %i.bn, align 4, !tbaa !77
  br label %.loopexit225

_ZN16checked_buffer_t7sget2LLEx.exit189:          ; preds = %.preheader229.preheader
  %i.ug = zext i16 %i.th to i32
  store i32 %i.ug, ptr %i.ag, align 8, !tbaa !77
  %i.uh = load i64, ptr %i.e, align 8, !tbaa !146
  %i.ui = load i32, ptr %i.f, align 4, !tbaa !77
  %i.uj = trunc i64 %i.uh to i32
  %i.uk = add i32 %i.ui, %i.uj
  %i.ul = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.uk)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit189.1:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit189
  %i.um = zext i16 %i.ul to i32
  store i32 %i.um, ptr %i.bi, align 4, !tbaa !77
  %i.un = load i64, ptr %i.e, align 8, !tbaa !146
  %i.uo = load i32, ptr %i.f, align 4, !tbaa !77
  %i.up = shl i32 %i.uo, 1
  %i.uq = trunc i64 %i.un to i32
  %i.ur = add i32 %i.up, %i.uq
  %i.us = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.ur)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit189.2:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit189.1
  %i.ut = zext i16 %i.us to i32
  store i32 %i.ut, ptr %i.bj, align 4, !tbaa !77
  %i.uu = load i64, ptr %i.e, align 8, !tbaa !146
  %i.uv = load i32, ptr %i.f, align 4, !tbaa !77
  %i.uw = mul i32 %i.uv, 3
  %i.ux = trunc i64 %i.uu to i32
  %i.uy = add i32 %i.uw, %i.ux
  %i.uz = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.uy)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit189.3:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit189.2
  %i.va = zext i16 %i.uz to i32
  store i32 %i.va, ptr %i.bk, align 8, !tbaa !77
  br label %.loopexit225

.loopexit225:                                     ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit141.2.2, %.preheader.2, %_ZN16checked_buffer_t7sget2LLEx.exit137.3, %_ZN16checked_buffer_t7sget2LLEx.exit135.3, %_ZN16checked_buffer_t7sget2LLEx.exit.3, %_ZN16checked_buffer_t7sget2LLEx.exit189.3, %_ZN16checked_buffer_t7sget2LLEx.exit188.3, %bb.bu, %bb.r, %bb.p, %bb.n, %bb.l, %_ZN16checked_buffer_t7sget2LLEx.exit136.3, %bb.s, %_ZN16checked_buffer_t7sget2LLEx.exit143, %_ZN16checked_buffer_t7sget2LLEx.exit142.2, %_ZNK21libraw_static_table_tixEj.exit187, %_ZNK21libraw_static_table_tixEj.exit174.thread, %bb.ac, %_ZNK21libraw_static_table_tixEj.exit161, %bb.h
  %.1 = phi i32 [ %.0119281, %bb.h ], [ %i.ml, %bb.ac ], [ %.0119281, %_ZNK21libraw_static_table_tixEj.exit161 ], [ %i.qw, %_ZNK21libraw_static_table_tixEj.exit174.thread ], [ %.0119281, %_ZNK21libraw_static_table_tixEj.exit187 ], [ %.0119281, %bb.r ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit135.3 ], [ %.0119281, %bb.bu ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit142.2 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit143 ], [ %.0119281, %bb.s ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit189.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit188.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit137.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit136.3 ], [ %.0119281, %bb.l ], [ %.0119281, %bb.n ], [ %.0119281, %bb.p ], [ %.0119281, %.preheader.2 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit141.2.2 ]
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %.loopexit257, label %bb.g, !llvm.loop !206

.loopexit257:                                     ; preds = %.loopexit225, %bb.f, %bb.c
  %i.vb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i190 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i.i190, label %_ZN16checked_buffer_tD2Ev.exit191, label %bb.bv

bb.bv:                                            ; preds = %.loopexit257
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !145
  %i.vf = ptrtoint ptr %i.ve to i64
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = sub i64 %i.vf, %i.vg
  call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.vh) #20
  br label %_ZN16checked_buffer_tD2Ev.exit191

_ZN16checked_buffer_tD2Ev.exit191:                ; preds = %.loopexit257, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bw

_ZN16checked_buffer_tD2Ev.exit:                   ; preds = %bb.e, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.e ]
  %.0118 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.vi = call ptr @__cxa_begin_catch(ptr %.0118) #19 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN16checked_buffer_tD2Ev.exit191, %_ZN16checked_buffer_tD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare void @_ZN16checked_buffer_tC1EsPhi(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, ptr noundef, i32 noundef) unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN16checked_buffer_t9tiff_sgetEjPxPjS1_S0_S1_Pi(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw12parseSonySRFEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 13 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %2 = alloca %class.checked_buffer_t, align 8    ; 28 uses
  %i.g = add i32 %1, -1048576
  %or.cond = icmp ult i32 %i.g, -1048575
  br i1 %or.cond, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !120  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !call_target !212 ; 8 uses
  %i.n = sub nsw i64 200896, %i.m                 ; 4 uses
  %i.o = zext nneg i32 %1 to i64                  ; 2 uses
  %i.p = icmp sgt i64 %i.n, %i.o
  %i.q = icmp sgt i64 %i.m, 200896
  %or.cond3 = or i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.bf, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2                         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.t = load i16, ptr %i.s, align 8, !tbaa !113
  invoke void @_ZN16checked_buffer_tC1Esi(ptr noundef nonnull align 8 dereferenceable(48) %2, i16 noundef signext %i.t, i32 noundef %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !120  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !217
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.o, i64 noundef 1)
          to label %bb.e unwind label %bb.l, !call_target !132 ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc nuw nsw i64 %i.n to i32
  %i.ac = invoke noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ab)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nsw i64 %i.ae, %i.n
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 4 uses
  %i.ah = invoke noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ag)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ai = add nuw nsw i32 %i.ag, 1
  %i.aj = invoke noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ai)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ak = add nuw nsw i32 %i.ag, 2
  %i.al = invoke noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ak)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.am = add nuw nsw i32 %i.ag, 3
  %i.an = invoke noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.am)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ao = zext i8 %i.ah to i32
  %i.ap = shl nuw i32 %i.ao, 24
  %i.aq = zext i8 %i.aj to i32
  %i.ar = shl nuw nsw i32 %i.aq, 16
  %i.as = or disjoint i32 %i.ar, %i.ap
  %i.at = zext i8 %i.al to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = or disjoint i32 %i.au, %i.as
  %i.aw = zext i8 %i.an to i32
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 0)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN16checked_buffer_t7sget2LLEx.exit:             ; preds = %bb.j
  %i.az = icmp ugt i16 %i.ay, 1000
  br i1 %i.az, label %.loopexit, label %bb.m

bb.k:                                             ; preds = %bb.c
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN16checked_buffer_tD2Ev.exit106

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit115:                                     ; preds = %bb.aa, %bb.ad, %bb.ao, %bb.ar, %bb.at, %bb.av, %bb.ax
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.v, %bb.u, %bb.r
  %lpad.loopexit116 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge, %_ZN6LibRaw12sony_decryptEPjiii.exit, %bb.m, %bb.j, %bb.x, %bb.i, %bb.h, %bb.g, %bb.f
  %lpad.loopexit.split-lp117 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit
  %narrow = mul nuw nsw i16 %i.ay, 12
  %i.bc = or disjoint i16 %narrow, 2
  %i.bd = zext nneg i16 %i.bc to i32
  %i.be = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.bd)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN16checked_buffer_t7sget4LLEx.exit:             ; preds = %bb.m
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nsw i64 %i.bf, %i.m                 ; 5 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit
  %i.bi = lshr i64 %i.bg, 2                       ; 4 uses
  %i.bj = icmp samesign ult i64 %i.r, %i.bi
  br i1 %i.bj, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !217
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 26 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 544 ; 12 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 15 uses
  %i.bp = mul i32 %i.ax, 48828125
  %i.bq = add i32 %i.bp, 1                        ; 3 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !77
  %i.br = mul i32 %i.bq, 48828125
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !77
  %i.bu = mul i32 %i.bs, 48828125
  %i.bv = add i32 %i.bu, 1                        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !77
  %i.bx = mul i32 %i.bv, 48828125
  %i.by = add i32 %i.bx, 1
  %i.bz = getelementptr i8, ptr %i.bm, i64 44
  %i.ca = xor i32 %i.bv, %i.bq
  %i.cb = call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.ca, i32 1) ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !77
  store i32 4, ptr %i.bn, align 8, !tbaa !84
  br label %bb.p

iter.check:                                       ; preds = %bb.p
  store i32 0, ptr %i.bn, align 8, !tbaa !84
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 128 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.bo, align 8, !tbaa !77
  %wide.load153 = load <8 x i32>, ptr %i.cc, align 8, !tbaa !77
  %wide.load154 = load <8 x i32>, ptr %i.cd, align 8, !tbaa !77
  %wide.load155 = load <8 x i32>, ptr %i.ce, align 8, !tbaa !77
  %i.cf = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load)
  %i.cg = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load153)
  %i.ch = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load154)
  %i.ci = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load155)
  store <8 x i32> %i.cf, ptr %i.bo, align 8, !tbaa !77
  store <8 x i32> %i.cg, ptr %i.cc, align 8, !tbaa !77
  store <8 x i32> %i.ch, ptr %i.cd, align 8, !tbaa !77
  store <8 x i32> %i.ci, ptr %i.ce, align 8, !tbaa !77
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 160 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 192 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 224 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 256 ; 2 uses
  %wide.load.1 = load <8 x i32>, ptr %i.cj, align 8, !tbaa !77
  %wide.load153.1 = load <8 x i32>, ptr %i.ck, align 8, !tbaa !77
  %wide.load154.1 = load <8 x i32>, ptr %i.cl, align 8, !tbaa !77
  %wide.load155.1 = load <8 x i32>, ptr %i.cm, align 8, !tbaa !77
  %i.cn = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.1)
  %i.co = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load153.1)
  %i.cp = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load154.1)
  %i.cq = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load155.1)
  store <8 x i32> %i.cn, ptr %i.cj, align 8, !tbaa !77
  store <8 x i32> %i.co, ptr %i.ck, align 8, !tbaa !77
  store <8 x i32> %i.cp, ptr %i.cl, align 8, !tbaa !77
  store <8 x i32> %i.cq, ptr %i.cm, align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 288 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 320 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 352 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 384 ; 2 uses
  %wide.load.2 = load <8 x i32>, ptr %i.cr, align 8, !tbaa !77
  %wide.load153.2 = load <8 x i32>, ptr %i.cs, align 8, !tbaa !77
  %wide.load154.2 = load <8 x i32>, ptr %i.ct, align 8, !tbaa !77
  %wide.load155.2 = load <8 x i32>, ptr %i.cu, align 8, !tbaa !77
  %i.cv = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.2)
  %i.cw = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load153.2)
  %i.cx = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load154.2)
  %i.cy = call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load155.2)
  store <8 x i32> %i.cv, ptr %i.cr, align 8, !tbaa !77
  store <8 x i32> %i.cw, ptr %i.cs, align 8, !tbaa !77
  store <8 x i32> %i.cx, ptr %i.ct, align 8, !tbaa !77
  store <8 x i32> %i.cy, ptr %i.cu, align 8, !tbaa !77
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 416 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %i.cz, align 8, !tbaa !77
  %i.da = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157)
  store <4 x i32> %i.da, ptr %i.cz, align 8, !tbaa !77
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 432 ; 2 uses
  %wide.load157.1 = load <4 x i32>, ptr %i.db, align 8, !tbaa !77
  %i.dc = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157.1)
  store <4 x i32> %i.dc, ptr %i.db, align 8, !tbaa !77
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 448 ; 2 uses
  %wide.load157.2 = load <4 x i32>, ptr %i.dd, align 8, !tbaa !77
  %i.de = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157.2)
  store <4 x i32> %i.de, ptr %i.dd, align 8, !tbaa !77
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 464 ; 2 uses
  %wide.load157.3 = load <4 x i32>, ptr %i.df, align 8, !tbaa !77
  %i.dg = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157.3)
  store <4 x i32> %i.dg, ptr %i.df, align 8, !tbaa !77
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bm, i64 480 ; 2 uses
  %wide.load157.4 = load <4 x i32>, ptr %i.dh, align 8, !tbaa !77
  %i.di = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157.4)
  store <4 x i32> %i.di, ptr %i.dh, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 496 ; 2 uses
  %wide.load157.5 = load <4 x i32>, ptr %i.dj, align 8, !tbaa !77
  %i.dk = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157.5)
  store <4 x i32> %i.dk, ptr %i.dj, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 512 ; 2 uses
  %wide.load157.6 = load <4 x i32>, ptr %i.dl, align 8, !tbaa !77
  %i.dm = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load157.6)
  store <4 x i32> %i.dm, ptr %i.dl, align 8, !tbaa !77
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 528 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !77
  %i.dp = call noundef i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !77
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bm, i64 532 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !77
  %i.ds = call noundef i32 @llvm.bswap.i32(i32 %i.dr)
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !77
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bm, i64 536 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !77
  %i.dv = call noundef i32 @llvm.bswap.i32(i32 %i.du)
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !77
  store i32 127, ptr %i.bn, align 8, !tbaa !84
  %.not920.i = icmp eq i64 %i.r, %i.bi
  br i1 %.not920.i, label %_ZN6LibRaw12sony_decryptEPjiii.exit, label %.lr.ph.i.preheader

bb.p:                                             ; preds = %bb.p, %bb.o
end_hunk_0
begin_hunk_1_@_ZN6LibRaw12parseSonySRFEj:bb.a
  store i32 %i.er, ptr %i.bn, align 8, !tbaa !84
  %i.es = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i.1 ; 4 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -16
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !77
  %i.ev = getelementptr i8, ptr %i.es, i64 -8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !77
  %i.ex = xor i32 %i.ew, %i.eu
  %i.ey = getelementptr i8, ptr %i.es, i64 -12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !77
  %i.fa = xor i32 %i.eq, %i.ez
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.fa, i32 1) ; 2 uses
  store i32 %i.fb, ptr %i.es, align 4, !tbaa !77
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.fc, ptr %i.bn, align 8, !tbaa !84
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 127
  br i1 %exitcond.not.i.2, label %iter.check, label %bb.p, !llvm.loop !0

.lr.ph.i.preheader:                               ; preds = %iter.check
  %i.fd = sub nsw i64 %i.r, %i.bi                 ; 2 uses
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %sext = shl i64 %i.bg, 32
  %i.ff = ashr exact i64 %sext, 32
  %i.fg = getelementptr inbounds i8, ptr %i.bk, i64 %i.ff ; 2 uses
  %i.fh = trunc i64 %i.r to i32
  %i.fi = trunc i64 %i.bi to i32
  %xtraiter = and i32 %i.fe, 1
  %i.fj = add i32 %i.fh, -1
  %i.fk = icmp eq i32 %i.fj, %i.fi
  br i1 %i.fk, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.fe, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.fl = phi i32 [ 127, %.lr.ph.i.preheader.new ], [ %i.gx, %.lr.ph.i ] ; 3 uses
  %.0422.i = phi ptr [ %i.fg, %.lr.ph.i.preheader.new ], [ %i.gt, %.lr.ph.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.fm = add i32 %i.fl, 1
  %i.fn = and i32 %i.fm, 127
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !77
  %i.fr = add i32 %i.fl, 65
  %i.fs = and i32 %i.fr, 127
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !77
  %i.fw = xor i32 %i.fv, %i.fq                    ; 2 uses
  %i.fx = and i32 %i.fl, 127
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.fy
  store i32 %i.fw, ptr %i.fz, align 4, !tbaa !77
  %i.ga = getelementptr inbounds nuw i8, ptr %.0422.i, i64 4 ; 2 uses
  %i.gb = load i32, ptr %.0422.i, align 4, !tbaa !77
  %i.gc = xor i32 %i.gb, %i.fw
  store i32 %i.gc, ptr %.0422.i, align 4, !tbaa !77
  %i.gd = load i32, ptr %i.bn, align 8, !tbaa !84 ; 3 uses
  %i.ge = add i32 %i.gd, 1                        ; 2 uses
  store i32 %i.ge, ptr %i.bn, align 8, !tbaa !84
  %i.gf = add i32 %i.gd, 2
  %i.gg = and i32 %i.gf, 127
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !77
  %i.gk = add i32 %i.gd, 66
  %i.gl = and i32 %i.gk, 127
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !77
  %i.gp = xor i32 %i.go, %i.gj                    ; 2 uses
  %i.gq = and i32 %i.ge, 127
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.gr
  store i32 %i.gp, ptr %i.gs, align 4, !tbaa !77
  %i.gt = getelementptr inbounds nuw i8, ptr %.0422.i, i64 8 ; 2 uses
  %i.gu = load i32, ptr %i.ga, align 4, !tbaa !77
  %i.gv = xor i32 %i.gu, %i.gp
  store i32 %i.gv, ptr %i.ga, align 4, !tbaa !77
  %i.gw = load i32, ptr %i.bn, align 8, !tbaa !84
  %i.gx = add i32 %i.gw, 1                        ; 3 uses
  store i32 %i.gx, ptr %i.bn, align 8, !tbaa !84
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6LibRaw12sony_decryptEPjiii.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

_ZN6LibRaw12sony_decryptEPjiii.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6LibRaw12sony_decryptEPjiii.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6LibRaw12sony_decryptEPjiii.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i32 [ 127, %.lr.ph.i.preheader ], [ %i.gx, %_ZN6LibRaw12sony_decryptEPjiii.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0422.i.epil.init = phi ptr [ %i.fg, %.lr.ph.i.preheader ], [ %i.gt, %_ZN6LibRaw12sony_decryptEPjiii.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod160 = trunc i64 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod160)
  %i.gy = add i32 %.epil.init, 1
  %i.gz = and i32 %i.gy, 127
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !77
  %i.hd = add i32 %.epil.init, 65
  %i.he = and i32 %i.hd, 127
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !77
  %i.hi = xor i32 %i.hh, %i.hc                    ; 2 uses
  %i.hj = and i32 %.epil.init, 127
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.hk
  store i32 %i.hi, ptr %i.hl, align 4, !tbaa !77
  %i.hm = load i32, ptr %.0422.i.epil.init, align 4, !tbaa !77
  %i.hn = xor i32 %i.hm, %i.hi
  store i32 %i.hn, ptr %.0422.i.epil.init, align 4, !tbaa !77
  %i.ho = load i32, ptr %i.bn, align 8, !tbaa !84
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.bn, align 8, !tbaa !84
  br label %_ZN6LibRaw12sony_decryptEPjiii.exit

_ZN6LibRaw12sony_decryptEPjiii.exit:              ; preds = %.lr.ph.i.epil.preheader, %_ZN6LibRaw12sony_decryptEPjiii.exit.loopexit.unr-lcssa, %iter.check
  %i.hq = trunc i64 %i.bg to i32
  %i.hr = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.hq)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit88 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN16checked_buffer_t7sget2LLEx.exit88:           ; preds = %_ZN6LibRaw12sony_decryptEPjiii.exit
  %i.hs = icmp ugt i16 %i.hr, 1000
  br i1 %i.hs, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit88
  %i.ht = add nuw nsw i64 %i.bg, 2                ; 2 uses
  store i64 %i.ht, ptr %i.a, align 8, !tbaa !146
  %.not122 = icmp eq i16 %i.hr, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.hu = trunc i64 %i.m to i32
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZN16checked_buffer_t7sget4LLEx.exit89
  %.in128 = phi i16 [ %i.hr, %.lr.ph ], [ %i.hv, %_ZN16checked_buffer_t7sget4LLEx.exit89 ]
  %.074123 = phi i32 [ 0, %.lr.ph ], [ %.175, %_ZN16checked_buffer_t7sget4LLEx.exit89 ] ; 2 uses
  %i.hv = add nsw i16 %.in128, -1                 ; 2 uses
  %i.hw = load ptr, ptr %i.v, align 8, !tbaa !217
  %i.hx = invoke noundef signext i16 @_ZN6LibRaw9tiff_sgetEjPhjPxPjS2_S1_S2_Pi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.hu, ptr noundef %i.hw, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit

bb.s:                                             ; preds = %bb.r
  %i.hy = icmp eq i16 %i.hx, 0
  br i1 %i.hy, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.hz = load i32, ptr %i.d, align 4, !tbaa !77
  switch i32 %i.hz, label %_ZN16checked_buffer_t7sget4LLEx.exit89 [
    i32 0, label %bb.u
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ia = load i64, ptr %i.b, align 8, !tbaa !146
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ib)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit89 unwind label %.loopexit.split-lp.loopexit

bb.v:                                             ; preds = %bb.t
  %i.id = load i64, ptr %i.b, align 8, !tbaa !146
  %i.ie = trunc i64 %i.id to i32
  %i.if = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ie)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit89 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN16checked_buffer_t7sget4LLEx.exit89:           ; preds = %bb.v, %bb.u, %bb.t
  %.175 = phi i32 [ %.074123, %bb.t ], [ %i.ic, %bb.u ], [ %.074123, %bb.v ] ; 2 uses
  %.not = icmp eq i16 %i.hv, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.r, !llvm.loop !208

._crit_edge.loopexit:                             ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit89
  %.pre = load i64, ptr %i.a, align 8, !tbaa !146
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %i.ig = phi i64 [ %i.ht, %bb.q ], [ %.pre, %._crit_edge.loopexit ]
  %.074.lcssa = phi i32 [ 0, %bb.q ], [ %.175, %._crit_edge.loopexit ]
  %i.ih = trunc i64 %i.ig to i32
  %i.ii = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ih)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit91 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN16checked_buffer_t7sget4LLEx.exit91:           ; preds = %._crit_edge
  %i.ij = zext i32 %i.ii to i64
  %i.ik = sub nsw i64 %i.ij, %i.m                 ; 5 uses
  %i.il = icmp slt i64 %i.ik, 0
  br i1 %i.il, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit91
  %i.im = lshr i64 %i.ik, 2                       ; 2 uses
  %i.in = icmp samesign ult i64 %i.r, %i.im
  br i1 %i.in, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.io = load ptr, ptr %i.v, align 8, !tbaa !217
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ik
  %i.iq = sub nuw nsw i64 %i.r, %i.im
  %i.ir = trunc nsw i64 %i.iq to i32
  call void @_ZN6LibRaw12sony_decryptEPjiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ip, i32 noundef %i.ir, i32 noundef 1, i32 noundef %.074.lcssa)
  %i.is = trunc i64 %i.ik to i32
  %i.it = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.is)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.y:                                             ; preds = %bb.x
  %i.iu = icmp ugt i16 %i.it, 1000
  br i1 %i.iu, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iv = add nuw nsw i64 %i.ik, 2
  store i64 %i.iv, ptr %i.a, align 8, !tbaa !146
  %.not87124 = icmp eq i16 %i.it, 0
  br i1 %.not87124, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.z
  %i.iw = trunc i64 %i.m to i32
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 6 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph126, %bb.az
  %.in129 = phi i16 [ %i.it, %.lr.ph126 ], [ %i.je, %bb.az ]
  %i.je = add nsw i16 %.in129, -1                 ; 2 uses
  %i.jf = invoke noundef i32 @_ZN16checked_buffer_t9tiff_sgetEjPxPjS1_S0_S1_Pi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.iw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c)
          to label %bb.ab unwind label %.loopexit115

bb.ab:                                            ; preds = %bb.aa
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.jh = load i32, ptr %i.d, align 4, !tbaa !77  ; 3 uses
  %i.ji = add i32 %i.jh, -192                     ; 2 uses
  %or.cond5 = icmp ult i32 %i.ji, 15
  br i1 %or.cond5, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %.lhs.trunc = trunc nuw nsw i32 %i.ji to i8     ; 2 uses
  %i.jj = udiv i8 %.lhs.trunc, 3                  ; 3 uses
  %i.jk = urem i8 %.lhs.trunc, 3                  ; 2 uses
  %.zext = zext nneg i8 %i.jj to i32              ; 2 uses
  %i.jl = load i64, ptr %i.b, align 8, !tbaa !146
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.jm)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit92 unwind label %.loopexit115

_ZN16checked_buffer_t7sget4LLEx.exit92:           ; preds = %bb.ad
  %i.jo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, i64 8), align 8, !tbaa !149 ; 2 uses
  %i.jp = icmp ugt i32 %i.jo, %.zext
  br i1 %i.jp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit92
  %i.jq = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !150
  %i.jr = zext nneg i8 %i.jj to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !77
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.af:                                            ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit92
  %.not.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ju = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !150 ; 2 uses
  %.not6.i = icmp eq ptr %i.ju, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !77
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.0.i = phi i32 [ %i.jt, %bb.ae ], [ %i.jv, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ]
  %i.jw = sext i32 %.0.i to i64
  %i.jx = getelementptr inbounds [16 x i8], ptr %i.jd, i64 %i.jw
  %i.jy = zext nneg i8 %i.jk to i64               ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.jy
  store i32 %i.jn, ptr %i.jz, align 4, !tbaa !77
  %i.ka = icmp eq i8 %i.jk, 1
  br i1 %i.ka, label %bb.ai, label %bb.az

bb.ai:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.kb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, i64 8), align 8, !tbaa !149 ; 2 uses
  %i.kc = icmp ugt i32 %i.kb, %.zext
  br i1 %i.kc, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i93 = icmp eq i32 %i.kb, 0
  br i1 %.not.i93, label %_ZNK21libraw_static_table_tixEj.exit100, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kd = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !150 ; 2 uses
  %.not6.i94 = icmp eq ptr %i.kd, null
  br i1 %.not6.i94, label %_ZNK21libraw_static_table_tixEj.exit100, label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.ke = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !150
  %i.kf = zext nneg i8 %i.jj to i64
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !77 ; 2 uses
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [16 x i8], ptr %i.jd, i64 %i.ki
  br label %_ZNK21libraw_static_table_tixEj.exit100

bb.am:                                            ; preds = %bb.ak
  %i.kk = load i32, ptr %i.kd, align 4, !tbaa !77 ; 2 uses
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [16 x i8], ptr %i.jd, i64 %i.kl
  br label %_ZNK21libraw_static_table_tixEj.exit100

_ZNK21libraw_static_table_tixEj.exit100:          ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %.sink = phi ptr [ %i.km, %bb.am ], [ %i.jd, %bb.ak ], [ %i.kj, %bb.al ], [ %i.jd, %bb.aj ]
  %.0.i99 = phi i32 [ %i.kk, %bb.am ], [ 0, %bb.ak ], [ %i.kh, %bb.al ], [ 0, %bb.aj ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.jy
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !77
  %i.kp = sext i32 %.0.i99 to i64
  %i.kq = getelementptr inbounds [16 x i8], ptr %i.jd, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store i32 %i.ko, ptr %i.kr, align 4, !tbaa !77
  br label %bb.az

bb.an:                                            ; preds = %bb.ac
  %i.ks = add i32 %i.jh, -208                     ; 3 uses
  %or.cond7 = icmp ult i32 %i.ks, 3
  br i1 %or.cond7, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.kt = load i64, ptr %i.b, align 8, !tbaa !146
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ku)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit101 unwind label %.loopexit115

_ZN16checked_buffer_t7sget4LLEx.exit101:          ; preds = %bb.ao
  %i.kw = uitofp reassoc nsz arcp contract afn i32 %i.kv to float ; 2 uses
  %i.kx = zext nneg i32 %i.ks to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.kx
  store float %i.kw, ptr %i.ky, align 4, !tbaa !147
  %i.kz = icmp eq i32 %i.ks, 1
  br i1 %i.kz, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit101
  store float %i.kw, ptr %i.jc, align 8, !tbaa !147
  br label %bb.az

bb.aq:                                            ; preds = %bb.an
  switch i32 %i.jh, label %bb.az [
    i32 67, label %bb.ar
    i32 68, label %bb.at
    i32 69, label %bb.av
    i32 70, label %bb.ax
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.la = load i32, ptr %i.e, align 4, !tbaa !77
  %i.lb = load i64, ptr %i.b, align 8, !tbaa !146
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.la, i32 noundef %i.lc)
          to label %bb.as unwind label %.loopexit115

bb.as:                                            ; preds = %bb.ar
  %i.le = fptrunc reassoc nsz arcp contract afn double %i.ld to float
  store float %i.le, ptr %i.ja, align 4, !tbaa !136
  br label %bb.az

bb.at:                                            ; preds = %bb.aq
  %i.lf = load i32, ptr %i.e, align 4, !tbaa !77
  %i.lg = load i64, ptr %i.b, align 8, !tbaa !146
  %i.lh = trunc i64 %i.lg to i32
  %i.li = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.lf, i32 noundef %i.lh)
          to label %bb.au unwind label %.loopexit115

bb.au:                                            ; preds = %bb.at
  %i.lj = fptrunc reassoc nsz arcp contract afn double %i.li to float
  store float %i.lj, ptr %i.iz, align 8, !tbaa !135
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.lk = load i32, ptr %i.e, align 4, !tbaa !77
  %i.ll = load i64, ptr %i.b, align 8, !tbaa !146
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.lk, i32 noundef %i.lm)
          to label %bb.aw unwind label %.loopexit115

bb.aw:                                            ; preds = %bb.av
  %i.lo = fptrunc reassoc nsz arcp contract afn double %i.ln to float
  store float %i.lo, ptr %i.iy, align 8, !tbaa !133
  br label %bb.az

bb.ax:                                            ; preds = %bb.aq
  %i.lp = load i32, ptr %i.e, align 4, !tbaa !77
  %i.lq = load i64, ptr %i.b, align 8, !tbaa !146
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.lp, i32 noundef %i.lr)
          to label %bb.ay unwind label %.loopexit115
end_hunk_1

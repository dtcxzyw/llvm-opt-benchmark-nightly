Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/sony?download=true
inline.NumInlined: 115
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN6LibRaw12parseSonySR2EPhjjj:bb.a
  %i.th = trunc i64 %i.tg to i32
  %i.ti = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.th)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader224.preheader:                          ; preds = %bb.bu
  %i.tj = load i64, ptr %i.e, align 8, !tbaa !130
  %i.tk = trunc i64 %i.tj to i32
  %i.tl = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tk)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188:          ; preds = %.preheader224.preheader
  %i.tm = zext i16 %i.tl to i32
  store i32 %i.tm, ptr %i.bm, align 4, !tbaa !72
  %i.tn = load i64, ptr %i.e, align 8, !tbaa !130
  %i.to = load i32, ptr %i.f, align 4, !tbaa !72
  %i.tp = trunc i64 %i.tn to i32
  %i.tq = add i32 %i.to, %i.tp
  %i.tr = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tq)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188.1:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit188
  %i.ts = zext i16 %i.tr to i32
  store i32 %i.ts, ptr %i.ah, align 8, !tbaa !72
  %i.tt = load i64, ptr %i.e, align 8, !tbaa !130
  %i.tu = load i32, ptr %i.f, align 4, !tbaa !72
  %i.tv = shl i32 %i.tu, 1
  %i.tw = trunc i64 %i.tt to i32
  %i.tx = add i32 %i.tv, %i.tw
  %i.ty = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.tx)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188.2:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit188.1
  %i.tz = zext i16 %i.ty to i32
  store i32 %i.tz, ptr %i.bn, align 8, !tbaa !72
  %i.ua = load i64, ptr %i.e, align 8, !tbaa !130
  %i.ub = load i32, ptr %i.f, align 4, !tbaa !72
  %i.uc = mul i32 %i.ub, 3
  %i.ud = trunc i64 %i.ua to i32
  %i.ue = add i32 %i.uc, %i.ud
  %i.uf = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.ue)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit188.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit188.3:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit188.2
  %i.ug = zext i16 %i.uf to i32
  store i32 %i.ug, ptr %i.bo, align 4, !tbaa !72
  br label %.loopexit225

_ZN16checked_buffer_t7sget2LLEx.exit189:          ; preds = %.preheader229.preheader
  %i.uh = zext i16 %i.ti to i32
  store i32 %i.uh, ptr %i.ah, align 8, !tbaa !72
  %i.ui = load i64, ptr %i.e, align 8, !tbaa !130
  %i.uj = load i32, ptr %i.f, align 4, !tbaa !72
  %i.uk = trunc i64 %i.ui to i32
  %i.ul = add i32 %i.uj, %i.uk
  %i.um = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.ul)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit189.1:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit189
  %i.un = zext i16 %i.um to i32
  store i32 %i.un, ptr %i.bj, align 4, !tbaa !72
  %i.uo = load i64, ptr %i.e, align 8, !tbaa !130
  %i.up = load i32, ptr %i.f, align 4, !tbaa !72
  %i.uq = shl i32 %i.up, 1
  %i.ur = trunc i64 %i.uo to i32
  %i.us = add i32 %i.uq, %i.ur
  %i.ut = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.us)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit189.2:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit189.1
  %i.uu = zext i16 %i.ut to i32
  store i32 %i.uu, ptr %i.bk, align 4, !tbaa !72
  %i.uv = load i64, ptr %i.e, align 8, !tbaa !130
  %i.uw = load i32, ptr %i.f, align 4, !tbaa !72
  %i.ux = mul i32 %i.uw, 3
  %i.uy = trunc i64 %i.uv to i32
  %i.uz = add i32 %i.ux, %i.uy
  %i.va = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.uz)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit189.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN16checked_buffer_t7sget2LLEx.exit189.3:        ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit189.2
  %i.vb = zext i16 %i.va to i32
  store i32 %i.vb, ptr %i.bl, align 8, !tbaa !72
  br label %.loopexit225

.loopexit225:                                     ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit141.2.2, %.preheader.2, %_ZN16checked_buffer_t7sget2LLEx.exit137.3, %_ZN16checked_buffer_t7sget2LLEx.exit135.3, %_ZN16checked_buffer_t7sget2LLEx.exit.3, %_ZN16checked_buffer_t7sget2LLEx.exit189.3, %_ZN16checked_buffer_t7sget2LLEx.exit188.3, %bb.bu, %bb.r, %bb.p, %bb.n, %bb.l, %_ZN16checked_buffer_t7sget2LLEx.exit136.3, %bb.s, %_ZN16checked_buffer_t7sget2LLEx.exit143, %_ZN16checked_buffer_t7sget2LLEx.exit142.2, %_ZNK21libraw_static_table_tixEj.exit187, %_ZNK21libraw_static_table_tixEj.exit174.thread, %bb.ac, %_ZNK21libraw_static_table_tixEj.exit161, %bb.h
  %.1 = phi i32 [ %.0119281, %bb.h ], [ %i.mm, %bb.ac ], [ %.0119281, %_ZNK21libraw_static_table_tixEj.exit161 ], [ %i.qx, %_ZNK21libraw_static_table_tixEj.exit174.thread ], [ %.0119281, %_ZNK21libraw_static_table_tixEj.exit187 ], [ %.0119281, %bb.r ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit135.3 ], [ %.0119281, %bb.bu ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit142.2 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit143 ], [ %.0119281, %bb.s ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit189.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit188.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit137.3 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit136.3 ], [ %.0119281, %bb.l ], [ %.0119281, %bb.n ], [ %.0119281, %bb.p ], [ %.0119281, %.preheader.2 ], [ %.0119281, %_ZN16checked_buffer_t7sget2LLEx.exit141.2.2 ]
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %.loopexit257, label %bb.g, !llvm.loop !187

.loopexit257:                                     ; preds = %.loopexit225, %bb.f, %bb.c
  %i.vc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !128 ; 4 uses
  %.not.i.i.i190 = icmp eq ptr %i.vd, null
  br i1 %.not.i.i.i190, label %_ZN16checked_buffer_tD2Ev.exit191, label %bb.bv

bb.bv:                                            ; preds = %.loopexit257
  %i.ve = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.vd, ptr %i.ve, align 8, !tbaa !129
  %i.vf = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !120
  %i.vh = ptrtoint ptr %i.vg to i64
  %i.vi = ptrtoint ptr %i.vd to i64
  %i.vj = sub i64 %i.vh, %i.vi
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef %i.vj) #18
  br label %_ZN16checked_buffer_tD2Ev.exit191

_ZN16checked_buffer_tD2Ev.exit191:                ; preds = %.loopexit257, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bw

_ZN16checked_buffer_tD2Ev.exit:                   ; preds = %bb.e, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.e ]
  %.0118 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.vk = call ptr @__cxa_begin_catch(ptr %.0118) #17 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN16checked_buffer_tD2Ev.exit191, %_ZN16checked_buffer_tD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
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
  %2 = alloca %class.checked_buffer_t, align 8    ; 30 uses
  %i.g = add i32 %1, -1048576
  %or.cond = icmp ult i32 %i.g, -1048575
  br i1 %or.cond, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 8 uses
  %i.n = sub nsw i64 200896, %i.m                 ; 4 uses
  %i.o = zext nneg i32 %1 to i64                  ; 2 uses
  %i.p = icmp sgt i64 %i.n, %i.o
  %i.q = icmp sgt i64 %i.m, 200896
  %or.cond3 = or i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.bg, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 381728
  %i.t = load i16, ptr %i.s, align 8, !tbaa !110
  invoke void @_ZN16checked_buffer_tC1Esi(ptr noundef nonnull align 8 dereferenceable(48) %2, i16 noundef signext %i.t, i32 noundef %1)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !193
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.o, i64 noundef 1)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ab = trunc nuw nsw i64 %i.n to i32
  %i.ac = invoke noundef zeroext i8 @_ZN16checked_buffer_tixEi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ab)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, %i.n
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

.loopexit115:                                     ; preds = %bb.ab, %bb.ae, %bb.ap, %bb.as, %bb.au, %bb.aw, %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.w, %bb.v, %bb.s
  %lpad.loopexit116 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %._crit_edge, %_ZN6LibRaw12sony_decryptEPjiii.exit, %bb.m, %bb.j, %bb.y, %bb.i, %bb.h, %bb.g, %bb.f
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
  %i.bi = lshr i64 %i.bg, 2                       ; 3 uses
  %i.bj = icmp samesign ult i64 %i.r, %i.bi
  br i1 %i.bj, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !193
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71 ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 544 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 7 uses
  %i.bp = mul i32 %i.ax, 48828125
  %i.bq = add i32 %i.bp, 1                        ; 3 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !72
  %i.br = mul i32 %i.bq, 48828125
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 36
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !72
  %i.bu = mul i32 %i.bs, 48828125
  %i.bv = add i32 %i.bu, 1                        ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !72
  %i.bx = mul i32 %i.bv, 48828125
  %i.by = add i32 %i.bx, 1
  %i.bz = getelementptr i8, ptr %i.bm, i64 44
  %i.ca = xor i32 %i.bv, %i.bq
  %i.cb = call i32 @llvm.fshl.i32(i32 %i.by, i32 %i.ca, i32 1) ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !72
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p
  store i32 0, ptr %i.bn, align 8, !tbaa !79
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !72
  %wide.load153 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !72
  %i.ce = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.cf = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load153)
  store <4 x i32> %i.ce, ptr %i.cc, align 4, !tbaa !72
  store <4 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, 120
  br i1 %i.cg, label %scalar.ph, label %vector.body, !llvm.loop !189

bb.p:                                             ; preds = %bb.q, %bb.o
  %storemerge = phi i32 [ 4, %bb.o ], [ %i.dc, %bb.q ]
  %store_forwarded = phi i32 [ %i.cb, %bb.o ], [ %i.db, %bb.q ]
  %indvars.iv.i = phi i64 [ 4, %bb.o ], [ %indvars.iv.next.i.1, %bb.q ] ; 4 uses
  store i32 %storemerge, ptr %i.bn, align 8, !tbaa !79
  %i.ch = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.i ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -16
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !72
  %i.ck = getelementptr i8, ptr %i.ch, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !72
  %i.cm = xor i32 %i.cl, %i.cj
  %i.cn = getelementptr i8, ptr %i.ch, i64 -12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !72
  %i.cp = xor i32 %store_forwarded, %i.co
  %i.cq = call i32 @llvm.fshl.i32(i32 %i.cm, i32 %i.cp, i32 1) ; 2 uses
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !72
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.cr, ptr %i.bn, align 8, !tbaa !79
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, 126
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv.next.i ; 4 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 -16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !72
  %i.cv = getelementptr i8, ptr %i.cs, i64 -8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72
  %i.cx = xor i32 %i.cw, %i.cu
  %i.cy = getelementptr i8, ptr %i.cs, i64 -12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !72
  %i.da = xor i32 %i.cq, %i.cz
  %i.db = call i32 @llvm.fshl.i32(i32 %i.cx, i32 %i.da, i32 1) ; 2 uses
  store i32 %i.db, ptr %i.cs, align 4, !tbaa !72
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  br label %bb.p

scalar.ph:                                        ; preds = %vector.body
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 512 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !72
  %i.df = call noundef i32 @llvm.bswap.i32(i32 %i.de)
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bm, i64 516 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !72
  %i.di = call noundef i32 @llvm.bswap.i32(i32 %i.dh)
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 520 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !72
  %i.dl = call noundef i32 @llvm.bswap.i32(i32 %i.dk)
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !72
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 524 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !72
  %i.do = call noundef i32 @llvm.bswap.i32(i32 %i.dn)
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !72
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 528 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !72
  %i.dr = call noundef i32 @llvm.bswap.i32(i32 %i.dq)
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !72
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 532 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !72
  %i.du = call noundef i32 @llvm.bswap.i32(i32 %i.dt)
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !72
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 536 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !72
  %i.dx = call noundef i32 @llvm.bswap.i32(i32 %i.dw)
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !72
  store i32 127, ptr %i.bn, align 8, !tbaa !79
  %.not920.i = icmp eq i64 %i.r, %i.bi
  br i1 %.not920.i, label %_ZN6LibRaw12sony_decryptEPjiii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %scalar.ph
  %i.dy = sub nuw nsw i64 %i.r, %i.bi
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %sext = shl i64 %i.bg, 32
  %i.ea = ashr exact i64 %sext, 32
  %i.eb = getelementptr inbounds i8, ptr %i.bk, i64 %i.ea
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ec = phi i32 [ %i.ew, %.lr.ph.i ], [ 127, %.lr.ph.i.preheader ] ; 3 uses
  %.0422.i = phi ptr [ %i.es, %.lr.ph.i ], [ %i.eb, %.lr.ph.i.preheader ] ; 3 uses
  %.0521.i = phi i32 [ %i.ed, %.lr.ph.i ], [ %i.dz, %.lr.ph.i.preheader ]
  %i.ed = add nsw i32 %.0521.i, -1                ; 2 uses
  %i.ee = add i32 %i.ec, 1
  %i.ef = and i32 %i.ee, 127
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !72
  %i.ej = add i32 %i.ec, 65
  %i.ek = and i32 %i.ej, 127
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !72
  %i.eo = xor i32 %i.en, %i.ei                    ; 2 uses
  %i.ep = and i32 %i.ec, 127
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.eq
  store i32 %i.eo, ptr %i.er, align 4, !tbaa !72
  %i.es = getelementptr inbounds nuw i8, ptr %.0422.i, i64 4
  %i.et = load i32, ptr %.0422.i, align 4, !tbaa !72
  %i.eu = xor i32 %i.et, %i.eo
  store i32 %i.eu, ptr %.0422.i, align 4, !tbaa !72
  %i.ev = load i32, ptr %i.bn, align 8, !tbaa !79
  %i.ew = add i32 %i.ev, 1                        ; 2 uses
  store i32 %i.ew, ptr %i.bn, align 8, !tbaa !79
  %.not9.i = icmp eq i32 %i.ed, 0
  br i1 %.not9.i, label %_ZN6LibRaw12sony_decryptEPjiii.exit, label %.lr.ph.i, !llvm.loop !0

_ZN6LibRaw12sony_decryptEPjiii.exit:              ; preds = %.lr.ph.i, %scalar.ph
  %i.ex = trunc i64 %i.bg to i32
  %i.ey = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ex)
          to label %_ZN16checked_buffer_t7sget2LLEx.exit88 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN16checked_buffer_t7sget2LLEx.exit88:           ; preds = %_ZN6LibRaw12sony_decryptEPjiii.exit
  %i.ez = icmp ugt i16 %i.ey, 1000
  br i1 %i.ez, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %_ZN16checked_buffer_t7sget2LLEx.exit88
  %i.fa = add nuw nsw i64 %i.bg, 2                ; 2 uses
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !130
  %.not122 = icmp eq i16 %i.ey, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.fb = trunc i64 %i.m to i32
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %_ZN16checked_buffer_t7sget4LLEx.exit89
  %.in128 = phi i16 [ %i.ey, %.lr.ph ], [ %i.fc, %_ZN16checked_buffer_t7sget4LLEx.exit89 ]
  %.074123 = phi i32 [ 0, %.lr.ph ], [ %.175, %_ZN16checked_buffer_t7sget4LLEx.exit89 ] ; 2 uses
  %i.fc = add nsw i16 %.in128, -1                 ; 2 uses
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !193
  %i.fe = invoke noundef signext i16 @_ZN6LibRaw9tiff_sgetEjPhjPxPjS2_S1_S2_Pi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.fb, ptr noundef %i.fd, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ff = icmp eq i16 %i.fe, 0
  br i1 %i.ff, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.fg = load i32, ptr %i.d, align 4, !tbaa !72
  switch i32 %i.fg, label %_ZN16checked_buffer_t7sget4LLEx.exit89 [
    i32 0, label %bb.v
    i32 1, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.fh = load i64, ptr %i.b, align 8, !tbaa !130
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.fi)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit89 unwind label %.loopexit.split-lp.loopexit

bb.w:                                             ; preds = %bb.u
  %i.fk = load i64, ptr %i.b, align 8, !tbaa !130
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.fl)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit89 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN16checked_buffer_t7sget4LLEx.exit89:           ; preds = %bb.w, %bb.v, %bb.u
  %.175 = phi i32 [ %.074123, %bb.u ], [ %i.fj, %bb.v ], [ %.074123, %bb.w ] ; 2 uses
  %.not = icmp eq i16 %i.fc, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.s, !llvm.loop !190

._crit_edge.loopexit:                             ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit89
  %.pre = load i64, ptr %i.a, align 8, !tbaa !130
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %i.fn = phi i64 [ %i.fa, %bb.r ], [ %.pre, %._crit_edge.loopexit ]
  %.074.lcssa = phi i32 [ 0, %bb.r ], [ %.175, %._crit_edge.loopexit ]
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.fo)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit91 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN16checked_buffer_t7sget4LLEx.exit91:           ; preds = %._crit_edge
  %i.fq = zext i32 %i.fp to i64
  %i.fr = sub nsw i64 %i.fq, %i.m                 ; 5 uses
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit91
  %i.ft = lshr i64 %i.fr, 2                       ; 2 uses
  %i.fu = icmp samesign ult i64 %i.r, %i.ft
  br i1 %i.fu, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fv = load ptr, ptr %i.v, align 8, !tbaa !193
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fr
  %i.fx = sub nuw nsw i64 %i.r, %i.ft
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  call void @_ZN6LibRaw12sony_decryptEPjiii(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.fw, i32 noundef %i.fy, i32 noundef 1, i32 noundef %.074.lcssa)
  %i.fz = trunc i64 %i.fr to i32
  %i.ga = invoke noundef zeroext i16 @_ZN16checked_buffer_t5sget2Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.fz)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.z:                                             ; preds = %bb.y
  %i.gb = icmp ugt i16 %i.ga, 1000
  br i1 %i.gb, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gc = add nuw nsw i64 %i.fr, 2
  store i64 %i.gc, ptr %i.a, align 8, !tbaa !130
  %.not87124 = icmp eq i16 %i.ga, 0
  br i1 %.not87124, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.aa
  %i.gd = trunc i64 %i.m to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1460
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1468
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 187224 ; 6 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph126, %bb.ba
  %.in129 = phi i16 [ %i.ga, %.lr.ph126 ], [ %i.gl, %bb.ba ]
  %i.gl = add nsw i16 %.in129, -1                 ; 2 uses
  %i.gm = invoke noundef i32 @_ZN16checked_buffer_t9tiff_sgetEjPxPjS1_S0_S1_Pi(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.gd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c)
          to label %bb.ac unwind label %.loopexit115

bb.ac:                                            ; preds = %bb.ab
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.go = load i32, ptr %i.d, align 4, !tbaa !72  ; 3 uses
  %i.gp = add i32 %i.go, -192                     ; 2 uses
  %or.cond5 = icmp ult i32 %i.gp, 15
  br i1 %or.cond5, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %.lhs.trunc = trunc nuw nsw i32 %i.gp to i8     ; 2 uses
  %i.gq = udiv i8 %.lhs.trunc, 3                  ; 3 uses
  %i.gr = urem i8 %.lhs.trunc, 3                  ; 2 uses
  %.zext = zext nneg i8 %i.gq to i32              ; 2 uses
  %i.gs = load i64, ptr %i.b, align 8, !tbaa !130
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.gt)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit92 unwind label %.loopexit115

_ZN16checked_buffer_t7sget4LLEx.exit92:           ; preds = %bb.ae
  %i.gv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, i64 8), align 8, !tbaa !133 ; 2 uses
  %i.gw = icmp ugt i32 %i.gv, %.zext
  br i1 %i.gw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit92
  %i.gx = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !134
  %i.gy = zext nneg i8 %i.gq to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !72
  br label %_ZNK21libraw_static_table_tixEj.exit

bb.ag:                                            ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit92
  %.not.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hb = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !134 ; 2 uses
  %.not6.i = icmp eq ptr %i.hb, null
  br i1 %.not6.i, label %_ZNK21libraw_static_table_tixEj.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !72
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i = phi i32 [ %i.ha, %bb.af ], [ %i.hc, %bb.ai ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.hd = sext i32 %.0.i to i64
  %i.he = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.hd
  %i.hf = zext nneg i8 %i.gr to i64               ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hf
  store i32 %i.gu, ptr %i.hg, align 4, !tbaa !72
  %i.hh = icmp eq i8 %i.gr, 1
  br i1 %i.hh, label %bb.aj, label %bb.ba

bb.aj:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, i64 8), align 8, !tbaa !133 ; 2 uses
  %i.hj = icmp ugt i32 %i.hi, %.zext
  br i1 %i.hj, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i93 = icmp eq i32 %i.hi, 0
  br i1 %.not.i93, label %_ZNK21libraw_static_table_tixEj.exit100, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hk = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !134 ; 2 uses
  %.not6.i94 = icmp eq ptr %i.hk, null
  br i1 %.not6.i94, label %_ZNK21libraw_static_table_tixEj.exit100, label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.hl = load ptr, ptr @_ZN6LibRaw16Sony_SRF_wb_listE, align 8, !tbaa !134
  %i.hm = zext nneg i8 %i.gq to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !72 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.hp
  br label %_ZNK21libraw_static_table_tixEj.exit100

bb.an:                                            ; preds = %bb.al
  %i.hr = load i32, ptr %i.hk, align 4, !tbaa !72 ; 2 uses
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.hs
  br label %_ZNK21libraw_static_table_tixEj.exit100

_ZNK21libraw_static_table_tixEj.exit100:          ; preds = %bb.ak, %bb.al, %bb.am, %bb.an
  %.sink = phi ptr [ %i.ht, %bb.an ], [ %i.gk, %bb.al ], [ %i.hq, %bb.am ], [ %i.gk, %bb.ak ]
  %.0.i99 = phi i32 [ %i.hr, %bb.an ], [ 0, %bb.al ], [ %i.ho, %bb.am ], [ 0, %bb.ak ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.hf
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !72
  %i.hw = sext i32 %.0.i99 to i64
  %i.hx = getelementptr inbounds [16 x i8], ptr %i.gk, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  store i32 %i.hv, ptr %i.hy, align 4, !tbaa !72
  br label %bb.ba

bb.ao:                                            ; preds = %bb.ad
  %i.hz = add i32 %i.go, -208                     ; 3 uses
  %or.cond7 = icmp ult i32 %i.hz, 3
  br i1 %or.cond7, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ia = load i64, ptr %i.b, align 8, !tbaa !130
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = invoke noundef i32 @_ZN16checked_buffer_t5sget4Ei(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ib)
          to label %_ZN16checked_buffer_t7sget4LLEx.exit101 unwind label %.loopexit115

_ZN16checked_buffer_t7sget4LLEx.exit101:          ; preds = %bb.ap
  %i.id = uitofp i32 %i.ic to float               ; 2 uses
  %i.ie = zext nneg i32 %i.hz to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ie
  store float %i.id, ptr %i.if, align 4, !tbaa !131
  %i.ig = icmp eq i32 %i.hz, 1
  br i1 %i.ig, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %_ZN16checked_buffer_t7sget4LLEx.exit101
  store float %i.id, ptr %i.gj, align 8, !tbaa !131
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ao
  switch i32 %i.go, label %bb.ba [
    i32 67, label %bb.as
    i32 68, label %bb.au
    i32 69, label %bb.aw
    i32 70, label %bb.ay
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ih = load i32, ptr %i.e, align 4, !tbaa !72
  %i.ii = load i64, ptr %i.b, align 8, !tbaa !130
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ih, i32 noundef %i.ij)
          to label %bb.at unwind label %.loopexit115

bb.at:                                            ; preds = %bb.as
  %i.il = fptrunc double %i.ik to float
  store float %i.il, ptr %i.gh, align 4, !tbaa !124
  br label %bb.ba

bb.au:                                            ; preds = %bb.ar
  %i.im = load i32, ptr %i.e, align 4, !tbaa !72
  %i.in = load i64, ptr %i.b, align 8, !tbaa !130
  %i.io = trunc i64 %i.in to i32
  %i.ip = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.im, i32 noundef %i.io)
          to label %bb.av unwind label %.loopexit115

bb.av:                                            ; preds = %bb.au
  %i.iq = fptrunc double %i.ip to float
  store float %i.iq, ptr %i.gg, align 8, !tbaa !123
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.ir = load i32, ptr %i.e, align 4, !tbaa !72
  %i.is = load i64, ptr %i.b, align 8, !tbaa !130
  %i.it = trunc i64 %i.is to i32
  %i.iu = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.ir, i32 noundef %i.it)
          to label %bb.ax unwind label %.loopexit115

bb.ax:                                            ; preds = %bb.aw
  %i.iv = fptrunc double %i.iu to float
  store float %i.iv, ptr %i.gf, align 8, !tbaa !121
  br label %bb.ba

bb.ay:                                            ; preds = %bb.ar
  %i.iw = load i32, ptr %i.e, align 4, !tbaa !72
  %i.ix = load i64, ptr %i.b, align 8, !tbaa !130
  %i.iy = trunc i64 %i.ix to i32
  %i.iz = invoke noundef double @_ZN16checked_buffer_t8sgetrealEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.iw, i32 noundef %i.iy)
          to label %bb.az unwind label %.loopexit115
end_hunk_0

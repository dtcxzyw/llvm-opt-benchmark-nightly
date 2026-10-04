Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/translation?download=true
inline.NumInlined: 1960
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12Translations9unescapeCERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE:bb.a

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i240: ; preds = %bb.ap
  %i.hk = icmp ult i64 %i.hg, 4
  call void @llvm.assume(i1 %i.hk)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i238

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i237: ; preds = %bb.ap
  %i.hl = load i64, ptr %i.r, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i238

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i238: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i237, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i240
  %i.hm = phi i64 [ %i.hl, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i237 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i240 ]
  %i.hn = icmp ugt i64 %i.hh, %i.hm
  br i1 %i.hn, label %bb.aq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit242

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i238
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.hg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc241 unwind label %.loopexit576

.noexc241:                                        ; preds = %bb.aq
  %.pre.i239 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit242

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit242: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i238, %.noexc241
  %i.ho = phi ptr [ %.pre.i239, %.noexc241 ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i238 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hg
  store i32 39, ptr %i.hp, align 4, !tbaa !56
  store i64 %i.hh, ptr %i.s, align 8, !tbaa !53
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hh
  store i32 0, ptr %i.hq, align 4, !tbaa !56
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit457

bb.ar:                                            ; preds = %bb.w
  %i.hr = load i64, ptr %i.s, align 8, !tbaa !53  ; 4 uses
  %i.hs = add i64 %i.hr, 1                        ; 3 uses
  %i.ht = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.r
  br i1 %i.hu, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i246, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i246: ; preds = %bb.ar
  %i.hv = icmp ult i64 %i.hr, 4
  call void @llvm.assume(i1 %i.hv)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i244

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i243: ; preds = %bb.ar
  %i.hw = load i64, ptr %i.r, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i244

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i244: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i243, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i246
  %i.hx = phi i64 [ %i.hw, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i243 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i246 ]
  %i.hy = icmp ugt i64 %i.hs, %i.hx
  br i1 %i.hy, label %bb.as, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit248

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i244
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.hr, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc247 unwind label %.loopexit576

.noexc247:                                        ; preds = %bb.as
  %.pre.i245 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit248

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit248: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i244, %.noexc247
  %i.hz = phi ptr [ %.pre.i245, %.noexc247 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i244 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hr
  store i32 34, ptr %i.ia, align 4, !tbaa !56
  store i64 %i.hs, ptr %i.s, align 8, !tbaa !53
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hs
  store i32 0, ptr %i.ib, align 4, !tbaa !56
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit457

bb.at:                                            ; preds = %bb.w
  %i.ic = load i64, ptr %i.s, align 8, !tbaa !53  ; 4 uses
  %i.id = add i64 %i.ic, 1                        ; 3 uses
  %i.ie = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.r
  br i1 %i.if, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i252, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i249

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i252: ; preds = %bb.at
  %i.ig = icmp ult i64 %i.ic, 4
  call void @llvm.assume(i1 %i.ig)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i250

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i249: ; preds = %bb.at
  %i.ih = load i64, ptr %i.r, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i250

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i250: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i249, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i252
  %i.ii = phi i64 [ %i.ih, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i249 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i252 ]
  %i.ij = icmp ugt i64 %i.id, %i.ii
  br i1 %i.ij, label %bb.au, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit254

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i250
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ic, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc253 unwind label %.loopexit576

.noexc253:                                        ; preds = %bb.au
  %.pre.i251 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit254

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit254: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i250, %.noexc253
  %i.ik = phi ptr [ %.pre.i251, %.noexc253 ], [ %i.ie, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i250 ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.ic
  store i32 63, ptr %i.il, align 4, !tbaa !56
  store i64 %i.id, ptr %i.s, align 8, !tbaa !53
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.id
  store i32 0, ptr %i.im, align 4, !tbaa !56
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit457

bb.av:                                            ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.in = icmp ult i64 %i.bc, %i.ak
  br i1 %i.in, label %bb.aw, label %.critedge.thread

bb.aw:                                            ; preds = %bb.av
  %i.io = add nsw i32 %i.dk, -48                  ; 3 uses
  %i.ip = add nuw i64 %.0707, 2                   ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.ak
  br i1 %i.iq, label %bb.ax, label %.critedge.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ip
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !56 ; 2 uses
  %i.it = and i32 %i.is, -8
  %or.cond575.1 = icmp eq i32 %i.it, 48
  br i1 %or.cond575.1, label %bb.ay, label %.critedge.thread

bb.ay:                                            ; preds = %bb.ax
  %i.iu = shl nuw nsw i32 %i.io, 3
  %i.iv = add nsw i32 %i.is, -48
  %i.iw = or disjoint i32 %i.iv, %i.iu            ; 3 uses
  %i.ix = add nuw i64 %.0707, 3                   ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.ak
  br i1 %i.iy, label %bb.az, label %.critedge.thread

bb.az:                                            ; preds = %bb.ay
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ix
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !56 ; 2 uses
  %i.jb = and i32 %i.ja, -8
  %or.cond575.2 = icmp eq i32 %i.jb, 48
  br i1 %or.cond575.2, label %.critedge, label %.critedge.thread

.critedge:                                        ; preds = %bb.az
  %i.jc = shl nuw nsw i32 %i.iw, 3
  %i.jd = add nsw i32 %i.ja, -48
  %i.je = or disjoint i32 %i.jd, %i.jc            ; 2 uses
  %i.jf = icmp samesign ult i32 %i.je, 256
  br i1 %i.jf, label %.critedge.thread, label %bb.bc

.critedge.thread:                                 ; preds = %bb.ay, %bb.az, %bb.ax, %bb.aw, %bb.av, %.critedge
  %.0130.lcssa873 = phi i64 [ 3, %.critedge ], [ 2, %bb.ay ], [ 2, %bb.az ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 0, %bb.av ]
  %.0131.lcssa871 = phi i32 [ %i.je, %.critedge ], [ %i.iw, %bb.ay ], [ %i.iw, %bb.az ], [ %i.io, %bb.ax ], [ %i.io, %bb.aw ], [ 0, %bb.av ]
  %i.jg = load i64, ptr %i.s, align 8, !tbaa !53  ; 4 uses
  %i.jh = add i64 %i.jg, 1                        ; 3 uses
  %i.ji = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.r
  br i1 %i.jj, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i258, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i258: ; preds = %.critedge.thread
  %i.jk = icmp ult i64 %i.jg, 4
  call void @llvm.assume(i1 %i.jk)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i256

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255: ; preds = %.critedge.thread
  %i.jl = load i64, ptr %i.r, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i256

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i256: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i258
  %i.jm = phi i64 [ %i.jl, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i255 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i258 ]
  %i.jn = icmp ugt i64 %i.jh, %i.jm
  br i1 %i.jn, label %bb.ba, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit260

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i256
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.jg, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc259 unwind label %bb.bb

.noexc259:                                        ; preds = %bb.ba
  %.pre.i257 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit260

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit260: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i256, %.noexc259
  %i.jo = phi ptr [ %.pre.i257, %.noexc259 ], [ %i.ji, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i256 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jg
  store i32 %.0131.lcssa871, ptr %i.jp, align 4, !tbaa !56
  store i64 %i.jh, ptr %i.s, align 8, !tbaa !53
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jh
  store i32 0, ptr %i.jq, align 4, !tbaa !56
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit260, %.critedge
  %.0130.lcssa872 = phi i64 [ %.0130.lcssa873, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit260 ], [ 3, %.critedge ]
  %i.js = add i64 %.0130.lcssa872, %i.bc
  br label %.backedge

bb.bd:                                            ; preds = %bb.w
  %i.jt = add i64 %.0707, 2                       ; 5 uses
  %.not161 = icmp ult i64 %i.jt, %i.ak
  br i1 %.not161, label %.lr.ph, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i368, label %_ZTW11errorstream.exit262, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit262

_ZTW11errorstream.exit262:                        ; preds = %bb.be, %bb.bf
  %i.ju = load ptr, ptr %i.v, align 8, !tbaa !84, !nonnull !85, !align !86 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !88
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = invoke noundef zeroext i1 %i.jw(ptr noundef nonnull align 8 dereferenceable(8) %i.ju)
          to label %.noexc264 unwind label %.loopexit576, !inline_history !232

.noexc264:                                        ; preds = %_ZTW11errorstream.exit262
  %.v.i263 = select i1 %i.jx, i64 976, i64 984
  %i.jy = getelementptr inbounds nuw i8, ptr %i.v, i64 %.v.i263 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @.str.14, ptr %i.o, align 8, !tbaa !89
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.bg unwind label %.loopexit576 ; 0 uses

bb.bg:                                            ; preds = %.noexc264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ka = load ptr, ptr %2, align 8, !tbaa !46
  %i.kb = load i64, ptr %i.t, align 8, !tbaa !53
  invoke void @_Z12wide_to_utf8B5cxx11St17basic_string_viewIwSt11char_traitsIwEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.37") align 8 %4, i64 %i.kb, ptr %i.ka)
          to label %bb.bh unwind label %bb.bs

bb.bh:                                            ; preds = %bb.bg
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !90 ; 5 uses
  %.not.i269 = icmp eq ptr %i.kc, null
  br i1 %.not.i269, label %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit273, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !88
  %i.ke = getelementptr i8, ptr %i.kd, i64 -24
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds i8, ptr %i.kc, i64 %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !97
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.kc)
          to label %.noexc271 unwind label %.loopexit607

.noexc271:                                        ; preds = %bb.bj
  %.pre.i270 = load ptr, ptr %i.jy, align 8, !tbaa !90
  br label %bb.bk

bb.bk:                                            ; preds = %.noexc271, %bb.bi
  %i.kk = phi ptr [ %.pre.i270, %.noexc271 ], [ %i.kc, %bb.bi ]
  %i.kl = load ptr, ptr %4, align 8, !tbaa !124
  %i.km = load i64, ptr %i.ai, align 8, !tbaa !123
  %i.kn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef %i.kl, i64 noundef %i.km)
          to label %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit273 unwind label %.loopexit607 ; 0 uses

_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit273: ; preds = %bb.bh, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @.str.11, ptr %i.n, align 8, !tbaa !89
  %i.ko = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.bl unwind label %.loopexit607 ; 2 uses

bb.bl:                                            ; preds = %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !90 ; 5 uses
  %.not.i276 = icmp eq ptr %i.kp, null
  br i1 %.not.i276, label %_ZN11StreamProxylsEPFRSoS0_E.exit280, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !88
  %i.kr = getelementptr i8, ptr %i.kq, i64 -24
  %i.ks = load i64, ptr %i.kr, align 8            ; 2 uses
  %i.kt = getelementptr inbounds i8, ptr %i.kp, i64 %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !97
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.kp)
          to label %.noexc278 unwind label %.loopexit607

.noexc278:                                        ; preds = %bb.bn
  %.pre.i277 = load ptr, ptr %i.ko, align 8, !tbaa !90 ; 2 uses
  %.pre755 = load ptr, ptr %.pre.i277, align 8, !tbaa !88
  %.phi.trans.insert756 = getelementptr i8, ptr %.pre755, i64 -24
  %.pre757 = load i64, ptr %.phi.trans.insert756, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc278, %bb.bm
  %i.kx = phi i64 [ %.pre757, %.noexc278 ], [ %i.ks, %bb.bm ]
  %i.ky = phi ptr [ %.pre.i277, %.noexc278 ], [ %i.kp, %bb.bm ] ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kx
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 240
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !104 ; 6 uses
  %.not.i.i.i466 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i466, label %bb.bp, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc471 unwind label %.loopexit.split-lp608

.noexc471:                                        ; preds = %bb.bp
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467: ; preds = %bb.bo
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !110
  %.not.i1.i.i468 = icmp eq i8 %i.ld, 0
  br i1 %.not.i1.i.i468, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 67
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !31
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469

bb.br:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i467
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.lb)
          to label %.noexc472 unwind label %.loopexit607

.noexc472:                                        ; preds = %bb.br
  %i.lg = load ptr, ptr %i.lb, align 8, !tbaa !88
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 48
  %i.li = load ptr, ptr %i.lh, align 8
  %i.lj = invoke noundef signext i8 %i.li(ptr noundef nonnull align 8 dereferenceable(570) %i.lb, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469 unwind label %.loopexit607, !inline_history !5

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469: ; preds = %.noexc472, %bb.bq
  %.0.i.i.i470 = phi i8 [ %i.lf, %bb.bq ], [ %i.lj, %.noexc472 ]
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, i8 noundef signext %.0.i.i.i470)
          to label %.noexc474 unwind label %.loopexit607

.noexc474:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lk)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit280 unwind label %.loopexit607 ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit280:             ; preds = %bb.bl, %.noexc474
  %i.lm = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.aj
  br i1 %i.ln, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281: ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit280
  %i.lo = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #24
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bg
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

.loopexit607:                                     ; preds = %bb.bj, %bb.bk, %_ZN11StreamProxylsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit273, %bb.bn, %bb.br, %.noexc472, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i469, %.noexc474
  %lpad.loopexit609 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

.loopexit.split-lp608:                            ; preds = %bb.bp
  %lpad.loopexit.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp608, %.loopexit607
  %lpad.phi611 = phi { ptr, i32 } [ %lpad.loopexit609, %.loopexit607 ], [ %lpad.loopexit.split-lp610, %.loopexit.split-lp608 ] ; 2 uses
  %i.lr = load ptr, ptr %4, align 8, !tbaa !124   ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.aj
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.bt
  %i.lt = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284, %bb.bs
  %.pn162 = phi { ptr, i32 } [ %i.lq, %bb.bs ], [ %lpad.phi611, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284 ], [ %lpad.phi611, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.it

bb.bu:                                            ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit280, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre758 = load i64, ptr %i.t, align 8, !tbaa !53 ; 2 uses
  %i.lv = icmp ult i64 %i.jt, %.pre758
  br i1 %i.lv, label %.lr.ph, label %.critedge3.thread

.lr.ph:                                           ; preds = %bb.bd, %bb.bu
  %11 = phi i64 [ %.pre758, %bb.bu ], [ %i.ak, %bb.bd ] ; 2 uses
  %i.lw = load ptr, ptr %2, align 8, !tbaa !46
  %i.lx = add i64 %11, -2
  %i.ly = sub i64 %i.lx, %.0707                   ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph, %bb.ca
  %.0139698 = phi i32 [ 0, %.lr.ph ], [ %i.mk, %bb.ca ] ; 2 uses
  %.0140697 = phi i64 [ 0, %.lr.ph ], [ %i.ml, %bb.ca ] ; 3 uses
  %i.lz = add nuw i64 %.0140697, %i.jt            ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !56
  %i.mc = trunc i32 %i.mb to i8                   ; 5 uses
  %i.md = add i8 %i.mc, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.md, 10
  br i1 %or.cond.i, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.me = add i8 %i.mc, -65
  %or.cond5.i = icmp ult i8 %i.me, 6
  br i1 %or.cond5.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.mf = add nsw i8 %i.mc, -55
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.mg = add i8 %i.mc, -97
  %or.cond8.i = icmp ult i8 %i.mg, 6
  br i1 %or.cond8.i, label %bb.bz, label %.critedge3

bb.bz:                                            ; preds = %bb.by
  %i.mh = add nsw i8 %i.mc, -87
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx, %bb.bv
  %.1548.ph = phi i8 [ %i.md, %bb.bv ], [ %i.mh, %bb.bz ], [ %i.mf, %bb.bx ]
  %i.mi = shl i32 %.0139698, 4
  %i.mj = zext nneg i8 %.1548.ph to i32
  %i.mk = add nuw i32 %i.mi, %i.mj                ; 2 uses
  %i.ml = add i64 %.0140697, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ml, %i.ly
  br i1 %exitcond.not, label %.critedge3, label %bb.bv, !llvm.loop !233

.loopexit612:                                     ; preds = %_ZTW11errorstream.exit288, %.noexc290, %bb.ce, %bb.cl, %bb.ci, %.noexc483, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480, %.noexc485
  %lpad.loopexit614 = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

.loopexit.split-lp613:                            ; preds = %bb.cg
  %lpad.loopexit.split-lp615 = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

.critedge3:                                       ; preds = %bb.ca, %bb.by
  %.0140.lcssa.ph = phi i64 [ %i.ly, %bb.ca ], [ %.0140697, %bb.by ]
  %.0139.lcssa.ph = phi i32 [ %i.mk, %bb.ca ], [ %.0139698, %bb.by ] ; 3 uses
  %.lcssa.ph = phi i64 [ %11, %bb.ca ], [ %i.lz, %bb.by ] ; 2 uses
  %i.mm = icmp eq i64 %.0140.lcssa.ph, 0
  br i1 %i.mm, label %.critedge3.thread, label %bb.cj

.critedge3.thread:                                ; preds = %bb.bu, %.critedge3
  br i1 %.not.i368, label %_ZTW11errorstream.exit288, label %bb.cb

bb.cb:                                            ; preds = %.critedge3.thread
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit288

_ZTW11errorstream.exit288:                        ; preds = %.critedge3.thread, %bb.cb
  %i.mn = load ptr, ptr %i.v, align 8, !tbaa !84, !nonnull !85, !align !86 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !88
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = invoke noundef zeroext i1 %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %i.mn)
          to label %.noexc290 unwind label %.loopexit612, !inline_history !7

.noexc290:                                        ; preds = %_ZTW11errorstream.exit288
  %.v.i289 = select i1 %i.mq, i64 976, i64 984
  %i.mr = getelementptr inbounds nuw i8, ptr %i.v, i64 %.v.i289 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @.str.15, ptr %i.m, align 8, !tbaa !89
  %i.ms = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.cc unwind label %.loopexit612 ; 0 uses

bb.cc:                                            ; preds = %.noexc290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !90 ; 5 uses
  %.not.i292 = icmp eq ptr %i.mt, null
  br i1 %.not.i292, label %.backedge, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !88
  %i.mv = getelementptr i8, ptr %i.mu, i64 -24
  %i.mw = load i64, ptr %i.mv, align 8            ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %i.mt, i64 %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !97
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.mt)
          to label %.noexc294 unwind label %.loopexit612

.noexc294:                                        ; preds = %bb.ce
  %.pre.i293 = load ptr, ptr %i.mr, align 8, !tbaa !90 ; 2 uses
  %.pre759 = load ptr, ptr %.pre.i293, align 8, !tbaa !88
  %.phi.trans.insert760 = getelementptr i8, ptr %.pre759, i64 -24
  %.pre761 = load i64, ptr %.phi.trans.insert760, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc294, %bb.cd
  %i.nb = phi i64 [ %.pre761, %.noexc294 ], [ %i.mw, %bb.cd ]
  %i.nc = phi ptr [ %.pre.i293, %.noexc294 ], [ %i.mt, %bb.cd ] ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 %i.nb
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 240
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !104 ; 6 uses
  %.not.i.i.i477 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i477, label %bb.cg, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt16__throw_bad_castv() #26
          to label %.noexc482 unwind label %.loopexit.split-lp613

.noexc482:                                        ; preds = %bb.cg
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478: ; preds = %bb.cf
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 56
  %i.nh = load i8, ptr %i.ng, align 8, !tbaa !110
  %.not.i1.i.i479 = icmp eq i8 %i.nh, 0
  br i1 %.not.i1.i.i479, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 67
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !31
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480

bb.ci:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i478
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.nf)
          to label %.noexc483 unwind label %.loopexit612

.noexc483:                                        ; preds = %bb.ci
  %i.nk = load ptr, ptr %i.nf, align 8, !tbaa !88
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = load ptr, ptr %i.nl, align 8
  %i.nn = invoke noundef signext i8 %i.nm(ptr noundef nonnull align 8 dereferenceable(570) %i.nf, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480 unwind label %.loopexit612, !inline_history !5

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480: ; preds = %.noexc483, %bb.ch
  %.0.i.i.i481 = phi i8 [ %i.nj, %bb.ch ], [ %i.nn, %.noexc483 ]
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, i8 noundef signext %.0.i.i.i481)
          to label %.noexc485 unwind label %.loopexit612

.noexc485:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i480
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.no)
          to label %.backedge unwind label %.loopexit612 ; 0 uses

bb.cj:                                            ; preds = %.critedge3
  %i.nq = icmp ult i32 %.0139.lcssa.ph, 55296
  %i.nr = and i32 %.0139.lcssa.ph, -8192
  %or.cond = icmp eq i32 %i.nr, 57344
  %or.cond168 = or i1 %i.nq, %or.cond
  br i1 %or.cond168, label %bb.ck, label %.backedge, !llvm.loop !231

bb.ck:                                            ; preds = %bb.cj
  %i.ns = load i64, ptr %i.s, align 8, !tbaa !53  ; 4 uses
  %i.nt = add i64 %i.ns, 1                        ; 3 uses
  %i.nu = load ptr, ptr %0, align 8, !tbaa !46    ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.r
  br i1 %i.nv, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i300, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i300: ; preds = %bb.ck
  %i.nw = icmp ult i64 %i.ns, 4
  call void @llvm.assume(i1 %i.nw)
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i298

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i297: ; preds = %bb.ck
  %i.nx = load i64, ptr %i.r, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i298

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i298: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i297, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i300
  %i.ny = phi i64 [ %i.nx, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i297 ], [ 3, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i300 ]
  %i.nz = icmp ugt i64 %i.nt, %i.ny
  br i1 %i.nz, label %bb.cl, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit302

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i298
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_mutateEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ns, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc301 unwind label %.loopexit612

.noexc301:                                        ; preds = %bb.cl
  %.pre.i299 = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit302

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9push_backEw.exit302: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i298, %.noexc301
  %i.oa = phi ptr [ %.pre.i299, %.noexc301 ], [ %i.nu, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8capacityEv.exit.i298 ] ; 2 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.ns
  store i32 %.0139.lcssa.ph, ptr %i.ob, align 4, !tbaa !56
  store i64 %i.nt, ptr %i.s, align 8, !tbaa !53
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nt
  store i32 0, ptr %i.oc, align 4, !tbaa !56
  br label %.backedge
end_hunk_0

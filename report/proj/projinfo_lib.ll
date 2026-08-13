inline.NumInlined: 3854
inline.NumDeleted: 1141
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctx:bb.a
  %i.je = icmp eq ptr %i.jd, %i.jb
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %bb.av
  %i.jf = load i64, ptr %i.jb, align 8, !tbaa !40
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.jh = load ptr, ptr %10, align 8, !tbaa !102
  invoke void @_ZNK5osgeo4proj2io15DatabaseContext14getAuthoritiesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::set.153") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.jh)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !111 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.not615698 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not615698, label %._crit_edge702, label %.lr.ph701

._crit_edge702:                                   ; preds = %.lr.ph701, %bb.aw
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %putchar292 = call i32 @putchar(i32 10)         ; 0 uses
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ax:                                            ; preds = %bb.au
  %i.jl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.jm = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.jb
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.ax
  %i.jo = load i64, ptr %i.jb, align 8, !tbaa !40
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %bb.az

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  %i.jq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io15DatabaseContextEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  br label %bb.az

.lr.ph701:                                        ; preds = %bb.aw, %.lr.ph701
  %.sroa.0570.0699 = phi ptr [ %i.ju, %.lr.ph701 ], [ %i.jj, %bb.aw ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0570.0699, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !39
  %i.jt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %i.js) ; 0 uses
  %i.ju = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0570.0699) #33 ; 2 uses
  %.not615 = icmp eq ptr %i.ju, %i.jk
  br i1 %.not615, label %._crit_edge702, label %.lr.ph701

bb.az:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %.pn290 = phi { ptr, i32 } [ %i.jq, %bb.ay ], [ %i.jl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377 ] ; 3 uses
  %.2184 = extractvalue { ptr, i32 } %.pn290, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.jv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.jw = icmp eq i32 %.2184, %i.jv
  br i1 %i.jw, label %bb.ba, label %bb.gk

bb.ba:                                            ; preds = %bb.az
  %.2170 = extractvalue { ptr, i32 } %.pn290, 0
  %i.jx = call ptr @__cxa_begin_catch(ptr %.2170) #31 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.bb:                                            ; preds = %bb.as
  %i.jy = load i8, ptr %i.iv, align 1, !tbaa !40
  %i.jz = icmp eq i8 %i.jy, 45
  br i1 %i.jz, label %.preheader, label %bb.bg

.preheader:                                       ; preds = %bb.bb
  %i.ka = icmp eq i64 %i.ev, 0
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread598
  %.0221.idx695 = phi i64 [ 0, %.preheader ], [ %.0221.add, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread598 ] ; 2 uses
  %.0221.ptr = getelementptr inbounds nuw i8, ptr @__const._ZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctx.knownOptions, i64 %.0221.idx695
  %i.kb = load ptr, ptr %.0221.ptr, align 8, !tbaa !33 ; 2 uses
  %i.kc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kb) #31
  %i.kd = icmp eq i64 %i.ev, %i.kc
  br i1 %i.kd, label %bb.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread598

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.ka, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.bd
  %bcmp.i378 = call i32 @bcmp(ptr nonnull %i.iv, ptr nonnull %i.kb, i64 %i.ev)
  %i.ke = icmp eq i32 %bcmp.i378, 0
  br i1 %i.ke, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread598

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread598: ; preds = %bb.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.0221.add = add nuw nsw i64 %.0221.idx695, 8   ; 2 uses
  %.not286 = icmp eq i64 %.0221.add, 248
  br i1 %.not286, label %.critedge, label %bb.bc

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread598
  %i.kf = trunc nuw i8 %.3165 to i1
  br i1 %i.kf, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.critedge
  %putchar289 = call i32 @putchar(i32 32)         ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.critedge
  %i.kg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.2) ; 0 uses
  %putchar289.1 = call i32 @putchar(i32 32)       ; 0 uses
  %i.kh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.59) ; 0 uses
  %putchar289.2 = call i32 @putchar(i32 32)       ; 0 uses
  %i.ki = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.77) ; 0 uses
  %putchar289.3 = call i32 @putchar(i32 32)       ; 0 uses
  %i.kj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.73) ; 0 uses
  %putchar289.4 = call i32 @putchar(i32 32)       ; 0 uses
  %i.kk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.58) ; 0 uses
  %putchar289.5 = call i32 @putchar(i32 32)       ; 0 uses
  %i.kl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.55) ; 0 uses
  %putchar289.6 = call i32 @putchar(i32 32)       ; 0 uses
  %i.km = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.80) ; 0 uses
  %putchar289.7 = call i32 @putchar(i32 32)       ; 0 uses
  %i.kn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.84) ; 0 uses
  %putchar289.8 = call i32 @putchar(i32 32)       ; 0 uses
  %i.ko = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.90) ; 0 uses
  %putchar289.9 = call i32 @putchar(i32 32)       ; 0 uses
  %i.kp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.96) ; 0 uses
  %putchar289.10 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.105) ; 0 uses
  %putchar289.11 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.108) ; 0 uses
  %putchar289.12 = call i32 @putchar(i32 32)      ; 0 uses
  %i.ks = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.56) ; 0 uses
  %putchar289.13 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.107) ; 0 uses
  %putchar289.14 = call i32 @putchar(i32 32)      ; 0 uses
  %i.ku = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.78) ; 0 uses
  %putchar289.15 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.103) ; 0 uses
  %putchar289.16 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.100) ; 0 uses
  %putchar289.17 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.101) ; 0 uses
  %putchar289.18 = call i32 @putchar(i32 32)      ; 0 uses
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.104) ; 0 uses
  %putchar289.19 = call i32 @putchar(i32 32)      ; 0 uses
  %i.kz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.109) ; 0 uses
  %putchar289.20 = call i32 @putchar(i32 32)      ; 0 uses
  %i.la = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.111) ; 0 uses
  %putchar289.21 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.75) ; 0 uses
  %putchar289.22 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.76) ; 0 uses
  %putchar289.23 = call i32 @putchar(i32 32)      ; 0 uses
  %i.ld = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.115) ; 0 uses
  %putchar289.24 = call i32 @putchar(i32 32)      ; 0 uses
  %i.le = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.116) ; 0 uses
  %putchar289.25 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.114) ; 0 uses
  %putchar289.26 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.113) ; 0 uses
  %putchar289.27 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.67) ; 0 uses
  %putchar289.28 = call i32 @putchar(i32 32)      ; 0 uses
  %i.li = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.69) ; 0 uses
  %putchar289.29 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.70) ; 0 uses
  %putchar289.30 = call i32 @putchar(i32 32)      ; 0 uses
  %i.lk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef nonnull @.str.72) ; 0 uses
  %putchar288 = call i32 @putchar(i32 10)         ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.bg:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.et)
  %i.ll = load ptr, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  %i.lm = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %.not235659 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not235659, label %.loopexit619, label %.lr.ph662.preheader

.lr.ph662.preheader:                              ; preds = %bb.bg
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = ashr exact i64 %i.lp, 5
  br label %.lr.ph662

.lr.ph662:                                        ; preds = %.lr.ph662.preheader, %bb.bp
  %.0223660 = phi i64 [ %i.lr, %bb.bp ], [ %i.lq, %.lr.ph662.preheader ] ; 3 uses
  %i.lr = add i64 %.0223660, -1                   ; 3 uses
  %i.ls = getelementptr inbounds nuw [32 x i8], ptr %i.lm, i64 %i.lr ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !44 ; 2 uses
  %i.lv = icmp ugt i64 %i.lu, 1
  br i1 %i.lv, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %.lr.ph662
  %i.lw = load ptr, ptr %i.ls, align 8, !tbaa !39 ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 %i.lu
  %i.ly = getelementptr i8, ptr %i.lx, i64 -1
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !40
  %i.ma = icmp eq i8 %i.lz, 34
  br i1 %i.ma, label %.loopexit619, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mb = load i8, ptr %i.lw, align 1, !tbaa !40
  %i.mc = icmp eq i8 %i.mb, 34
  br i1 %i.mc, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ls, i64 noundef 1, i64 noundef -1)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.md = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15) #31 ; 0 uses
  %i.me = load ptr, ptr %15, align 8, !tbaa !39   ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.mg = icmp eq ptr %i.me, %i.mf
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %bb.bk
  %i.mh = load i64, ptr %i.mf, align 8, !tbaa !40
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %i.mj = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.mk = load ptr, ptr %0, align 8, !tbaa !34
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = ashr exact i64 %i.mn, 5
  %i.mp = icmp ult i64 %.0223660, %i.mo
  br i1 %i.mp, label %.lr.ph665, label %.loopexit619

.lr.ph665:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %bb.bm
  %.1224664 = phi i64 [ %i.mu, %bb.bm ], [ %.0223660, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ] ; 2 uses
  %i.mq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.192)
          to label %bb.bl unwind label %bb.bo     ; 0 uses

bb.bl:                                            ; preds = %.lr.ph665
  %i.mr = load ptr, ptr %0, align 8, !tbaa !34
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr %i.mr, i64 %.1224664
  %i.mt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.ms)
          to label %bb.bm unwind label %bb.bo     ; 0 uses

bb.bm:                                            ; preds = %bb.bl
  %i.mu = add nuw i64 %.1224664, 1                ; 2 uses
  %i.mv = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.mw = load ptr, ptr %0, align 8, !tbaa !34
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = ashr exact i64 %i.mz, 5
  %i.nb = icmp ult i64 %i.mu, %i.na
  br i1 %i.nb, label %.lr.ph665, label %.loopexit619, !llvm.loop !229

bb.bn:                                            ; preds = %bb.bj
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.gj

bb.bo:                                            ; preds = %bb.bl, %.lr.ph665
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.bp:                                            ; preds = %.lr.ph662, %bb.bi
  %.not235 = icmp eq i64 %i.lr, 0
  br i1 %.not235, label %.loopexit619, label %.lr.ph662, !llvm.loop !230

.loopexit619:                                     ; preds = %bb.bp, %bb.bh, %bb.bm, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.ne = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ne, ptr %17, align 8, !tbaa !43
  %i.nf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.nf, align 8, !tbaa !44
  store i8 0, ptr %i.ne, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN5osgeo4proj2io15DatabaseContext6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EEP6pj_ctx(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef %1)
          to label %bb.bq unwind label %bb.by

bb.bq:                                            ; preds = %.loopexit619
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.ng = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.nh = icmp eq ptr %i.ng, %i.ne
  br i1 %i.nh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.bq
  %i.ni = load i64, ptr %i.ne, align 8, !tbaa !40
  %i.nj = add i64 %i.ni, 1
  call void @_ZdlPvm(ptr noundef %i.ng, i64 noundef %i.nj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.nk = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 -32
  %i.nm = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.nl, i8 noundef signext 58, i64 noundef 0) #31 ; 3 uses
  %.not238 = icmp eq i64 %i.nm, -1
  br i1 %.not238, label %bb.cz, label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.nn = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 -32
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %i.no, i64 noundef 0, i64 noundef %i.nm)
          to label %bb.bs unwind label %bb.bz

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.np = add nuw i64 %i.nm, 1                    ; 2 uses
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 -24
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !44
  %i.nt = icmp ult i64 %i.np, %i.ns
  br i1 %i.nt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nu = getelementptr inbounds i8, ptr %i.nq, i64 -32
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %i.nu, i64 noundef %i.np, i64 noundef -1)
          to label %bb.bv unwind label %bb.ca

bb.bu:                                            ; preds = %bb.bs
  %i.nv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store ptr %i.nv, ptr %20, align 8, !tbaa !43
  %i.nw = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.nw, align 8, !tbaa !44
  store i8 0, ptr %i.nv, align 8, !tbaa !40
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.23") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.nx = load ptr, ptr %21, align 8, !tbaa !121
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory14getCRSInfoListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.ny = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ny, ptr %24, align 8, !tbaa !43
  %i.nz = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.nz, align 8, !tbaa !44
  store i8 0, ptr %i.ny, align 8, !tbaa !40
  %.sroa.0566.0666 = load ptr, ptr %22, align 8, !tbaa !124 ; 2 uses
  %.not610667 = icmp eq ptr %.sroa.0566.0666, %22
  br i1 %.not610667, label %._crit_edge671, label %.lr.ph670

.lr.ph670:                                        ; preds = %bb.bx
  %i.oa = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  br label %bb.cd

._crit_edge671.loopexit:                          ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit390.thread
  %.pre718 = load ptr, ptr %i.ob, align 8, !tbaa !38
  %.pre719 = load ptr, ptr %23, align 8, !tbaa !34
  br label %._crit_edge671

._crit_edge671:                                   ; preds = %._crit_edge671.loopexit, %bb.bx
  %i.od = phi ptr [ %.pre719, %._crit_edge671.loopexit ], [ null, %bb.bx ] ; 2 uses
  %i.oe = phi ptr [ %.pre718, %._crit_edge671.loopexit ], [ null, %bb.bx ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.og = ptrtoint ptr %i.oe to i64
  %i.oh = ptrtoint ptr %i.od to i64
  %i.oi = sub i64 %i.og, %i.oh
  %i.oj = icmp eq i64 %i.oi, 32
  br i1 %i.oj, label %bb.cp, label %bb.cr

bb.by:                                            ; preds = %.loopexit619
  %i.ok = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  %i.ol = load ptr, ptr %17, align 8, !tbaa !39   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.ne
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.by
  %i.on = load i64, ptr %i.ne, align 8, !tbaa !40
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.gf

bb.bz:                                            ; preds = %bb.br
  %i.op = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

bb.ca:                                            ; preds = %bb.bt
  %i.oq = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZL17suggestCompletionRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEP6pj_ctx:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !40
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431, %bb.bz
  %.pn276.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.op, %bb.bz ], [ %.pn276.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i431 ], [ %.pn276.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.ge

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr @.str.209, ptr %i.b, align 8, !tbaa !33
  %i.sx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.145, ptr %i.sx, align 8, !tbaa !33
  %i.sy = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %36, i64 17
  %i.tj = getelementptr inbounds nuw i8, ptr %37, i64 18
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.critedge307
  %.6686 = phi i8 [ %.3165, %bb.cz ], [ 1, %.critedge307 ] ; 2 uses
  %.0225.idx685 = phi i64 [ 0, %bb.cz ], [ %.0225.add, %.critedge307 ] ; 2 uses
  %.0225.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0225.idx685
  %i.tk = load ptr, ptr %.0225.ptr, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.tk, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.db unwind label %bb.dd

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN5osgeo4proj2io16AuthorityFactory6createERKN7dropbox6oxygen2nnISt10shared_ptrINS1_15DatabaseContextEEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.23") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.tl = load ptr, ptr %30, align 8, !tbaa !39   ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.sy
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434: ; preds = %bb.dc
  %i.tn = load i64, ptr %i.sy, align 8, !tbaa !40
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tl, i64 noundef %i.to) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  %i.tp = load ptr, ptr %29, align 8, !tbaa !121
  invoke void @_ZNK5osgeo4proj2io16AuthorityFactory14getCRSInfoListB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::list") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8) %i.tp)
          to label %.preheader618 unwind label %bb.df

.preheader618:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %.sroa.0553.0678 = load ptr, ptr %32, align 8, !tbaa !124 ; 2 uses
  %.not612679 = icmp eq ptr %.sroa.0553.0678, %32
  br i1 %.not612679, label %._crit_edge683, label %.lr.ph682

._crit_edge683:                                   ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread, %.preheader618
  %.7.lcssa = phi i8 [ %.6686, %.preheader618 ], [ %.8, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread ]
  %i.tq = trunc nuw i8 %.7.lcssa to i1
  br i1 %i.tq, label %.critedge307, label %.loopexit.thread

bb.dd:                                            ; preds = %bb.da
  %i.tr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

bb.de:                                            ; preds = %bb.db
  %i.ts = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.tt = load ptr, ptr %30, align 8, !tbaa !39   ; 2 uses
  %i.tu = icmp eq ptr %i.tt, %i.sy
  br i1 %i.tu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.de
  %i.tv = load i64, ptr %i.sy, align 8, !tbaa !40
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437, %bb.dd
  %.pn240 = phi { ptr, i32 } [ %i.tr, %bb.dd ], [ %i.ts, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437 ], [ %i.ts, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31
  br label %bb.dx

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit436
  %i.tx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.dw

.lr.ph682:                                        ; preds = %.preheader618, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread
  %.sroa.0553.0681 = phi ptr [ %.sroa.0553.0, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread ], [ %.sroa.0553.0678, %.preheader618 ] ; 4 uses
  %.7680 = phi i8 [ %.8, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread ], [ %.6686, %.preheader618 ] ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0553.0681, i64 116
  %i.tz = load i8, ptr %i.ty, align 4, !tbaa !143, !range !72, !noundef !73
  %i.ua = trunc nuw i8 %i.tz to i1
  br i1 %i.ua, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph682
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0553.0681, i64 80 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.0553.0681, i64 88 ; 2 uses
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !44
  %i.ue = load i64, ptr %i.sz, align 8, !tbaa !44 ; 2 uses
  %i.uf = icmp ult i64 %i.ud, %i.ue
  br i1 %i.uf, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442: ; preds = %bb.dg
  %i.ug = load ptr, ptr %i.ub, align 8, !tbaa !39
  %i.uh = load ptr, ptr %14, align 8, !tbaa !39
  %bcmp.i440 = call i32 @bcmp(ptr %i.ug, ptr %i.uh, i64 %i.ue)
  %i.ui = icmp eq i32 %bcmp.i440, 0
  br i1 %i.ui, label %bb.dh, label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread

bb.dh:                                            ; preds = %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442
  %i.uj = trunc nuw i8 %.7680 to i1
  br i1 %i.uj, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %putchar262 = call i32 @putchar(i32 32)         ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  store ptr %i.ta, ptr %33, align 8, !tbaa !43
  %i.uk = load ptr, ptr %i.ub, align 8, !tbaa !39 ; 2 uses
  %i.ul = load i64, ptr %i.uc, align 8, !tbaa !44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.ul, ptr %i.a, align 8, !tbaa !54
  %i.um = icmp ugt i64 %i.ul, 15
  br i1 %i.um, label %.noexc.i444, label %._crit_edge.i.i443

.noexc.i444:                                      ; preds = %bb.dj
  %i.un = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc445 unwind label %bb.dr ; 2 uses

.noexc445:                                        ; preds = %.noexc.i444
  store ptr %i.un, ptr %33, align 8, !tbaa !39
  %i.uo = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.uo, ptr %i.ta, align 8, !tbaa !40
  br label %._crit_edge.i.i443

._crit_edge.i.i443:                               ; preds = %.noexc445, %bb.dj
  %i.up = phi ptr [ %i.un, %.noexc445 ], [ %i.ta, %bb.dj ] ; 2 uses
  switch i64 %i.ul, label %bb.dl [
    i64 1, label %bb.dk
    i64 0, label %bb.dm
  ]

bb.dk:                                            ; preds = %._crit_edge.i.i443
  %i.uq = load i8, ptr %i.uk, align 1, !tbaa !40
  store i8 %i.uq, ptr %i.up, align 1, !tbaa !40
  br label %bb.dm

bb.dl:                                            ; preds = %._crit_edge.i.i443
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.up, ptr align 1 %i.uk, i64 %i.ul, i1 false)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %._crit_edge.i.i443
  %i.ur = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  store i64 %i.ur, ptr %i.tb, align 8, !tbaa !44
  %i.us = load ptr, ptr %33, align 8, !tbaa !39
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.ur
  store i8 0, ptr %i.ut, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.uu = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %i.uv = getelementptr inbounds i8, ptr %i.uu, i64 -24
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !44
  %cond = icmp eq i64 %i.uw, 1
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447: ; preds = %bb.dm
  %i.ux = getelementptr inbounds i8, ptr %i.uu, i64 -32
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !39 ; 3 uses
  %lhsc = load i8, ptr %i.uy, align 1
  %i.uz = icmp eq i8 %lhsc, 43
  br i1 %i.uz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread602

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread602: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447
  %lhsc917 = load i8, ptr %i.uy, align 1
  %i.va = icmp eq i8 %lhsc917, 47
  br i1 %i.va, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread602, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447
  %i.vb = load i8, ptr %i.uy, align 1, !tbaa !40
  %i.vc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i8 noundef signext %i.vb, i64 noundef 0) #31 ; 3 uses
  %.not263 = icmp eq i64 %i.vc, -1
  br i1 %.not263, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603, label %bb.dn

bb.dn:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread
  %i.vd = add nuw i64 %i.vc, 1                    ; 2 uses
  %i.ve = load i64, ptr %i.tb, align 8, !tbaa !44
  %i.vf = icmp ult i64 %i.vd, %i.ve
  br i1 %i.vf, label %bb.do, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603

bb.do:                                            ; preds = %bb.dn
  %i.vg = load ptr, ptr %33, align 8, !tbaa !39
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vd
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !40
  %i.vj = icmp eq i8 %i.vi, 32
  br i1 %i.vj, label %bb.dp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31
  %i.vk = add nuw i64 %i.vc, 2
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef %i.vk, i64 noundef -1)
          to label %bb.dq unwind label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.vl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %34) #31 ; 0 uses
  %i.vm = load ptr, ptr %34, align 8, !tbaa !39   ; 2 uses
  %i.vn = icmp eq ptr %i.vm, %i.tc
  br i1 %i.vn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450: ; preds = %bb.dq
  %i.vo = load i64, ptr %i.tc, align 8, !tbaa !40
  %i.vp = add i64 %i.vo, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603

bb.dr:                                            ; preds = %.noexc.i444
  %i.vq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481

bb.ds:                                            ; preds = %bb.dp
  %i.vr = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31
  br label %bb.dv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603: ; preds = %bb.dm, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread, %bb.dn, %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit447.thread602
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
  store ptr %i.td, ptr %36, align 8, !tbaa !43
  store i8 32, ptr %i.td, align 8, !tbaa !40
  store i64 1, ptr %i.te, align 8, !tbaa !44
  store i8 0, ptr %i.ti, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  store ptr %i.tf, ptr %37, align 8, !tbaa !43
  store i16 8284, ptr %i.tf, align 8
  store i64 2, ptr %i.tg, align 8, !tbaa !44
  store i8 0, ptr %i.tj, align 2, !tbaa !40
  invoke void @_ZN5osgeo4proj8internal10replaceAllERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.dt unwind label %bb.du

bb.dt:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603
  %i.vs = load ptr, ptr %35, align 8, !tbaa !39
  %i.vt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %i.vs) ; 0 uses
  %i.vu = load ptr, ptr %35, align 8, !tbaa !39   ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.th
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461: ; preds = %bb.dt
  %i.vw = load i64, ptr %i.th, align 8, !tbaa !40
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461
  %i.vy = load ptr, ptr %37, align 8, !tbaa !39   ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.tf
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
  %i.wa = load i64, ptr %i.tf, align 8, !tbaa !40
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  %i.wc = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.td
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
  %i.we = load i64, ptr %i.td, align 8, !tbaa !40
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  %i.wg = load ptr, ptr %33, align 8, !tbaa !39   ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.ta
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469
  %i.wi = load i64, ptr %i.ta, align 8, !tbaa !40
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread

bb.du:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit449.thread603
  %i.wk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %i.wl = load ptr, ptr %37, align 8, !tbaa !39   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.tf
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473: ; preds = %bb.du
  %i.wn = load i64, ptr %i.tf, align 8, !tbaa !40
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  %i.wp = load ptr, ptr %36, align 8, !tbaa !39   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.td
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475
  %i.wr = load i64, ptr %i.td, align 8, !tbaa !40
  %i.ws = add i64 %i.wr, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.ws) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, %bb.ds
  %.pn264.pn.pn = phi { ptr, i32 } [ %i.wk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478 ], [ %i.vr, %bb.ds ] ; 2 uses
  %i.wt = load ptr, ptr %33, align 8, !tbaa !39   ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.ta
  br i1 %i.wu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479: ; preds = %bb.dv
  %i.wv = load i64, ptr %i.ta, align 8, !tbaa !40
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.wt, i64 noundef %i.ww) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479, %bb.dr
  %.pn264.pn.pn.pn = phi { ptr, i32 } [ %i.vq, %bb.dr ], [ %.pn264.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479 ], [ %.pn264.pn.pn, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory7CRSInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #31
  br label %bb.dw

_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442.thread: ; preds = %bb.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442, %.lr.ph682
  %.8 = phi i8 [ %.7680, %.lr.ph682 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472 ], [ %.7680, %_ZN5osgeo4proj8internal11starts_withERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit442 ], [ %.7680, %bb.dg ] ; 2 uses
  %.sroa.0553.0 = load ptr, ptr %.sroa.0553.0681, align 8, !tbaa !124 ; 2 uses
  %.not612 = icmp eq ptr %.sroa.0553.0, %32
  br i1 %.not612, label %._crit_edge683, label %.lr.ph682

.loopexit.thread:                                 ; preds = %._crit_edge683
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory7CRSInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.wx = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.212, i64 noundef 0, i64 noundef 2) #31 ; 0 uses
  br label %bb.gd

.critedge307:                                     ; preds = %._crit_edge683
  call void @_ZNSt7__cxx1110_List_baseIN5osgeo4proj2io16AuthorityFactory7CRSInfoESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  %.0225.add = add nuw nsw i64 %.0225.idx685, 8   ; 2 uses
  %.not239 = icmp eq i64 %.0225.add, 16
  br i1 %.not239, label %.loopexit, label %bb.da

bb.dw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, %bb.df
  %.pn264.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn264.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481 ], [ %i.tx, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj2io16AuthorityFactoryEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #31
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %.pn264.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn264.pn.pn.pn.pn, %bb.dw ], [ %.pn240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.ge

.loopexit:                                        ; preds = %.critedge307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.wy = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.212, i64 noundef 0, i64 noundef 2) #31 ; 2 uses
  %.not929 = icmp eq i64 %i.wy, -1
  br i1 %.not929, label %bb.gd, label %bb.dy

bb.dy:                                            ; preds = %.loopexit
end_hunk_1

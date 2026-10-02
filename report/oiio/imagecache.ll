Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  %i.wi = load ptr, ptr %30, align 8, !tbaa !138  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460: ; preds = %bb.cj
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !139
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit462: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460, %bb.ci
  %.pn225 = phi { ptr, i32 } [ %i.wg, %bb.ci ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i460 ], [ %i.wh, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #5
  br label %bb.fx

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit401
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i404, %bb.bf
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %31, align 8, !tbaa !138  ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.wr = icmp eq ptr %i.wp, %i.wq
  br i1 %i.wr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463: ; preds = %bb.cl
  %i.ws = load i64, ptr %i.wq, align 8, !tbaa !139
  %i.wt = add i64 %i.ws, 1
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef %i.wt) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit465: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463, %bb.ck
  %.pn227 = phi { ptr, i32 } [ %i.wn, %bb.ck ], [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i463 ], [ %i.wo, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  br label %bb.fx

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i413, %bb.bh
  %i.wv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ww = load ptr, ptr %32, align 8, !tbaa !138  ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.wy = icmp eq ptr %i.ww, %i.wx
  br i1 %i.wy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466: ; preds = %bb.cn
  %i.wz = load i64, ptr %i.wx, align 8, !tbaa !139
  %i.xa = add i64 %i.wz, 1
  call void @_ZdlPvm(ptr noundef %i.ww, i64 noundef %i.xa) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466, %bb.cm
  %.pn229 = phi { ptr, i32 } [ %i.wu, %bb.cm ], [ %i.wv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i466 ], [ %i.wv, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #5
  br label %bb.fx

bb.co:                                            ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419
  %i.xb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i423, %bb.bk
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xd = load ptr, ptr %33, align 8, !tbaa !138  ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469: ; preds = %bb.cp
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !139
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit471: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469, %bb.co
  %.pn231 = phi { ptr, i32 } [ %i.xb, %bb.co ], [ %i.xc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i469 ], [ %i.xc, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #5
  br label %bb.fx

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

bb.cr:                                            ; preds = %bb.bl
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %34, align 8, !tbaa !138  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.xm = icmp eq ptr %i.xk, %i.xl
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472: ; preds = %bb.cr
  %i.xn = load i64, ptr %i.xl, align 8, !tbaa !139
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xo) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit474: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472, %bb.cq
  %.pn233 = phi { ptr, i32 } [ %i.xi, %bb.cq ], [ %i.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i472 ], [ %i.xj, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  br label %bb.fx

bb.cs:                                            ; preds = %bb.bo
  %i.xp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %bb.fx

bb.ct:                                            ; preds = %bb.bp
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

bb.cu:                                            ; preds = %bb.bq
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xs = load ptr, ptr %38, align 8, !tbaa !138  ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475: ; preds = %bb.cu
  %i.xv = load i64, ptr %i.xt, align 8, !tbaa !139
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit477: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475, %bb.ct
  %.pn235 = phi { ptr, i32 } [ %i.xq, %bb.ct ], [ %i.xr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i475 ], [ %i.xr, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #5
  br label %bb.fx

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

bb.cw:                                            ; preds = %bb.bs
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xz = load ptr, ptr %39, align 8, !tbaa !138  ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478: ; preds = %bb.cw
  %i.yc = load i64, ptr %i.ya, align 8, !tbaa !139
  %i.yd = add i64 %i.yc, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yd) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit480: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478, %bb.cv
  %.pn237 = phi { ptr, i32 } [ %i.xx, %bb.cv ], [ %i.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i478 ], [ %i.xy, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #5
  br label %bb.fx

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit438
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

bb.cy:                                            ; preds = %bb.bu
  %i.yf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yg = load ptr, ptr %40, align 8, !tbaa !138  ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.yi = icmp eq ptr %i.yg, %i.yh
  br i1 %i.yi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481: ; preds = %bb.cy
  %i.yj = load i64, ptr %i.yh, align 8, !tbaa !139
  %i.yk = add i64 %i.yj, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481, %bb.cx
  %.pn239 = phi { ptr, i32 } [ %i.ye, %bb.cx ], [ %i.yf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i481 ], [ %i.yf, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #5
  br label %bb.fx

bb.cz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit432
  invoke void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.134, i64 19)
          to label %bb.da unwind label %bb.ap

bb.da:                                            ; preds = %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.yl = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !622 ; 2 uses
  %i.yn = fcmp ogt double %i.ym, 1.000000e-03
  %i.yo = icmp sgt i32 %2, 2                      ; 13 uses
  %or.cond = or i1 %i.yo, %i.yn
  br i1 %or.cond, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #5
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, double noundef %i.ym, i32 noundef 1)
          to label %bb.dc unwind label %bb.de

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.135, i64 24, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.yp = load ptr, ptr %41, align 8, !tbaa !138  ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.yr = icmp eq ptr %i.yp, %i.yq
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484: ; preds = %bb.dd
  %i.ys = load i64, ptr %i.yq, align 8, !tbaa !139
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.yt) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #5
  br label %bb.dg

bb.de:                                            ; preds = %bb.db
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

bb.df:                                            ; preds = %bb.dc
  %i.yv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yw = load ptr, ptr %41, align 8, !tbaa !138  ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %bb.df
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !139
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487, %bb.de
  %.pn241 = phi { ptr, i32 } [ %i.yu, %bb.de ], [ %i.yv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487 ], [ %i.yv, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #5
  br label %bb.fx

bb.dg:                                            ; preds = %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486
  %i.zb = load double, ptr %i.ag, align 8, !tbaa !623 ; 2 uses
  %i.zc = fcmp ogt double %i.zb, 1.000000e-03
  %or.cond3 = or i1 %i.yo, %i.zc
  br i1 %or.cond3, label %bb.dh, label %bb.ea

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #5
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, double noundef %i.zb, i32 noundef 1)
          to label %bb.di unwind label %bb.dq

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.136, i64 22, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.dj unwind label %bb.dr

bb.dj:                                            ; preds = %bb.di
  %i.zd = load ptr, ptr %42, align 8, !tbaa !138  ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.zf = icmp eq ptr %i.zd, %i.ze
  br i1 %i.zf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490: ; preds = %bb.dj
  %i.zg = load i64, ptr %i.ze, align 8, !tbaa !139
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zh) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i490
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #5
  %i.zi = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i493 = icmp eq i8 %i.zi, 0
  br i1 %.0.in.i.not.i2.i.i493, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505, label %.preheader.i.i494

.preheader.i.i494:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492, %.preheader.i.i494.backedge
  %.sroa.0.1.i.i496 = phi i32 [ %.sroa.0.2.i.i500, %.preheader.i.i494.backedge ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492 ] ; 5 uses
  %.not.i.i.i497 = icmp sgt i32 %.sroa.0.1.i.i496, 16
  br i1 %.not.i.i.i497, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.preheader.i.i494
  %i.zj = icmp sgt i32 %.sroa.0.1.i.i496, 0
  br i1 %i.zj, label %.lr.ph.i.i.i.i502, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498

.lr.ph.i.i.i.i502:                                ; preds = %bb.dk, %.lr.ph.i.i.i.i502
  %.03.i.i.i.i503 = phi i32 [ %i.zk, %.lr.ph.i.i.i.i502 ], [ 0, %bb.dk ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !472
  %i.zk = add nuw nsw i32 %.03.i.i.i.i503, 1      ; 2 uses
  %exitcond.not.i.i.i.i504 = icmp eq i32 %i.zk, %.sroa.0.1.i.i496
  br i1 %exitcond.not.i.i.i.i504, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498, label %.lr.ph.i.i.i.i502, !llvm.loop !9

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498:      ; preds = %.lr.ph.i.i.i.i502, %bb.dk
  %i.zl = shl nsw i32 %.sroa.0.1.i.i496, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499

bb.dl:                                            ; preds = %.preheader.i.i494
  %i.zm = call noundef i32 @sched_yield() #5      ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499: ; preds = %bb.dl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498
  %.sroa.0.2.i.i500 = phi i32 [ %.sroa.0.1.i.i496, %bb.dl ], [ %i.zl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i498 ]
  %i.zn = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !473, !range !395, !noundef !326
  %i.zo = trunc nuw i8 %i.zn to i1
  br i1 %i.zo, label %.preheader.i.i494.backedge, label %bb.dm

.preheader.i.i494.backedge:                       ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499, %bb.dm
  br label %.preheader.i.i494, !llvm.loop !10

bb.dm:                                            ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i499
  %i.zp = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i501 = icmp eq i8 %i.zp, 0
  br i1 %.0.in.i.not.i.i.i501, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505, label %.preheader.i.i494.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505: ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.zq = load ptr, ptr %i.at, align 16, !tbaa !561
  %i.zr = load ptr, ptr %i.ar, align 8, !tbaa !563
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = sub i64 %i.zs, %i.zt
  %i.zv = ashr exact i64 %i.zu, 3                 ; 3 uses
  store i64 %i.zv, ptr %i.l, align 8, !tbaa !288
  %i.zw = icmp ugt i64 %i.zv, 1
  %or.cond5 = or i1 %i.yo, %i.zw
  br i1 %or.cond5, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit505
  %i.zx = load double, ptr %i.ag, align 8, !tbaa !623
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.zv, i64 1)
  %i.zy = uitofp i64 %.sroa.speculated to double
  %i.zz = fdiv double %i.zx, %i.zy
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #5
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, double noundef %i.zz, i32 noundef 1)
          to label %bb.do unwind label %bb.ds

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.137, i64 40, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.aaa = load ptr, ptr %43, align 8, !tbaa !138 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.aac = icmp eq ptr %i.aaa, %i.aab
  br i1 %i.aac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506: ; preds = %bb.dp
  %i.aad = load i64, ptr %i.aab, align 8, !tbaa !139
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %i.aaa, i64 noundef %i.aae) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #5
  br label %bb.du

bb.dq:                                            ; preds = %bb.dh
  %i.aaf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

bb.dr:                                            ; preds = %bb.di
  %i.aag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aah = load ptr, ptr %42, align 8, !tbaa !138 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.aaj = icmp eq ptr %i.aah, %i.aai
  br i1 %i.aaj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509: ; preds = %bb.dr
  %i.aak = load i64, ptr %i.aai, align 8, !tbaa !139
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aal) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509, %bb.dq
  %.pn243 = phi { ptr, i32 } [ %i.aaf, %bb.dq ], [ %i.aag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ], [ %i.aag, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #5
  br label %bb.fx

bb.ds:                                            ; preds = %bb.dn
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514

bb.dt:                                            ; preds = %bb.do
  %i.aan = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aao = load ptr, ptr %43, align 8, !tbaa !138 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.aaq = icmp eq ptr %i.aao, %i.aap
end_hunk_0
begin_hunk_1_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a

.noexc567:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i
  %.not7.i.i.i.i = icmp eq ptr %i.agl, %i.agb
  br i1 %.not7.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i564

.lr.ph.i.i.i.i564:                                ; preds = %.noexc567, %.noexc568
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.ahp, %.noexc568 ], [ %i.agl, %.noexc567 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIPFbRKS6_SF_EEEEvT_T0_(ptr nonnull %.sroa.0.08.i.i.i.i, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc568 unwind label %.loopexit1179

.noexc568:                                        ; preds = %.lr.ph.i.i.i.i564
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i565 = icmp eq ptr %i.ahp, %i.agb
  br i1 %.not.i.i.i.i565, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit, label %.lr.ph.i.i.i.i564, !llvm.loop !1420

bb.gl:                                            ; preds = %.noexc566
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_(ptr %i.agc, ptr %i.agb, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116filename_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit unwind label %.loopexit.split-lp1180.loopexit.split-lp

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit: ; preds = %.noexc568, %bb.gl, %.noexc567
  %i.ahq = load ptr, ptr %i.fd, align 8, !tbaa !614 ; 2 uses
  %i.ahr = load ptr, ptr %17, align 8, !tbaa !616 ; 3 uses
  %.not1326 = icmp eq ptr %i.ahq, %i.ahr
  br i1 %.not1326, label %._crit_edge1242, label %.lr.ph1241

.lr.ph1241:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  %i.ahs = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.aht = ptrtoint ptr %i.ahq to i64
  %i.ahu = ptrtoint ptr %i.ahr to i64
  %i.ahv = sub i64 %i.aht, %i.ahu
  %i.ahw = ashr exact i64 %i.ahv, 3
  br label %bb.gm

._crit_edge1242:                                  ; preds = %bb.gv, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  %i.ahx = uitofp i64 %.0 to double
  %i.ahy = fmul nnan double %i.ahx, f0x3F50000000000000
  %i.ahz = fmul nnan double %i.ahy, f0x3F50000000000000
  store double %i.ahz, ptr %i.r, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  %i.aia = uitofp i64 %.0149 to double
  %i.aib = fmul nnan double %i.aia, f0x3F50000000000000
  %i.aic = fmul nnan double %i.aib, f0x3F50000000000000
  store double %i.aic, ptr %i.s, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #5
  %i.aid = extractelement <2 x double> %i.ff, i64 0
  invoke void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, double noundef %i.aid, i32 noundef 1)
          to label %bb.gy unwind label %bb.ha

bb.gm:                                            ; preds = %.lr.ph1241, %bb.gv
  %.02021239 = phi i64 [ 0, %.lr.ph1241 ], [ %i.ajd, %bb.gv ] ; 3 uses
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.ahr, i64 %.02021239 ; 3 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !491 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 166
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !289
  %.not1155 = icmp eq i16 %i.aih, 0
  br i1 %.not1155, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 25
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !259, !range !395, !noundef !326
  %i.aik = trunc nuw i8 %i.aij to i1
  br i1 %i.aik, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aif, i64 80
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 88
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !321
  %i.aio = load ptr, ptr %i.ail, align 8, !tbaa !320
  %i.aip = ptrtoint ptr %i.ain to i64
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = sub i64 %i.aip, %i.aiq
  %i.ais = and i64 %i.air, 549755813760
  %i.ait = icmp eq i64 %i.ais, 0
  br i1 %i.ait, label %bb.gp, label %bb.gs

bb.gp:                                            ; preds = %bb.go, %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #5
  %i.aiu = load ptr, ptr %i.aie, align 8, !tbaa !491
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aiv, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i, ptr %51, align 8
  invoke void @_ZN3fmt3v125printIJRA7_KcN11OpenImageIO4v3_17ustringEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.152, i64 10, ptr noundef nonnull align 1 dereferenceable(7) @.str.153, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #5
  br label %bb.gv

bb.gr:                                            ; preds = %bb.gp
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #5
  br label %.body

bb.gs:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #5
  %i.aix = trunc i64 %.02021239 to i32
  %i.aiy = add i32 %i.aix, 1
  invoke void @_ZNK11OpenImageIO4v3_114ImageCacheImpl17onefile_stat_lineB5cxx11ERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEEib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 64 dereferenceable(25240) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aie, i32 noundef %i.aiy, i1 noundef zeroext true)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.154, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.gu unwind label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.aiz = load ptr, ptr %52, align 8, !tbaa !138 ; 2 uses
  %i.aja = icmp eq ptr %i.aiz, %i.ahs
  br i1 %i.aja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570: ; preds = %bb.gu
  %i.ajb = load i64, ptr %i.ahs, align 8, !tbaa !139
  %i.ajc = add i64 %i.ajb, 1
  call void @_ZdlPvm(ptr noundef %i.aiz, i64 noundef %i.ajc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #5
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %bb.gq
  %i.ajd = add nuw i64 %.02021239, 1              ; 2 uses
  %i.aje = icmp ult i64 %i.ajd, %i.ahw
  br i1 %i.aje, label %bb.gm, label %._crit_edge1242, !llvm.loop !1421

bb.gw:                                            ; preds = %bb.gs
  %i.ajf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

bb.gx:                                            ; preds = %bb.gt
  %i.ajg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajh = load ptr, ptr %52, align 8, !tbaa !138 ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.ahs
  br i1 %i.aji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %bb.gx
  %i.ajj = load i64, ptr %i.ahs, align 8, !tbaa !139
  %i.ajk = add i64 %i.ajj, 1
  call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajk) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573, %bb.gw
  %.pn284 = phi { ptr, i32 } [ %i.ajf, %bb.gw ], [ %i.ajg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573 ], [ %i.ajg, %bb.gx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #5
  br label %.body

bb.gy:                                            ; preds = %._crit_edge1242
  invoke void @_ZN3fmt3v125printIJRmS2_dS2_dNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSB_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.155, i64 52, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %53)
          to label %bb.gz unwind label %bb.hb

bb.gz:                                            ; preds = %bb.gy
  %i.ajl = load ptr, ptr %53, align 8, !tbaa !138 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajn = icmp eq ptr %i.ajl, %i.ajm
  br i1 %i.ajn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %bb.gz
  %i.ajo = load i64, ptr %i.ajm, align 8, !tbaa !139
  %i.ajp = add i64 %i.ajo, 1
  call void @_ZdlPvm(ptr noundef %i.ajl, i64 noundef %i.ajp) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.thread1137

bb.ha:                                            ; preds = %._crit_edge1242
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

bb.hb:                                            ; preds = %bb.gy
  %i.ajr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajs = load ptr, ptr %53, align 8, !tbaa !138 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.aju = icmp eq ptr %i.ajs, %i.ajt
  br i1 %i.aju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %bb.hb
  %i.ajv = load i64, ptr %i.ajt, align 8, !tbaa !139
  %i.ajw = add i64 %i.ajv, 1
  call void @_ZdlPvm(ptr noundef %i.ajs, i64 noundef %i.ajw) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579, %bb.ha
  %.pn266 = phi { ptr, i32 } [ %i.ajq, %bb.ha ], [ %i.ajr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ], [ %i.ajr, %bb.hb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.body

.thread1137:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i558, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, %bb.fy
  %i.ajx = load i64, ptr %i.g, align 8, !tbaa !288
  %i.ajy = icmp ne i64 %i.ajx, 0
  %or.cond20 = or i1 %i.yo, %i.ajy
  br i1 %or.cond20, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %.thread1137
  invoke void @_ZN3fmt3v125printIJRmEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.156, i64 43, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.hd unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.hd:                                            ; preds = %bb.hc, %.thread1137
  %i.ajz = load i64, ptr %i.e, align 8, !tbaa !288
  %.not268 = icmp eq i64 %i.ajz, 0
  br i1 %.not268, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %bb.hd
  %i.aka = load i64, ptr %i.f, align 8, !tbaa !288
  %.not269 = icmp eq i64 %i.aka, 0
  br i1 %.not269, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.akb = load i8, ptr %i.ou, align 1, !tbaa !460, !range !395, !noundef !326
  %i.akc = trunc nuw i8 %i.akb to i1
  %or.cond22 = or i1 %i.yo, %i.akc
  br i1 %or.cond22, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %bb.he
  br i1 %i.yo, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg, %bb.hf, %bb.hd
  invoke void @_ZN3fmt3v125printIJRmS2_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.157, i64 34, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.hi unwind label %.loopexit.split-lp1180.loopexit.split-lp

bb.hi:                                            ; preds = %bb.hh, %bb.hf, %bb.hg
  %i.akd = load i64, ptr %i.h, align 8, !tbaa !288 ; 2 uses
  %i.ake = icmp ne i64 %i.akd, 0
  %or.cond25 = or i1 %i.yo, %i.ake
  br i1 %or.cond25, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  %i.akf = icmp eq i64 %i.akd, 1
  %i.akg = select i1 %i.akf, ptr @.str.159, ptr @.str.160
  store ptr %i.akg, ptr %i.t, align 8, !tbaa !207
  invoke void @_ZN3fmt3v125printIJRmPKcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.158, i64 38, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.hk unwind label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj
  %i.akh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  br label %.body

bb.hm:                                            ; preds = %bb.hi, %bb.hk
  %i.aki = load ptr, ptr %i.fd, align 8, !tbaa !614 ; 8 uses
  %i.akj = load ptr, ptr %17, align 8, !tbaa !616 ; 15 uses
  %i.akk = ptrtoint ptr %i.aki to i64
  %i.akl = ptrtoint ptr %i.akj to i64             ; 2 uses
  %i.akm = sub i64 %i.akk, %i.akl                 ; 2 uses
  %i.akn = ashr exact i64 %i.akm, 3               ; 2 uses
  %i.ako = icmp ugt i64 %i.akn, 49
  %or.cond28 = or i1 %i.yo, %i.ako
  br i1 %or.cond28, label %bb.hn, label %bb.mr

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #5
  %.not.i.i582 = icmp eq ptr %i.akj, %i.aki
  br i1 %.not.i.i582, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.akp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akn, i1 true)
  %i.akq = shl nuw nsw i64 %i.akp, 1
  %i.akr = xor i64 %i.akq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS6_SF_EEEEvT_SJ_T0_T1_(ptr %i.akj, ptr %i.aki, i64 noundef %i.akr, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_117bytesread_compareERKNS0_13intrusive_ptrINS0_14ImageCacheFileEEES6_)
          to label %.noexc587 unwind label %.loopexit.split-lp1168.loopexit.split-lp.loopexit.split-lp

.noexc587:                                        ; preds = %bb.ho
  %i.aks = icmp sgt i64 %i.akm, 128
  br i1 %i.aks, label %.preheader1674, label %.preheader.i

.preheader1674:                                   ; preds = %.noexc587, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705
  %.sroa.013.027.i703.idx = phi i64 [ %.sroa.013.027.i703.add, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705 ], [ 8, %.noexc587 ] ; 3 uses
  %.pn26.i704 = phi ptr [ %.sroa.013.027.i703.ptr, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705 ], [ %i.akj, %.noexc587 ]
  %.sroa.013.027.i703.ptr = getelementptr inbounds nuw i8, ptr %i.akj, i64 %.sroa.013.027.i703.idx ; 7 uses
  %i.akt = load ptr, ptr %.sroa.013.027.i703.ptr, align 8, !tbaa !491 ; 4 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 192 ; 2 uses
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !596 ; 2 uses
  %i.akw = load ptr, ptr %i.akj, align 8, !tbaa !491
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 192
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !596
  %i.akz = icmp ugt i64 %i.akv, %i.aky
  store ptr null, ptr %.sroa.013.027.i703.ptr, align 8, !tbaa !491
  br i1 %i.akz, label %.lr.ph.i.i.i.i.i.preheader.i710, label %bb.ht

.lr.ph.i.i.i.i.i.preheader.i710:                  ; preds = %.preheader1674
  %i.ala = lshr exact i64 %.sroa.013.027.i703.idx, 3
  %i.alb = getelementptr inbounds nuw i8, ptr %.pn26.i704, i64 16
  br label %.lr.ph.i.i.i.i.i.i711

.lr.ph.i.i.i.i.i.i711:                            ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716, %.lr.ph.i.i.i.i.i.preheader.i710
  %.010.i.i.i.i.i.i712 = phi i64 [ %i.ali, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716 ], [ %i.ala, %.lr.ph.i.i.i.i.i.preheader.i710 ] ; 2 uses
  %.069.i.i.i.i.i.i713 = phi ptr [ %i.ald, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716 ], [ %i.alb, %.lr.ph.i.i.i.i.i.preheader.i710 ]
  %.078.i.i.i.i.i.i714 = phi ptr [ %i.alc, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716 ], [ %.sroa.013.027.i703.ptr, %.lr.ph.i.i.i.i.i.preheader.i710 ]
  %i.alc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i714, i64 -8 ; 3 uses
  %i.ald = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i713, i64 -8 ; 3 uses
  %i.ale = load ptr, ptr %i.alc, align 8, !tbaa !491
  store ptr null, ptr %i.alc, align 8, !tbaa !491
  %i.alf = load ptr, ptr %i.ald, align 8, !tbaa !491 ; 4 uses
  store ptr %i.ale, ptr %i.ald, align 8, !tbaa !491
  %.not.i.i.i.i.i.i.i.i715 = icmp eq ptr %i.alf, null
  br i1 %.not.i.i.i.i.i.i.i.i715, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph.i.i.i.i.i.i711
  %i.alg = atomicrmw sub ptr %i.alf, i32 1 seq_cst, align 4
  %i.alh = icmp eq i32 %i.alg, 1
  br i1 %i.alh, label %bb.hq, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.alf) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.alf, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716: ; preds = %bb.hq, %bb.hp, %.lr.ph.i.i.i.i.i.i711
  %i.ali = add nsw i64 %.010.i.i.i.i.i.i712, -1
  %i.alj = icmp sgt i64 %.010.i.i.i.i.i.i712, 1
  br i1 %i.alj, label %.lr.ph.i.i.i.i.i.i711, label %.loopexit.i708, !llvm.loop !22

.loopexit.i708:                                   ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i.i.i716
  %i.alk = load ptr, ptr %i.akj, align 8, !tbaa !491 ; 4 uses
  store ptr %i.akt, ptr %i.akj, align 8, !tbaa !491
  %.not.i.i.i709 = icmp eq ptr %i.alk, null
  br i1 %.not.i.i.i709, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705, label %bb.hr

bb.hr:                                            ; preds = %.loopexit.i708
  %i.all = atomicrmw sub ptr %i.alk, i32 1 seq_cst, align 4
  %i.alm = icmp eq i32 %i.all, 1
  br i1 %i.alm, label %bb.hs, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

bb.hs:                                            ; preds = %bb.hr
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.alk) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.alk, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

bb.ht:                                            ; preds = %.preheader1674
  %.sroa.0.0.i9041249 = getelementptr inbounds i8, ptr %.sroa.013.027.i703.ptr, i64 -8 ; 2 uses
  %i.aln = load ptr, ptr %.sroa.0.0.i9041249, align 8, !tbaa !491 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 192
  %i.alp = load i64, ptr %i.alo, align 8, !tbaa !596
  %i.alq = icmp ugt i64 %i.akv, %i.alp
  br i1 %i.alq, label %.lr.ph1253, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge.thread: ; preds = %bb.ht
  store ptr %i.akt, ptr %.sroa.013.027.i703.ptr, align 8, !tbaa !491
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

.lr.ph1253:                                       ; preds = %bb.ht, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913
  %i.alr = phi ptr [ %i.alw, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913 ], [ %i.aln, %bb.ht ]
  %.sroa.0.0.i9041251 = phi ptr [ %.sroa.0.0.i904, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913 ], [ %.sroa.0.0.i9041249, %bb.ht ] ; 5 uses
  %.sroa.08.0.i9031250 = phi ptr [ %.sroa.0.0.i9041251, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913 ], [ %.sroa.013.027.i703.ptr, %bb.ht ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i9041251, align 8, !tbaa !491
  %i.als = load ptr, ptr %.sroa.08.0.i9031250, align 8, !tbaa !491 ; 4 uses
  store ptr %i.alr, ptr %.sroa.08.0.i9031250, align 8, !tbaa !491
  %.not.i.i.i912 = icmp eq ptr %i.als, null
  br i1 %.not.i.i.i912, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913, label %bb.hu

bb.hu:                                            ; preds = %.lr.ph1253
  %i.alt = atomicrmw sub ptr %i.als, i32 1 seq_cst, align 4
  %i.alu = icmp eq i32 %i.alt, 1
  br i1 %i.alu, label %bb.hv, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913

bb.hv:                                            ; preds = %bb.hu
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.als) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.als, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913: ; preds = %bb.hv, %bb.hu, %.lr.ph1253
  %.sroa.0.0.i904 = getelementptr inbounds i8, ptr %.sroa.0.0.i9041251, i64 -8 ; 2 uses
  %i.alv = load i64, ptr %i.aku, align 8, !tbaa !596
  %i.alw = load ptr, ptr %.sroa.0.0.i904, align 8, !tbaa !491 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 192
  %i.aly = load i64, ptr %i.alx, align 8, !tbaa !596
  %i.alz = icmp ugt i64 %i.alv, %i.aly
  br i1 %i.alz, label %.lr.ph1253, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge, !llvm.loop !24

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i913
  %.pre1346 = load ptr, ptr %.sroa.0.0.i9041251, align 8, !tbaa !491 ; 4 uses
  store ptr %i.akt, ptr %.sroa.0.0.i9041251, align 8, !tbaa !491
  %.not.i.i1.i908 = icmp eq ptr %.pre1346, null
  br i1 %.not.i.i1.i908, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705, label %bb.hw

bb.hw:                                            ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge
  %i.ama = atomicrmw sub ptr %.pre1346, i32 1 seq_cst, align 4
  %i.amb = icmp eq i32 %i.ama, 1
  br i1 %i.amb, label %bb.hx, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

bb.hx:                                            ; preds = %bb.hw
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %.pre1346) #5
  call void @_ZdlPvm(ptr noundef nonnull %.pre1346, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge.thread, %bb.hw, %bb.hx, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i907._crit_edge, %bb.hs, %bb.hr, %.loopexit.i708
  %.sroa.013.027.i703.add = add nuw nsw i64 %.sroa.013.027.i703.idx, 8 ; 2 uses
  %.not.i707 = icmp eq i64 %.sroa.013.027.i703.add, 128
  br i1 %.not.i707, label %.noexc588, label %.preheader1674, !llvm.loop !23

.noexc588:                                        ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit.i705
  %i.amc = getelementptr inbounds nuw i8, ptr %i.akj, i64 128 ; 2 uses
  %.not7.i.i.i.i583 = icmp eq ptr %i.amc, %i.aki
  br i1 %.not7.i.i.i.i583, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEESt6vectorIS6_SaIS6_EEEEPFbRKS6_SD_EEvT_SG_T0_.exit591, label %.lr.ph.i.i.i.i584

.lr.ph.i.i.i.i584:                                ; preds = %.noexc588, %.noexc589
  %.sroa.0.08.i.i.i.i585 = phi ptr [ %i.amv, %.noexc589 ], [ %i.amc, %.noexc588 ] ; 6 uses
  %i.amd = load ptr, ptr %.sroa.0.08.i.i.i.i585, align 8, !tbaa !491 ; 3 uses
  store ptr null, ptr %.sroa.0.08.i.i.i.i585, align 8, !tbaa !491
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 192 ; 2 uses
  %.sroa.0.0.i1255 = getelementptr inbounds i8, ptr %.sroa.0.08.i.i.i.i585, i64 -8 ; 2 uses
  %i.amf = load i64, ptr %i.ame, align 8, !tbaa !596
  %i.amg = load ptr, ptr %.sroa.0.0.i1255, align 8, !tbaa !491 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 192
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !596
  %i.amj = icmp ugt i64 %i.amf, %i.ami
  br i1 %i.amj, label %.lr.ph1258, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge.thread

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge.thread: ; preds = %.lr.ph.i.i.i.i584
  store ptr %i.amd, ptr %.sroa.0.08.i.i.i.i585, align 8, !tbaa !491
  br label %.noexc589

.lr.ph1258:                                       ; preds = %.lr.ph.i.i.i.i584, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i
  %i.amk = phi ptr [ %i.amp, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i ], [ %i.amg, %.lr.ph.i.i.i.i584 ]
  %.sroa.0.0.i1257 = phi ptr [ %.sroa.0.0.i, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i ], [ %.sroa.0.0.i1255, %.lr.ph.i.i.i.i584 ] ; 5 uses
  %.sroa.08.0.i1256 = phi ptr [ %.sroa.0.0.i1257, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i ], [ %.sroa.0.08.i.i.i.i585, %.lr.ph.i.i.i.i584 ] ; 2 uses
  store ptr null, ptr %.sroa.0.0.i1257, align 8, !tbaa !491
  %i.aml = load ptr, ptr %.sroa.08.0.i1256, align 8, !tbaa !491 ; 4 uses
  store ptr %i.amk, ptr %.sroa.08.0.i1256, align 8, !tbaa !491
  %.not.i.i.i696 = icmp eq ptr %i.aml, null
  br i1 %.not.i.i.i696, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i, label %bb.hy

bb.hy:                                            ; preds = %.lr.ph1258
  %i.amm = atomicrmw sub ptr %i.aml, i32 1 seq_cst, align 4
  %i.amn = icmp eq i32 %i.amm, 1
  br i1 %i.amn, label %bb.hz, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i

bb.hz:                                            ; preds = %bb.hy
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.aml) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.aml, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i: ; preds = %bb.hz, %bb.hy, %.lr.ph1258
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i1257, i64 -8 ; 2 uses
  %i.amo = load i64, ptr %i.ame, align 8, !tbaa !596
  %i.amp = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !491 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 192
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !596
  %i.ams = icmp ugt i64 %i.amo, %i.amr
  br i1 %i.ams, label %.lr.ph1258, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge, !llvm.loop !24

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKN11OpenImageIO4v3_113intrusive_ptrINS3_14ImageCacheFileEEES8_EEclIS6_NS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i._crit_edge: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i
  %.pre1347 = load ptr, ptr %.sroa.0.0.i1257, align 8, !tbaa !491 ; 4 uses
  store ptr %i.amd, ptr %.sroa.0.0.i1257, align 8, !tbaa !491
  %.not.i.i1.i694 = icmp eq ptr %.pre1347, null
  br i1 %.not.i.i1.i694, label %.noexc589, label %bb.ia

end_hunk_1
begin_hunk_2_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm:bb.a
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !2067

middle.block:                                     ; preds = %pred.store.continue62
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader63

.lr.ph.i.i.i.i.preheader63:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader63, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dn, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader63 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 4, !tbaa !551
  %i.dm = icmp eq i16 %i.dl, -1
  br i1 %i.dm, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %i.dk, align 4, !tbaa !551
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2068

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEEEvPT_.exit.i.i.i.i, %middle.block, %._crit_edge
  %.not.i.i1.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.do = ptrtoint ptr %i.as to i64
  %i.dp = ptrtoint ptr %i.an to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.dq) #46
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.o
  %.sroa.015.020 = phi ptr [ %i.ep, %bb.o ], [ %i.g, %.lr.ph ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 4
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !551
  %i.dt = icmp eq i16 %i.ds, -1
  br i1 %i.dt, label %bb.o, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 8 ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.du, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -64
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !480
  br label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit: ; preds = %bb.j, %bb.i
  %i.dx = phi i64 [ 0, %bb.i ], [ %i.dw, %bb.j ]  ; 2 uses
  %i.dy = load i64, ptr %2, align 8, !tbaa !481
  %i.dz = trunc i64 %i.dx to i32
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !549
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 16
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit
  %.013.i = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.en, %bb.n ] ; 4 uses
  %.012.i = phi i32 [ %i.dz, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %.1.i, %bb.n ] ; 3 uses
  %.pn = phi i64 [ %i.dx, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.eo, %bb.n ]
  %.0.i = and i64 %.pn, %i.dy                     ; 2 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %.0.i ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 3 uses
  %i.ee = load i16, ptr %i.ed, align 4, !tbaa !551 ; 3 uses
  %i.ef = icmp sgt i16 %.013.i, %i.ee
  br i1 %i.ef, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.eg = icmp eq i16 %i.ee, -1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  br i1 %i.eg, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !207
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !568
  %i.el = load <2 x ptr>, ptr %i.du, align 8, !tbaa !323
  store i64 %i.ei, ptr %i.du, align 8, !tbaa !207
  store ptr %i.ek, ptr %i.eb, align 8, !tbaa !568
  store <2 x ptr> %i.el, ptr %i.eh, align 8, !tbaa !323
  store i16 %.013.i, ptr %i.ed, align 4, !tbaa !302
  %i.em = load i32, ptr %i.ec, align 8, !tbaa !692
  store i32 %.012.i, ptr %i.ec, align 8, !tbaa !692
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.114.i = phi i16 [ %i.ee, %bb.m ], [ %.013.i, %bb.k ]
  %.1.i = phi i32 [ %i.em, %bb.m ], [ %.012.i, %bb.k ]
  %i.en = add i16 %.114.i, 1
  %i.eo = add i64 %.0.i, 1
  br label %bb.k, !llvm.loop !2066

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false)
  store i32 %.012.i, ptr %i.ec, align 8, !tbaa !692
  store i16 %.013.i, ptr %i.ed, align 4, !tbaa !551
  br label %bb.o

bb.o:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit, %.lr.ph.split
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ep, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_EC2EmRKSB_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.316)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #48
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #5
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 10 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8, !tbaa !481
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #47 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !838
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !840
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4, !tbaa !551
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2, !tbaa !557
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2069

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS5_14ImageCacheFileEELb1EEESaISA_EEC2EmRKSB_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4, !tbaa !551
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2, !tbaa !557
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i16 -1, ptr %i.ai, align 4, !tbaa !551
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 30
  store i8 0, ptr %i.aj, align 2, !tbaa !557
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.al, align 4, !tbaa !551
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 54
  store i8 0, ptr %i.am, align 2, !tbaa !557
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i16 -1, ptr %i.ao, align 4, !tbaa !551
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 78
  store i8 0, ptr %i.ap, align 2, !tbaa !557
  %i.aq = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !2070

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !115

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !551
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !557
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8, !tbaa !549
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ay, align 8, !tbaa !558
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.az, align 1, !tbaa !559
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ba, align 8, !tbaa !839
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.bb, align 8, !tbaa !549
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.012.i.i, ptr %i.bc, align 8, !tbaa !552
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !688
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !558
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bf, align 1, !tbaa !559
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !837
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -18
  store i8 1, ptr %i.bh, align 2, !tbaa !557
  %i.bi = uitofp nneg i64 %.012.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bi, %.unr-lcssa ]
  %i.bj = fcmp olt float %5, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %5 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bl, float 1.500000e-01, float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bm, align 8, !tbaa !835
  %i.bn = fcmp olt float %6, 2.000000e-01
  %i.bo = select i1 %i.bn, float 2.000000e-01, float %6 ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bp, float f0x3F733333, float %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bq, align 4, !tbaa !836
  %i.br = fmul float %.sroa.speculated.i11, %.017202730
  %i.bs = fptoui float %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !560
  ret void
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !551
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %i.a, align 4, !tbaa !551
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EE5clearEv.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EE5clearEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev(ptr noundef nonnull align 8 dereferenceable(74) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !590  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !591  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !485
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !491  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw sub ptr %i.i, i32 1 seq_cst, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.i) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 400) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i16 -1, ptr %i.e, align 4, !tbaa !485
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !590
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !592
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #46
  br label %_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EED2Ev.exit

_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !485
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !491  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.e, i32 1 seq_cst, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.e) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 400) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  store i16 -1, ptr %i.a, align 4, !tbaa !485
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE5clearEv.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE5clearEv.exit: ; preds = %bb.a, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv(ptr noundef dead_on_return, i64, ptr noundef) local_unnamed_addr #12

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_119ImageCacheFootprintD2Ev:bb.a
  %i.ai = load i16, ptr %i.aa, align 4, !tbaa !631
  %i.aj = load i16, ptr %i.ab, align 4, !tbaa !631
  %i.ak = insertelement <8 x i16> poison, i16 %i.ac, i64 0
  %i.al = insertelement <8 x i16> %i.ak, i16 %i.ad, i64 1
  %i.am = insertelement <8 x i16> %i.al, i16 %i.ae, i64 2
  %i.an = insertelement <8 x i16> %i.am, i16 %i.af, i64 3
  %i.ao = insertelement <8 x i16> %i.an, i16 %i.ag, i64 4
  %i.ap = insertelement <8 x i16> %i.ao, i16 %i.ah, i64 5
  %i.aq = insertelement <8 x i16> %i.ap, i16 %i.ai, i64 6
  %i.ar = insertelement <8 x i16> %i.aq, i16 %i.aj, i64 7
  %i.as = icmp ne <8 x i16> %i.ar, splat (i16 -1) ; 8 uses
  %i.at = extractelement <8 x i1> %i.as, i64 0
  br i1 %i.at, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %i.u, align 4, !tbaa !631
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.au = extractelement <8 x i1> %i.as, i64 1
  br i1 %i.au, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %i.v, align 4, !tbaa !631
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.av = extractelement <8 x i1> %i.as, i64 2
  br i1 %i.av, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  store i16 -1, ptr %i.w, align 4, !tbaa !631
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.aw = extractelement <8 x i1> %i.as, i64 3
  br i1 %i.aw, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  store i16 -1, ptr %i.x, align 4, !tbaa !631
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.ax = extractelement <8 x i1> %i.as, i64 4
  br i1 %i.ax, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  store i16 -1, ptr %i.y, align 4, !tbaa !631
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.ay = extractelement <8 x i1> %i.as, i64 5
  br i1 %i.ay, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  store i16 -1, ptr %i.z, align 4, !tbaa !631
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.az = extractelement <8 x i1> %i.as, i64 6
  br i1 %i.az, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  store i16 -1, ptr %i.aa, align 4, !tbaa !631
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.ba = extractelement <8 x i1> %i.as, i64 7
  br i1 %i.ba, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i16 -1, ptr %i.ab, align 4, !tbaa !631
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !2071

middle.block:                                     ; preds = %pred.store.continue23
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader24

.lr.ph.i.i.i.i.i.preheader24:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader24, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bf, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEEEvPT_.exit.i.i.i.i.i ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader24 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !631
  %i.be = icmp eq i16 %i.bd, -1
  br i1 %i.be, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  store i16 -1, ptr %i.bc, align 4, !tbaa !631
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2072

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEEEvPT_.exit.i.i.i.i.i, %middle.block, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i.i, label %_ZN3tsl9robin_mapIN11OpenImageIO4v3_17ustringESt5arrayImLm10EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIS3_S5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !655
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.b to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.bk) #46
  br label %_ZN3tsl9robin_mapIN11OpenImageIO4v3_17ustringESt5arrayImLm10EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIS3_S5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit

_ZN3tsl9robin_mapIN11OpenImageIO4v3_17ustringESt5arrayImLm10EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIS3_S5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESA_EvT_SC_RSaIT0_E.exit.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_EC2EmRKSB_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.316)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #48
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #5
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 10 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8, !tbaa !481
  %i.u = icmp ugt i64 %.012.i.i, 96076792050570581
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 96
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #47 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !653
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !655
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4, !tbaa !631
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2, !tbaa !632
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 96 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2073

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EEESaISA_EEC2EmRKSB_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4, !tbaa !631
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2, !tbaa !632
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 100
  store i16 -1, ptr %i.ai, align 4, !tbaa !631
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 102
  store i8 0, ptr %i.aj, align 2, !tbaa !632
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 196
  store i16 -1, ptr %i.al, align 4, !tbaa !631
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 198
  store i8 0, ptr %i.am, align 2, !tbaa !632
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 292
  store i16 -1, ptr %i.ao, align 4, !tbaa !631
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 294
  store i8 0, ptr %i.ap, align 2, !tbaa !632
  %i.aq = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !2074

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !115

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !631
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !632
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8, !tbaa !639
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ay, align 8, !tbaa !640
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.az, align 1, !tbaa !641
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ba, align 8, !tbaa !654
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.bb, align 8, !tbaa !639
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.012.i.i, ptr %i.bc, align 8, !tbaa !652
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !689
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !640
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bf, align 1, !tbaa !641
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !841
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -90
  store i8 1, ptr %i.bh, align 2, !tbaa !632
  %i.bi = uitofp nneg i64 %.012.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bi, %.unr-lcssa ]
  %i.bj = fcmp olt float %5, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %5 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bl, float 1.500000e-01, float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bm, align 8, !tbaa !690
  %i.bn = fcmp olt float %6, 2.000000e-01
  %i.bo = select i1 %i.bn, float 2.000000e-01, float %6 ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bp, float f0x3F733333, float %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bq, align 4, !tbaa !691
  %i.br = fmul float %.sroa.speculated.i11, %.017202730
  %i.bs = fptoui float %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !642
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !631
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i16 -1, ptr %i.a, align 4, !tbaa !631
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EE5clearEv.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEELb1EE5clearEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11insert_implIS5_JRKSt21piecewise_construct_tSt5tupleIJRKS5_EESQ_IJEEEEES2_INSL_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.std::pair.289", align 8    ; 5 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !207 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !480
  br label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !481    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !639  ; 2 uses
  %.054 = and i64 %.0.i.i.i, %i.c                 ; 3 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %.054 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !631
  %.not55 = icmp slt i16 %i.h, 0
  br i1 %.not55, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.c, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit
  %.034.lcssa = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %i.o, %bb.c ] ; 2 uses
  %.0.lcssa = phi i64 [ %.054, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ], [ %.0, %bb.c ]
  %i.i = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.i, label %.lr.ph66, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit, %bb.c
  %i.j = phi ptr [ %i.p, %bb.c ], [ %i.f, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ] ; 2 uses
  %.057 = phi i64 [ %.0, %bb.c ], [ %.054, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ]
  %.03456 = phi i16 [ %i.o, %bb.c ], [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E8hash_keyIS5_EEmRKT_.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114
  %i.m = icmp eq ptr %i.l, %.sroa.0.0.copyload.i
  br i1 %i.m, label %.loopexit48, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = add i64 %.057, 1
  %i.o = add i16 %.03456, 1                       ; 3 uses
  %.0 = and i64 %i.n, %i.c                        ; 3 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !631
  %.not = icmp sgt i16 %i.o, %i.r
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !2075

.loopexit:                                        ; preds = %.lr.ph63, %.lr.ph66
  %.236.lcssa = phi i16 [ 0, %.lr.ph66 ], [ %i.z, %.lr.ph63 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.259, %.lr.ph66 ], [ %.2, %.lr.ph63 ]
  %i.s = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringESt5arrayImLm10EEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.s, label %.lr.ph66, label %._crit_edge, !llvm.loop !2076

.lr.ph66:                                         ; preds = %.preheader, %.loopexit
  %i.t = load i64, ptr %0, align 8, !tbaa !481    ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !639  ; 2 uses
  %.259 = and i64 %.0.i.i.i, %i.t                 ; 3 uses
  %i.v = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %.259
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i16, ptr %i.w, align 4, !tbaa !631
  %.not3760 = icmp slt i16 %i.x, 0
  br i1 %.not3760, label %.loopexit, label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph66, %.lr.ph63
  %.262 = phi i64 [ %.2, %.lr.ph63 ], [ %.259, %.lr.ph66 ]
  %.23661 = phi i16 [ %i.z, %.lr.ph63 ], [ 0, %.lr.ph66 ]
  %i.y = add i64 %.262, 1
  %i.z = add i16 %.23661, 1                       ; 3 uses
  %.2 = and i64 %i.y, %i.t                        ; 3 uses
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !631
  %.not37 = icmp sgt i16 %i.z, %i.ac
  br i1 %.not37, label %.loopexit, label %.lr.ph63, !llvm.loop !2077

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.135.lcssa = phi i16 [ %.034.lcssa, %.preheader ], [ %.236.lcssa, %.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 3 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !639
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %.1.lcssa ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !631
  %i.ah = icmp eq i16 %i.ag, -1
  %i.ai = trunc i64 %.0.i.i.i to i32              ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %3, align 8, !tbaa !651
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !207
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !207
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, i8 0, i64 80, i1 false)
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !692
  store i16 %.135.lcssa, ptr %i.af, align 4, !tbaa !631
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.ao = load i64, ptr %3, align 8, !tbaa !651
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !207
  store i64 %i.aq, ptr %5, align 8, !tbaa !207
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i8 0, i64 80, i1 false)
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoD2Ev:bb.a
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #46
  br label %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_iEclIiEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !396  ; 2 uses
  %.not.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN9Imath_3_18Matrix44IfEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN9Imath_3_18Matrix44IfEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #46
  br label %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteIN9Imath_3_18Matrix44IfEEEclEPS2_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !390  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !389
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #46
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !398    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i.i ], [ %i.l, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !204  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !206  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #46
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.t, %i.n
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !397
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #46
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i

_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !6

_ZNSt12_Destroy_auxILb0EE9__destroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EC2EmRKSC_RKSE_RKSF_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.316)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #48
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #5
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 10 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8, !tbaa !481
  %i.u = icmp ugt i64 %.012.i.i, 192153584101141162
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 48
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #47 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !141
  %xtraiter = and i64 %.012.i.i, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i ] ; 3 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i ]
  store i16 -1, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 2
  store i8 0, ptr %i.aa, align 2, !tbaa !120
  %i.ab = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2081

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %.012.i.i, 8
  br i1 %i.ad, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i16 -1, ptr %.08.i.i.i.i.i, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2
  store i8 0, ptr %i.ae, align 2, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i16 -1, ptr %i.af, align 8, !tbaa !119
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 50
  store i8 0, ptr %i.ag, align 2, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store i16 -1, ptr %i.ah, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 98
  store i8 0, ptr %i.ai, align 2, !tbaa !120
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store i16 -1, ptr %i.aj, align 8, !tbaa !119
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 146
  store i8 0, ptr %i.ak, align 2, !tbaa !120
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  store i16 -1, ptr %i.al, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 194
  store i8 0, ptr %i.am, align 2, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  store i16 -1, ptr %i.an, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 242
  store i8 0, ptr %i.ao, align 2, !tbaa !120
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  store i16 -1, ptr %i.ap, align 8, !tbaa !119
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 290
  store i8 0, ptr %i.aq, align 2, !tbaa !120
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 336
  store i16 -1, ptr %i.ar, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 338
  store i8 0, ptr %i.as, align 2, !tbaa !120
  %i.at = add nsw i64 %.057.i.i.i.i.i, -8         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !2082

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.aw = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11 acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.thread, !prof !115

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11) #5
  %.not.i10 = icmp eq i32 %i.ay, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 -1, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, align 8, !tbaa !119
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, i64 2), align 2, !tbaa !120
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11) #5
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapImS8_St4hashImESt8equal_toImESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucketB5cxx11, ptr %i.av, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bb, align 8, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bc, align 1, !tbaa !131
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.bd, align 8, !tbaa !135
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.be, align 8, !tbaa !129
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.012.i.i, ptr %i.bf, align 8, !tbaa !545
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bg, align 8, !tbaa !842
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bh, align 8, !tbaa !130
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bi, align 1, !tbaa !131
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !843
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -46
  store i8 1, ptr %i.bk, align 2, !tbaa !120
  %i.bl = uitofp nneg i64 %.012.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bl, %.unr-lcssa ]
  %i.bm = fcmp olt float %5, 0.000000e+00
  %i.bn = select i1 %i.bm, float 0.000000e+00, float %5 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bo, float 1.500000e-01, float %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bp, align 8, !tbaa !844
  %i.bq = fcmp olt float %6, 2.000000e-01
  %i.br = select i1 %i.bq, float 2.000000e-01, float %6 ; 2 uses
  %i.bs = fcmp ogt float %i.br, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bs, float f0x3F733333, float %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bt, align 4, !tbaa !845
  %i.bu = fmul float %.sroa.speculated.i11, %.017202730
  %i.bv = fptoui float %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_EC2EmRKSA_RKSC_RKSD_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.316)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #48
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #5
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 10 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8, !tbaa !481
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #47 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !155
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !159
  %xtraiter = and i64 %.012.i.i, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i ] ; 3 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i ]
  store i16 -1, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 2
  store i8 0, ptr %i.aa, align 2, !tbaa !144
  %i.ab = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2083

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EEESaIS9_EEC2EmRKSA_.exit.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %.012.i.i, 8
  br i1 %i.ad, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i16 -1, ptr %.08.i.i.i.i.i, align 8, !tbaa !143
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2
  store i8 0, ptr %i.ae, align 2, !tbaa !144
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i16 -1, ptr %i.af, align 8, !tbaa !143
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 26
  store i8 0, ptr %i.ag, align 2, !tbaa !144
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i16 -1, ptr %i.ah, align 8, !tbaa !143
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 50
  store i8 0, ptr %i.ai, align 2, !tbaa !144
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i16 -1, ptr %i.aj, align 8, !tbaa !143
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 74
  store i8 0, ptr %i.ak, align 2, !tbaa !144
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store i16 -1, ptr %i.al, align 8, !tbaa !143
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 98
  store i8 0, ptr %i.am, align 2, !tbaa !144
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 120
  store i16 -1, ptr %i.an, align 8, !tbaa !143
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 122
  store i8 0, ptr %i.ao, align 2, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store i16 -1, ptr %i.ap, align 8, !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 146
  store i8 0, ptr %i.aq, align 2, !tbaa !144
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  store i16 -1, ptr %i.ar, align 8, !tbaa !143
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 170
  store i8 0, ptr %i.as, align 2, !tbaa !144
  %i.at = add nsw i64 %.057.i.i.i.i.i, -8         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i.7, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !2084

bb.f:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.aw = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.thread, !prof !115

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10 = icmp eq i32 %i.ay, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i16 -1, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket, align 8, !tbaa !143
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket, i64 2), align 2, !tbaa !144
  %i.az = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEELb0EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.av, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bb, align 8, !tbaa !152
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bc, align 1, !tbaa !153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.bd, align 8, !tbaa !156
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.be, align 8, !tbaa !151
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.012.i.i, ptr %i.bf, align 8, !tbaa !846
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bg, align 8, !tbaa !847
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bh, align 8, !tbaa !152
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bi, align 1, !tbaa !153
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !848
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -22
  store i8 1, ptr %i.bk, align 2, !tbaa !144
  %i.bl = uitofp nneg i64 %.012.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bl, %.unr-lcssa ]
  %i.bm = fcmp olt float %5, 0.000000e+00
  %i.bn = select i1 %i.bm, float 0.000000e+00, float %5 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bo, float 1.500000e-01, float %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bp, align 8, !tbaa !849
  %i.bq = fcmp olt float %6, 2.000000e-01
  %i.br = select i1 %i.bq, float 2.000000e-01, float %6 ; 2 uses
  %i.bs = fcmp ogt float %i.br, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bs, float f0x3F733333, float %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bt, align 4, !tbaa !850
  %i.bu = fmul float %.sroa.speculated.i11, %.017202730
  %i.bv = fptoui float %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !154
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !406  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !405  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #5
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !406
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.g = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !452
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !285  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !284  ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.v, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.q = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !138 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !139
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.m, align 8, !tbaa !285
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.w = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !286
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !278 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !280
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #46
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 160) #46
  br label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2), ptr noundef) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEE8allocateEmPKv.exit.i, !prof !279

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 461168601842738790
  br i1 %i.b, label %bb.d, label %bb.e

end_hunk_4
begin_hunk_5_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm:bb.a
  %i.an = load i64, ptr %i.al, align 8, !tbaa !288
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !288
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !288
  store i64 %i.an, ptr %i.am, align 8, !tbaa !288
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.a, align 8, !tbaa !132
  %i.ar = load <2 x float>, ptr %i.ap, align 8, !tbaa !132
  store <2 x float> %i.aq, ptr %i.ap, align 8, !tbaa !132
  store <2 x float> %i.ar, ptr %i.a, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load i8, ptr %i.as, align 8, !tbaa !473, !range !395, !noundef !326
  %i.av = load i8, ptr %i.at, align 8, !tbaa !473, !range !395, !noundef !326
  store i8 %i.av, ptr %i.as, align 8, !tbaa !473
  store i8 %i.au, ptr %i.at, align 8, !tbaa !473
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !473, !range !395, !noundef !326
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !473, !range !395, !noundef !326
  store i8 %i.az, ptr %i.aw, align 1, !tbaa !473
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !473
  %.not4.i.i.i.i = icmp eq ptr %i.z, %i.ac
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.z, %._crit_edge ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !485
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !491 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = atomicrmw sub ptr %i.be, i32 1 seq_cst, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.e, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.be) #5
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef 400) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  store i16 -1, ptr %i.ba, align 4, !tbaa !485
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, %i.ac
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.w, align 8, !tbaa !590
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge
  %i.bi = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.z, %._crit_edge ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !592
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #46
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.015.019 = phi ptr [ %i.bx, %bb.i ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 4
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !485
  %i.bp = icmp eq i16 %i.bo, -1
  br i1 %i.bp, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bq, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i.i, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E8hash_keyIS5_EEmRKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -64
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !480
  br label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E8hash_keyIS5_EEmRKT_.exit

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E8hash_keyIS5_EEmRKT_.exit: ; preds = %bb.h, %bb.g
  %i.bt = phi i64 [ 0, %bb.g ], [ %i.bs, %bb.h ]  ; 2 uses
  %i.bu = load i64, ptr %2, align 8, !tbaa !481
  %i.bv = and i64 %i.bu, %i.bt
  %i.bw = trunc i64 %i.bt to i32
  invoke void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %i.bv, i16 noundef signext 0, i32 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bq)
          to label %bb.i unwind label %.split

bb.i:                                             ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E8hash_keyIS5_EEmRKT_.exit, %.lr.ph.split
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bx, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

.split:                                           ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E8hash_keyIS5_EEmRKT_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.by, %.split ], [ %i.u, %.split.us ]
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_ED2Ev(ptr noundef nonnull align 8 dereferenceable(74) %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EC2EmRKSC_RKSE_RKSF_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.316)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #48
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #5
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 10 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8, !tbaa !481
  %i.u = icmp ugt i64 %.012.i.i, 384307168202282325
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 24
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #47 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !590
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !592
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4, !tbaa !485
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2, !tbaa !567
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2117

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4, !tbaa !485
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2, !tbaa !567
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i16 -1, ptr %i.ai, align 4, !tbaa !485
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 30
  store i8 0, ptr %i.aj, align 2, !tbaa !567
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i16 -1, ptr %i.al, align 4, !tbaa !485
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 54
  store i8 0, ptr %i.am, align 2, !tbaa !567
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i16 -1, ptr %i.ao, align 4, !tbaa !485
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 78
  store i8 0, ptr %i.ap, align 2, !tbaa !567
  %i.aq = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !2118

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !115

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !485
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !567
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8, !tbaa !482
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ay, align 8, !tbaa !566
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.az, align 1, !tbaa !572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ba, align 8, !tbaa !591
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.bb, align 8, !tbaa !482
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.012.i.i, ptr %i.bc, align 8, !tbaa !487
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !565
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !566
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bf, align 1, !tbaa !572
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !488
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -18
  store i8 1, ptr %i.bh, align 2, !tbaa !567
  %i.bi = uitofp nneg i64 %.012.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bi, %.unr-lcssa ]
  %i.bj = fcmp olt float %5, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %5 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bl, float 1.500000e-01, float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bm, align 8, !tbaa !564
  %i.bn = fcmp olt float %6, 2.000000e-01
  %i.bo = select i1 %i.bn, float 2.000000e-01, float %6 ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bp, float f0x3F733333, float %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bq, align 4, !tbaa !854
  %i.br = fmul float %.sroa.speculated.i11, %.017202730
  %i.bs = fptoui float %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !573
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.013 = phi i16 [ %2, %bb.a ], [ %i.y, %bb.j ]  ; 4 uses
  %.012 = phi i32 [ %3, %bb.a ], [ %.1, %bb.j ]   ; 3 uses
  %.0 = phi i64 [ %1, %bb.a ], [ %i.ab, %bb.j ]   ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !482
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.0 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 4 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !485  ; 2 uses
  %i.g = icmp sgt i16 %.013, %i.f
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i16 %i.f, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %4, align 8, !tbaa !207
  store i64 %i.j, ptr %i.i, align 8, !tbaa !207
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !491
  store ptr %i.l, ptr %i.k, align 8, !tbaa !491
  store ptr null, ptr %i.b, align 8, !tbaa !491
  store i32 %.012, ptr %i.d, align 8, !tbaa !692
  store i16 %.013, ptr %i.e, align 4, !tbaa !485
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !207
  %i.m = load i64, ptr %i.i, align 8, !tbaa !207
  store i64 %i.m, ptr %4, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.i, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !491
  store ptr null, ptr %i.b, align 8, !tbaa !491
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !491
  store ptr null, ptr %i.n, align 8, !tbaa !491
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !491  ; 4 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !491
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = atomicrmw sub ptr %i.q, i32 1 seq_cst, align 4
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.g, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.q) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !491  ; 4 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !491
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i4.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i
  %i.u = atomicrmw sub ptr %i.t, i32 1 seq_cst, align 4
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.t) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 400) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i, %bb.h, %bb.i
  %i.w = load i16, ptr %i.e, align 4, !tbaa !302
  store i16 %.013, ptr %i.e, align 4, !tbaa !302
  %i.x = load i32, ptr %i.d, align 8, !tbaa !692
  store i32 %.012, ptr %i.d, align 8, !tbaa !692
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit, %bb.b
  %.114 = phi i16 [ %i.w, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit ], [ %.013, %bb.b ]
  %.1 = phi i32 [ %i.x, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit ], [ %.012, %bb.b ]
  %i.y = add i16 %.114, 1
  %i.z = add i64 %.0, 1
  %i.aa = load i64, ptr %0, align 8, !tbaa !481
  %i.ab = and i64 %i.aa, %i.z
  br label %bb.b, !llvm.loop !2119
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %1 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !207
  %i.e = load i64, ptr %i.d, align 8, !tbaa !207
  store i64 %i.e, ptr %4, align 8, !tbaa !207
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.d, align 8, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !491
  store ptr null, ptr %i.f, align 8, !tbaa !491
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !491
  store ptr null, ptr %i.g, align 8, !tbaa !491
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !491  ; 4 uses
  store ptr %i.i, ptr %i.f, align 8, !tbaa !491
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = atomicrmw sub ptr %i.j, i32 1 seq_cst, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.j) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
end_hunk_5
begin_hunk_6_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 400) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14: ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEaSEOS3_.exit.i.i.i.i12, %bb.l, %bb.m
  %i.at = load i16, ptr %i.ae, align 2, !tbaa !302
  store i16 %storemerge30, ptr %i.ae, align 2, !tbaa !302
  %i.au = load i32, ptr %i.af, align 8, !tbaa !692
  store i32 %.02328, ptr %i.af, align 8, !tbaa !692
  %.pre = load i64, ptr %0, align 8, !tbaa !481
  %.pre37 = load ptr, ptr %i.a, align 8, !tbaa !482
  br label %bb.n

bb.n:                                             ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14, %bb.f
  %i.av = phi ptr [ %.pre37, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14 ], [ %i.ab, %bb.f ] ; 2 uses
  %i.aw = phi i64 [ %.pre, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14 ], [ %i.ac, %bb.f ] ; 2 uses
  %.125 = phi i16 [ %i.at, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14 ], [ %storemerge30, %bb.f ]
  %.1 = phi i32 [ %i.au, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit14 ], [ %.02328, %bb.f ] ; 2 uses
  %i.ax = add i64 %.029, 1
  %i.ay = and i64 %i.aw, %i.ax                    ; 2 uses
  %storemerge = add i16 %.125, 1                  ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !485 ; 2 uses
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %._crit_edge, label %bb.f, !llvm.loop !2120

._crit_edge:                                      ; preds = %bb.n, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit
  %.023.lcssa = phi i32 [ %i.r, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit ], [ %.1, %bb.n ]
  %storemerge.lcssa = phi i16 [ %storemerge27, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit ], [ %storemerge, %bb.n ]
  %.lcssa26 = phi ptr [ %i.w, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit ], [ %i.az, %bb.n ] ; 3 uses
  %.lcssa = phi ptr [ %i.x, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE25swap_with_value_in_bucketERsRjRS9_.exit ], [ %i.ba, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa26, i64 8
  %i.be = load i64, ptr %4, align 8, !tbaa !207
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !207
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa26, i64 16
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !491
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !491
  store ptr null, ptr %i.f, align 8, !tbaa !491
  store i32 %.023.lcssa, ptr %.lcssa26, align 8, !tbaa !692
  store i16 %storemerge.lcssa, ptr %.lcssa, align 4, !tbaa !485
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E16clear_and_shrinkEv(ptr noundef nonnull align 8 dereferenceable(74) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !481
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !590  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !591  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !485
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !491  ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = atomicrmw sub ptr %i.i, i32 1 seq_cst, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400) %i.i) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 400) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i16 -1, ptr %i.e, align 4, !tbaa !485
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !591
  br label %_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EE5clearEv.exit

_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESB_EvT_SD_RSaIT0_E.exit.i.i
  %i.m = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEv.exit, !prof !115

bb.e:                                             ; preds = %_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EE5clearEv.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !485
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !567
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEv.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEv.exit: ; preds = %_ZNSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringENS5_13intrusive_ptrINS5_14ImageCacheFileEEEELb1EEESaISB_EE5clearEv.exit, %bb.e, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringENS4_13intrusive_ptrINS4_14ImageCacheFileEEEENS_9robin_mapIS5_S8_St4hashIS5_ESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.q, align 8, !tbaa !482
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.s, align 8, !tbaa !566
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.t, align 1, !tbaa !572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_EC2EmRKSB_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.316)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #48
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #5
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit

_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i, %bb.e
  %.012.i.i = phi i64 [ %i.s, %bb.e ], [ %1, %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i ] ; 10 uses
  %i.t = add i64 %.012.i.i, -1
  store i64 %i.t, ptr %0, align 8, !tbaa !481
  %i.u = icmp ugt i64 %.012.i.i, 164703072086692425
  br i1 %i.u, label %.noexc, label %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i

.noexc:                                           ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i: ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = mul nuw nsw i64 %.012.i.i, 56
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #47 ; 5 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !587
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.x, i64 %.012.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !589
  %xtraiter = and i64 %.012.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i16 -1, ptr %i.aa, align 4, !tbaa !575
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 6
  store i8 0, ptr %i.ab, align 2, !tbaa !576
  %i.ac = add nsw i64 %.057.i.i.i.i.i.prol, -1    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2121

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.x, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %.012.i.i, %_ZNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS5_13intrusive_ptrINS5_14ImageCacheTileEEEELb1EEESaISB_EEC2EmRKSC_.exit.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %.012.i.i, 4
  br i1 %i.ae, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i16 -1, ptr %i.af, align 4, !tbaa !575
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 6
  store i8 0, ptr %i.ag, align 2, !tbaa !576
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store i32 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 60
  store i16 -1, ptr %i.ai, align 4, !tbaa !575
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 62
  store i8 0, ptr %i.aj, align 2, !tbaa !576
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 116
  store i16 -1, ptr %i.al, align 4, !tbaa !575
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 118
  store i8 0, ptr %i.am, align 2, !tbaa !576
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 168
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 172
  store i16 -1, ptr %i.ao, align 4, !tbaa !575
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 174
  store i8 0, ptr %i.ap, align 2, !tbaa !576
  %i.aq = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i.i.i.3, label %.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !2122

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.at = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.g, label %.thread, !prof !115

bb.g:                                             ; preds = %bb.f
  %i.av = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i10, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !575
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !576
  %i.aw = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEENS_9robin_mapIS5_S8_NS5_6HasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.as, align 8, !tbaa !582
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.ay, align 8, !tbaa !583
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.az, align 1, !tbaa !584
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  br label %bb.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %.lcssa, ptr %i.ba, align 8, !tbaa !588
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.bb, align 8, !tbaa !582
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.012.i.i, ptr %i.bc, align 8, !tbaa !669
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.bd, align 8, !tbaa !678
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.be, align 8, !tbaa !583
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.bf, align 1, !tbaa !584
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !672
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -50
  store i8 1, ptr %i.bh, align 2, !tbaa !576
  %i.bi = uitofp nneg i64 %.012.i.i to float
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.unr-lcssa
  %.017202730 = phi float [ 0.000000e+00, %.thread ], [ %i.bi, %.unr-lcssa ]
  %i.bj = fcmp olt float %5, 0.000000e+00
  %i.bk = select i1 %i.bj, float 0.000000e+00, float %5 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 1.500000e-01
  %.sroa.speculated.i = select i1 %i.bl, float 1.500000e-01, float %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %.sroa.speculated.i, ptr %i.bm, align 8, !tbaa !855
  %i.bn = fcmp olt float %6, 2.000000e-01
  %i.bo = select i1 %i.bn, float 2.000000e-01, float %6 ; 2 uses
  %i.bp = fcmp ogt float %i.bo, f0x3F733333
  %.sroa.speculated.i11 = select i1 %i.bp, float f0x3F733333, float %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %.sroa.speculated.i11, ptr %i.bq, align 4, !tbaa !856
  %i.br = fmul float %.sroa.speculated.i11, %.017202730
  %i.bs = fptoui float %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !585
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !575
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !517  ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE13destroy_valueEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.e, i32 1 seq_cst, align 4
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE13destroy_valueEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !510
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !532
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 25220
  %i.o = atomicrmw sub ptr %i.n, i32 1 seq_cst, align 4 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 25200
  %i.q = atomicrmw sub ptr %i.p, i64 %i.m seq_cst, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 77
  %i.s = load i8, ptr %i.r, align 1, !tbaa !533, !range !395, !noundef !326
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 88) #46
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE13destroy_valueEv.exit.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE13destroy_valueEv.exit.i: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i.i.i, %bb.c, %bb.b
  store i16 -1, ptr %i.a, align 4, !tbaa !575
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE5clearEv.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE5clearEv.exit: ; preds = %bb.a, %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_16TileIDENS4_13intrusive_ptrINS4_14ImageCacheTileEEEELb1EE13destroy_valueEv.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN11OpenImageIO4v3_16TileIDENS1_13intrusive_ptrINS1_14ImageCacheTileEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !517  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !510
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !532
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 25220
  %i.l = atomicrmw sub ptr %i.k, i32 1 seq_cst, align 4 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 25200
  %i.n = atomicrmw sub ptr %i.m, i64 %i.j seq_cst, align 8 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 77
  %i.p = load i8, ptr %i.o, align 1, !tbaa !533, !range !395, !noundef !326
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit: ; preds = %bb.a, %bb.b, %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_123ImageCachePerThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !517  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !510
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !325, !nonnull !326, !align !327 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !532
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 25220
end_hunk_6
begin_hunk_7_@_ZNSt8__detail17__regex_algo_implIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEEcNS5_12regex_traitsIcEEEEbT_SH_RNS5_13match_resultsISH_T0_EERKNS5_11basic_regexIT1_T2_EENSt15regex_constants15match_flag_typeENS_20_RegexExecutorPolicyEb:bb.a
  %i.q = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 0)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.f, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.r = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  br i1 %i.r, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1091 ; 2 uses
  %i.u = and i32 %i.t, 64
  %.not.i64 = icmp eq i32 %i.u, 0
  br i1 %.not.i64, label %bb.j, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.j:                                             ; preds = %bb.i
  %i.v = or i32 %i.t, 128
  store i32 %i.v, ptr %i.s, align 8, !tbaa !1092
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.noexc65, %bb.j
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !207  ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !207
  %.not2.not.i.not.not = icmp ne ptr %i.x, %i.y   ; 3 uses
  br i1 %.not2.not.i.not.not, label %bb.l, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !1093
  %.cast.i = ptrtoint ptr %i.z to i64
  store i64 %.cast.i, ptr %i.o, align 8, !tbaa !207
  %i.aa = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %9, i8 noundef zeroext 1)
          to label %.noexc65 unwind label %.loopexit

.noexc65:                                         ; preds = %bb.l
  br i1 %i.aa, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit, label %bb.k, !llvm.loop !2488

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit: ; preds = %.noexc65, %bb.k, %bb.i, %.noexc, %bb.f
  %.060.in = phi i1 [ %i.q, %bb.f ], [ false, %bb.i ], [ true, %.noexc ], [ %.not2.not.i.not.not, %bb.k ], [ %.not2.not.i.not.not, %.noexc65 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1094 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE8_M_matchEv.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1095 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1096 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !304 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !305
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !96

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !1095
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.n
  %i.aq = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.af, %bb.n ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1097
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.p, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1098 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1099
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.q, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.bd = load ptr, ptr %9, align 8, !tbaa !304   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !305
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bi) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br i1 %.060.in, label %bb.aa, label %bb.ag

bb.s:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 0, i64 32, i1 false)
  store ptr %0, ptr %i.bj, align 8, !tbaa !207
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %1, ptr %i.bk, align 8, !tbaa !207
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %3, ptr %i.bl, align 8, !tbaa !1100
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %.pre, ptr %i.bm, align 8, !tbaa !924
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %2, ptr %i.bn, align 8, !tbaa !1101
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !918 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !894 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 48                ; 7 uses
  %i.bx = icmp ugt i64 %i.bw, 576460752303423487
  %i.by = ptrtoint ptr %0 to i64
  br i1 %i.bx, label %.noexc.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

.noexc.i:                                         ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i66 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i66, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.bz = shl nuw nsw i64 %i.bw, 4
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #47 ; 4 uses
  store ptr %i.ca, ptr %i.bo, align 8, !tbaa !1098
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.bw
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1099
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ca, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bw, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1093
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.cd, align 8, !tbaa !1103
  %i.ce = add nsw i64 %.01012.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2489

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.ca, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.bw, %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cg = icmp ult i64 %i.bw, 8
  br i1 %i.cg, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1093
  %i.ch = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ch, align 8, !tbaa !1103
  %i.ci = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ci, align 8, !tbaa !1093
  %i.cj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.cj, align 8, !tbaa !1103
  %i.ck = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ck, align 8, !tbaa !1093
  %i.cl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.cl, align 8, !tbaa !1103
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.cm, align 8, !tbaa !1093
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.cn, align 8, !tbaa !1103
  %i.co = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.co, align 8, !tbaa !1093
  %i.cp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.cp, align 8, !tbaa !1103
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.cq, align 8, !tbaa !1093
  %i.cr = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.cr, align 8, !tbaa !1103
  %i.cs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.cs, align 8, !tbaa !1093
  %i.ct = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.ct, align 8, !tbaa !1103
  %i.cu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.cu, align 8, !tbaa !1093
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.cv, align 8, !tbaa !1103
  %i.cw = add nsw i64 %.01012.i.i.i.i.i.i, -8     ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !97

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.cx, %.lr.ph.i.i.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.cy, align 8, !tbaa !1104
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.db = load i64, ptr %i.da, align 8, !tbaa !891
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !2490
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  store ptr null, ptr %i.dc, align 8, !tbaa !1093
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.de = and i32 %4, 128
  %.not.i68 = icmp eq i32 %i.de, 0
  %i.df = and i32 %4, -6
  %spec.select = select i1 %.not.i68, i32 %4, i32 %i.df
  store i32 %spec.select, ptr %i.dd, align 8, !tbaa !1092
  br i1 %6, label %bb.t, label %bb.v

common.resume:                                    ; preds = %bb.g, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.g ], [ %i.dm, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %.loopexit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.by, ptr %i.dg, align 8, !tbaa !207
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 116 ; 2 uses
  store i8 0, ptr %i.dh, align 4, !tbaa !1107
  store i64 0, ptr %i.dc, align 8, !tbaa !207
  %i.di = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %10, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc69 unwind label %bb.u   ; 0 uses

.noexc69:                                         ; preds = %bb.t
  %i.dj = load i64, ptr %i.cz, align 8, !tbaa !1108
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %10, i8 noundef zeroext 0, i64 noundef %i.dj)
          to label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit unwind label %bb.u

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit: ; preds = %.noexc69
  %i.dk = load i8, ptr %i.dh, align 4, !tbaa !1107, !range !395, !noundef !326
  %i.dl = trunc nuw i8 %i.dk to i1
  br label %bb.w

bb.u:                                             ; preds = %.noexc69, %bb.t, %bb.v
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %common.resume

bb.v:                                             ; preds = %.loopexit.i
  %i.dn = invoke noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %10)
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit, %bb.v
  %.1.in = phi i1 [ %i.dl, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE8_M_matchEv.exit ], [ %i.dn, %bb.v ]
  %i.do = load ptr, ptr %i.bo, align 8, !tbaa !1098 ; 3 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i71, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1099
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.do to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dt) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72: ; preds = %bb.x, %bb.w
  %i.du = load ptr, ptr %10, align 8, !tbaa !304  ; 3 uses
  %.not.i.i.i1.i73 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i1.i73, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !305
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dz) #46
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br i1 %.1.in, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  %i.ea = load ptr, ptr %2, align 8, !tbaa !295   ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !295 ; 3 uses
  %.not8184 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not8184, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %.cast = ptrtoint ptr %1 to i64
  br label %bb.ab

._crit_edge:                                      ; preds = %bb.ad, %bb.aa
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = getelementptr i8, ptr %i.ea, i64 %i.ef  ; 10 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -48    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 -24    ; 2 uses
  br i1 %6, label %bb.ae, label %bb.af

bb.ab:                                            ; preds = %.lr.ph, %bb.ad
  %.sroa.076.085 = phi ptr [ %i.ea, %.lr.ph ], [ %i.en, %bb.ad ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 16
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !1111, !range !395, !noundef !326
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 8
  store ptr %1, ptr %i.em, align 8, !tbaa !207
  store i64 %.cast, ptr %.sroa.076.085, align 8, !tbaa !207
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.076.085, i64 24 ; 2 uses
  %.not81 = icmp eq ptr %i.en, %i.ec
  br i1 %.not81, label %._crit_edge, label %bb.ab

bb.ae:                                            ; preds = %._crit_edge
  %i.eo = getelementptr i8, ptr %i.eg, i64 -32
  store i8 0, ptr %i.eo, align 8, !tbaa !1111
  store ptr %0, ptr %i.eh, align 8, !tbaa !207
  %i.ep = getelementptr i8, ptr %i.eg, i64 -40
  store ptr %0, ptr %i.ep, align 8, !tbaa !207
  %i.eq = getelementptr i8, ptr %i.eg, i64 -8
  store i8 0, ptr %i.eq, align 8, !tbaa !1111
  store ptr %1, ptr %i.ei, align 8, !tbaa !207
  %i.er = getelementptr i8, ptr %i.eg, i64 -16
  store ptr %1, ptr %i.er, align 8, !tbaa !207
  br label %bb.ah

bb.af:                                            ; preds = %._crit_edge
  store ptr %0, ptr %i.eh, align 8, !tbaa !207
  %i.es = getelementptr i8, ptr %i.eg, i64 -40
  %i.et = load i64, ptr %i.ea, align 8, !tbaa !207 ; 2 uses
  store i64 %i.et, ptr %i.es, align 8, !tbaa !207
  %.cast82 = inttoptr i64 %i.et to ptr
  %i.eu = icmp ne ptr %0, %.cast82
  %i.ev = getelementptr i8, ptr %i.eg, i64 -32
  %i.ew = zext i1 %i.eu to i8
  store i8 %i.ew, ptr %i.ev, align 8, !tbaa !1111
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !207 ; 2 uses
  store i64 %i.ey, ptr %i.ei, align 8, !tbaa !207
  %i.ez = getelementptr i8, ptr %i.eg, i64 -16
  store ptr %1, ptr %i.ez, align 8, !tbaa !207
  %.cast83 = inttoptr i64 %i.ey to ptr
  %i.fa = icmp ne ptr %1, %.cast83
  %i.fb = getelementptr i8, ptr %i.eg, i64 -8
  %i.fc = zext i1 %i.fa to i8
  store i8 %i.fc, ptr %i.fb, align 8, !tbaa !1111
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 0, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.fe, align 8, !tbaa !207
  %.cast.i75 = ptrtoint ptr %1 to i64
  store i64 %.cast.i75, ptr %7, align 8, !tbaa !207
  call void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(17) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %bb.ag ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEC2ESB_SB_RSt6vectorISD_SE_ERKNS5_11basic_regexIcSG_EENSt15regex_constants15match_flag_typeE(ptr noundef nonnull align 8 dereferenceable(141) %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !207
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %4, ptr %i.c, align 8, !tbaa !1100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1071 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !924
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %3, ptr %i.g, align 8, !tbaa !1101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !918  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !894  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 48                  ; 7 uses
  %i.q = icmp ugt i64 %i.p, 576460752303423487
  br i1 %i.q, label %bb.b, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 4
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #47
          to label %.noexc11 unwind label %bb.d   ; 4 uses

.noexc11:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  store ptr %i.s, ptr %i.h, align 8, !tbaa !1098
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1099
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc11, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.prol ], [ %i.s, %.noexc11 ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.noexc11 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc11 ]
  store ptr null, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !1093
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !1103
  %i.w = add nsw i64 %.01012.i.i.i.i.i.prol, -1   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2491

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc11
  %.lcssa.unr = phi ptr [ poison, %.noexc11 ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.unr = phi ptr [ %i.s, %.noexc11 ], [ %i.x, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i64 [ %i.p, %.noexc11 ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.p, 8
  br i1 %i.y, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i, align 8, !tbaa !1093
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !1103
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store ptr null, ptr %i.aa, align 8, !tbaa !1093
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  store i32 0, ptr %i.ab, align 8, !tbaa !1103
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !1093
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  store i32 0, ptr %i.ad, align 8, !tbaa !1103
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store ptr null, ptr %i.ae, align 8, !tbaa !1093
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 56
  store i32 0, ptr %i.af, align 8, !tbaa !1103
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store ptr null, ptr %i.ag, align 8, !tbaa !1093
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 72
  store i32 0, ptr %i.ah, align 8, !tbaa !1103
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store ptr null, ptr %i.ai, align 8, !tbaa !1093
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 88
  store i32 0, ptr %i.aj, align 8, !tbaa !1103
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store ptr null, ptr %i.ak, align 8, !tbaa !1093
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 104
  store i32 0, ptr %i.al, align 8, !tbaa !1103
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store ptr null, ptr %i.am, align 8, !tbaa !1093
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 120
  store i32 0, ptr %i.an, align 8, !tbaa !1103
  %i.ao = add nsw i64 %.01012.i.i.i.i.i, -8       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.7, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !1112
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i, %.loopexit.loopexit
  %i.aq = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.f, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i ] ; 3 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.lcssa, %.loopexit.loopexit ], [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !1104
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !891
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !918
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !894
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i8 0, i64 24, i1 false)
  %i.bd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #47
          to label %bb.c unwind label %.body      ; 2 uses

.body:                                            ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.as) #5
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !1098 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.e

bb.c:                                             ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bd, i8 0, i64 %i.bc, i1 false)
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !1094
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.au, ptr %i.bh, align 8, !tbaa !2492
  %i.bi = and i32 %5, 128
  %.not = icmp eq i32 %i.bi, 0
  %i.bj = and i32 %5, -6
  %spec.select = select i1 %.not, i32 %5, i32 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %spec.select, ptr %i.bk, align 8, !tbaa !1092
  ret void

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i, %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

bb.e:                                             ; preds = %.body
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1099
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bq) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %bb.e, %.body, %bb.d
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.d ], [ %i.be, %.body ], [ %i.be, %bb.e ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !304   ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !305
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(141) dereferenceable(141) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1094 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1095 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1096 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !305
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !96

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1095
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1097
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit.i.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1098 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1099
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit, %bb.f
  %i.ac = load ptr, ptr %0, align 8, !tbaa !304   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !305
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_searchEv(ptr noundef nonnull align 8 dereferenceable(117) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !207
  store i64 %i.c, ptr %i.b, align 8, !tbaa !207
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  store i8 0, ptr %i.d, align 4, !tbaa !1107
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !207
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1113, !nonnull !326, !align !747
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !2493 ; 0 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !1108
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.j), !inline_history !2493
  %i.k = load i8, ptr %i.d, align 4, !tbaa !1107, !range !395, !noundef !326
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !1114 ; 2 uses
  %i.o = and i32 %i.n, 64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = or i32 %i.n, 128
  store i32 %i.p, ptr %i.m, align 8, !tbaa !1092
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !207  ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !207
  %.not2.not.not = icmp ne ptr %i.r, %i.s         ; 3 uses
  br i1 %.not2.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1093
  %.cast = ptrtoint ptr %i.t to i64
  store i64 %.cast, ptr %i.b, align 8, !tbaa !207
  store i8 0, ptr %i.d, align 4, !tbaa !1107
  store i64 0, ptr %i.f, align 8, !tbaa !207
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !1113, !nonnull !326, !align !747
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u), !inline_history !2493 ; 0 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !1108
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext 1, i64 noundef %i.w), !inline_history !2493
  %i.x = load i8, ptr %i.d, align 4, !tbaa !1107, !range !395, !noundef !326
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.loopexit, label %bb.d, !llvm.loop !2494

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %.not2.not.not, %bb.e ], [ %.not2.not.not, %bb.d ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1098 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1099
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !304    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !305
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE14_M_fill_assignEmRKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(17) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305
  %i.c = load ptr, ptr %0, align 8, !tbaa !304    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 384307168202282325
  br i1 %i.i, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i: ; preds = %bb.b
  %i.j = mul nuw nsw i64 %1, 24
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #47 ; 4 uses
  %xtraiter30 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ] ; 2 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = add nsw i64 %.068.i.i.i.i.i.i.prol, -1   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2495

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %1, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.n = icmp ult i64 %1, 4
  br i1 %i.n, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.r = add nsw i64 %.068.i.i.i.i.i.i, -4        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2496

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1
  %i.u = load ptr, ptr %0, align 8, !tbaa !304    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !305
  store ptr %i.k, ptr %0, align 8, !tbaa !304
  store ptr %.lcssa, ptr %i.v, align 8, !tbaa !1115
  store ptr %i.t, ptr %i.a, align 8, !tbaa !305
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1115 ; 6 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  %i.ae = sdiv exact i64 %i.ad, 24                ; 3 uses
  %i.af = icmp ugt i64 %1, %i.ae
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.ab
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !1111, !range !395
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.am, %bb.g ] ; 4 uses
  %i.ai = load i64, ptr %2, align 8, !tbaa !207
  store i64 %i.ai, ptr %.06.i.i.i.i, align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ak = load i64, ptr %i.ag, align 8, !tbaa !207
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !207
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  store i8 %.pre.i.i.i.i, ptr %i.al, align 8, !tbaa !1111
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.am, %i.ab
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, label %bb.g, !llvm.loop !2497

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit: ; preds = %bb.g, %bb.f
  %i.an = sub i64 %1, %i.ae                       ; 3 uses
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol

.lr.ph.i.i.i.i12.prol:                            ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit, %.lr.ph.i.i.i.i12.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i12.prol ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i12.prol ], [ %i.an, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i12.prol ], [ 0, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ao = add i64 %.068.i.i.i.i.prol, -1          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i12.prol.loopexit, label %.lr.ph.i.i.i.i12.prol, !llvm.loop !2498

.lr.ph.i.i.i.i12.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i12.prol, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit
  %.lcssa29.unr = phi ptr [ poison, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ap, %.lr.ph.i.i.i.i12.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ap, %.lr.ph.i.i.i.i12.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.an, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx119sub_matchINS1_IPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESt6vectorISC_SaISC_EEEESC_EvT_SI_RKT0_.exit ], [ %i.ao, %.lr.ph.i.i.i.i12.prol ]
  %i.aq = sub i64 %i.ae, %1
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.prol.loopexit, %.lr.ph.i.i.i.i12
  %.09.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i12 ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i12 ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i12.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.av = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i13.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i13.3, label %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !2496

_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i12, %.lr.ph.i.i.i.i12.prol.loopexit
  %.lcssa29 = phi ptr [ %.lcssa29.unr, %.lr.ph.i.i.i.i12.prol.loopexit ], [ %i.aw, %.lr.ph.i.i.i.i12 ]
  store ptr %.lcssa29, ptr %i.aa, align 8, !tbaa !1115
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.ax = icmp eq i64 %1, 0
  br i1 %i.ax, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %bb.h
  %.idx.i.i = mul nuw nsw i64 %1, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i.i.i.i15 = load i8, ptr %i.ba, align 8, !tbaa !1111, !range !395
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i14
  %.06.i.i.i.i16 = phi ptr [ %i.c, %.lr.ph.i.i.i.i14 ], [ %i.bf, %bb.i ] ; 4 uses
  %i.bb = load i64, ptr %2, align 8, !tbaa !207
  store i64 %i.bb, ptr %.06.i.i.i.i16, align 8, !tbaa !207
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 8
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !207
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !207
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 16
  store i8 %.pre.i.i.i.i15, ptr %i.be, align 8, !tbaa !1111
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i.i17, label %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, label %bb.i, !llvm.loop !2497

_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.c, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.aa, align 8, !tbaa !1115
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESC_EvT_SE_RSaIT0_E.exit.i, %_ZSt6fill_nIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_ET_SE_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSC_RKSD_.exit, %_ZSt24__uninitialized_fill_n_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEmSC_SC_ET_SE_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1095   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1096 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !304  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !305
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #46
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !96

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1095
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1097
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #46
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESH_EvT_SJ_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_main_dispatchENSH_11_Match_modeESt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::vector.628", align 8   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1116 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1117, !nonnull !326, !align !747 ; 4 uses
end_hunk_7
begin_hunk_8_@_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_word_boundaryEv:bb.a

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i, %bb.i, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i, %bb.f
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i ], [ 0, %bb.i ], [ %i.av, %_ZNKSt5ctypeIcE5widenEc.exit.i.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !207 ; 2 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !207
  %.not18 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not18, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !139 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1125, !nonnull !326, !align !747
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1071
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 2 uses
  %i.be = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEcE3__s, i64 1), i1 noundef zeroext false) ; 2 uses
  %i.bf = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #5
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !720
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !725
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !727 ; 7 uses
  %.not.not.i.i.i7 = icmp eq ptr %i.bk, null
  br i1 %.not.not.i.i.i7, label %bb.n, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #48
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8: ; preds = %bb.m
  %.sroa.0.0.extract.trunc.i.i9 = trunc i32 %i.be to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !943
  %i.bn = zext i8 %i.ay to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !302
  %i.bq = and i16 %i.bp, %.sroa.0.0.extract.trunc.i.i9
  %.not4.i.i10 = icmp eq i16 %i.bq, 0
  br i1 %.not4.i.i10, label %bb.o, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

bb.o:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8
  %i.br = and i32 %i.be, 65536
  %.not.i.i11 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !1038
  %.not.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !139
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

bb.r:                                             ; preds = %bb.p
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk)
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 95), !inline_history !2540
  br label %_ZNKSt5ctypeIcE5widenEc.exit.i.i13

_ZNKSt5ctypeIcE5widenEc.exit.i.i13:               ; preds = %bb.r, %bb.q
  %.0.i.i.i14 = phi i8 [ %i.bv, %bb.q ], [ %i.bz, %bb.r ]
  %i.ca = icmp eq i8 %i.ay, %.0.i.i.i14
  %i.cb = zext i1 %i.ca to i32
  br label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit.i.i13, %bb.o, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit
  %i.cc = phi i32 [ 0, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit ], [ 1, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit.i.i8 ], [ 0, %bb.o ], [ %i.cb, %_ZNKSt5ctypeIcE5widenEc.exit.i.i13 ]
  %i.cd = icmp ne i32 %.1, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.b, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15
  %.0 = phi i1 [ %i.cd, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE10_M_is_wordEc.exit15 ], [ false, %bb.b ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.269", align 8   ; 11 uses
  %3 = alloca %"class.std::__detail::_Executor.633", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1115 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !304    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, !prof !279

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #48
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #47
  %.pre = load ptr, ptr %0, align 8, !tbaa !295
  %.pre26 = load ptr, ptr %i.a, align 8, !tbaa !295
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre26, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !304
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !305
  %.not7.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !98

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1115
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.06.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1114 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 0, i64 24, i1 false)
  store ptr %.sroa.06.0.copyload, ptr %i.w, align 8, !tbaa !207
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !1125, !nonnull !326, !align !747
  %i.z = load <2 x ptr>, ptr %i.s, align 8, !tbaa !323
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !323
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1071 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !924
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %2, ptr %i.ad, align 8, !tbaa !1101
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !918 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !894 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 48                ; 7 uses
  %i.an = icmp ugt i64 %i.am, 576460752303423487
  %i.ao = ptrtoint ptr %.sroa.06.0.copyload to i64
  br i1 %i.an, label %bb.d, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.d
  unreachable

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2ERKSE_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i.i16, label %.loopexit.i, label %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i

_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %i.ap = shl nuw nsw i64 %i.am, 4
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #47
          to label %.noexc9.i unwind label %bb.e  ; 4 uses

.noexc9.i:                                        ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i
  store ptr %i.aq, ptr %i.ae, align 8, !tbaa !1098
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.am
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1099
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.noexc9.i, %.lr.ph.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aq, %.noexc9.i ] ; 3 uses
  %.01012.i.i.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.am, %.noexc9.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.noexc9.i ]
  store ptr null, ptr %.013.i.i.i.i.i.i.prol, align 8, !tbaa !1093
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !1103
  %i.au = add nsw i64 %.01012.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2541

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.noexc9.i
  %.lcssa.unr = phi ptr [ poison, %.noexc9.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.unr = phi ptr [ %i.aq, %.noexc9.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.i.unr = phi i64 [ %i.am, %.noexc9.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aw = icmp ult i64 %i.am, 8
  br i1 %i.aw, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.01012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i.i.i, align 8, !tbaa !1093
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.ax, align 8, !tbaa !1103
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !1093
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 24
  store i32 0, ptr %i.az, align 8, !tbaa !1103
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ba, align 8, !tbaa !1093
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 40
  store i32 0, ptr %i.bb, align 8, !tbaa !1103
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.bc, align 8, !tbaa !1093
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 56
  store i32 0, ptr %i.bd, align 8, !tbaa !1103
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.be, align 8, !tbaa !1093
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 72
  store i32 0, ptr %i.bf, align 8, !tbaa !1103
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.bg, align 8, !tbaa !1093
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 88
  store i32 0, ptr %i.bh, align 8, !tbaa !1103
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.bi, align 8, !tbaa !1093
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 104
  store i32 0, ptr %i.bj, align 8, !tbaa !1103
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.bk, align 8, !tbaa !1093
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 120
  store i32 0, ptr %i.bl, align 8, !tbaa !1103
  %i.bm = add nsw i64 %.01012.i.i.i.i.i.i, -8     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !97

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_S_check_init_lenEmRKSD_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bo, align 8, !tbaa !1104
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bs = and i32 %i.v, 128
  %.not.i = icmp eq i32 %i.bs, 0
  %i.bt = and i32 %i.v, -6
  %spec.select = select i1 %.not.i, i32 %i.v, i32 %i.bt
  store i32 %spec.select, ptr %i.br, align 8, !tbaa !1092
  store i64 %1, ptr %i.bp, align 8, !tbaa !1108
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.ao, ptr %i.bu, align 8, !tbaa !207
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 116 ; 2 uses
  store i8 0, ptr %i.bv, align 4, !tbaa !1107
  store i64 0, ptr %i.bq, align 8, !tbaa !207
  %i.bw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(117) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g, !inline_history !2542 ; 0 uses

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i.i, %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %.loopexit.i
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !1108
  invoke void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %3, i8 noundef zeroext 1, i64 noundef %i.by)
          to label %bb.f unwind label %bb.g, !inline_history !2542

bb.f:                                             ; preds = %.noexc
  %i.bz = load i8, ptr %i.bv, align 4, !tbaa !1107, !range !395, !noundef !326
  %i.ca = trunc nuw i8 %i.bz to i1                ; 2 uses
  br i1 %i.ca, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !1115 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !304   ; 5 uses
  %.not = icmp eq ptr %i.cb, %i.cc
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = sdiv exact i64 %i.cf, 24                ; 3 uses
  %xtraiter40 = and i64 %i.cg, 1
  %i.ch = icmp eq i64 %i.cf, 24
  br i1 %i.ch, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cg, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.noexc, %.loopexit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(117) dereferenceable(117) %3) #5
  br label %.body

.lr.ph:                                           ; preds = %bb.j, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.dg, %bb.j ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.j ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !1111, !range !395, !noundef !326
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.h, label %.lr.ph.1

bb.h:                                             ; preds = %.lr.ph
  %i.cn = load ptr, ptr %0, align 8, !tbaa !304
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.024 ; 3 uses
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !207
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !207
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !207
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !207
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i8 1, ptr %i.ct, align 8, !tbaa !1111
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %.lr.ph
  %i.cu = or disjoint i64 %.024, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !1111, !range !395, !noundef !326
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.1
  %i.cz = load ptr, ptr %0, align 8, !tbaa !304
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %i.cu ; 3 uses
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !207
  store i64 %i.db, ptr %i.da, align 8, !tbaa !207
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !207
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !207
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i8 1, ptr %i.df, align 8, !tbaa !1111
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.1
  %i.dg = add nuw i64 %.024, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2543

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.dg, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod42 = trunc i64 %i.cg to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.024.epil.init ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !1111, !range !395, !noundef !326
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph.epil.preheader
  %i.dl = load ptr, ptr %0, align 8, !tbaa !304
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %.024.epil.init ; 3 uses
  %i.dn = load i64, ptr %i.dh, align 8, !tbaa !207
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !207
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !207
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !207
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %i.dr, align 8, !tbaa !1111
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %.lr.ph.epil.preheader, %.preheader, %bb.f
  %i.ds = load ptr, ptr %i.ae, align 8, !tbaa !1098 ; 3 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1099
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #46
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.l, %.loopexit
  %i.dy = load ptr, ptr %3, align 8, !tbaa !304   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !305
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #46
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ee = load ptr, ptr %2, align 8, !tbaa !304   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !305
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EED2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  ret i1 %i.ca

.body:                                            ; preds = %bb.e, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %i.bx, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ej = load ptr, ptr %2, align 8, !tbaa !304   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21, label %bb.o

bb.o:                                             ; preds = %.body
  %i.ek = load ptr, ptr %i.o, align 8, !tbaa !305
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #46
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit21: ; preds = %.body, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE17_M_realloc_insertIJNS1_7ustringEDnRiS8_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !271    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #47 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !207
  %i.r = load i32, ptr %4, align 4, !tbaa !106
  %i.s = load i32, ptr %5, align 4, !tbaa !106
  store ptr %.sroa.0.0.copyload.i, ptr %i.q, align 8, !tbaa !207
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.t, align 8, !tbaa !297
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 %i.r, ptr %i.u, align 8, !tbaa !300
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 %i.s, ptr %i.v, align 4, !tbaa !301
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %i.w = load i64, ptr %.01214.i.i.i.i.i, align 8, !tbaa !207
  store i64 %i.w, ptr %.015.i.i.i.i.i, align 8, !tbaa !207
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.z = load atomic ptr, ptr %i.y seq_cst, align 8
  store ptr %i.z, ptr %i.x, align 8, !tbaa !297
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !106
  store <2 x i32> %i.ac, ptr %i.aa, align 8, !tbaa !106
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !99

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not13.i.i.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit37, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %.lr.ph.i.i.i.i.i32
  %.015.i.i.i.i.i33 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i32 ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 4 uses
  %.01214.i.i.i.i.i34 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i32 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 4 uses
  %i.ag = load i64, ptr %.01214.i.i.i.i.i34, align 8, !tbaa !207
  store i64 %i.ag, ptr %.015.i.i.i.i.i33, align 8, !tbaa !207
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i33, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i34, i64 8
  %i.aj = load atomic ptr, ptr %i.ai seq_cst, align 8
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !297
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i33, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i34, i64 16
  %i.am = load <2 x i32>, ptr %i.al, align 8, !tbaa !106
  store <2 x i32> %i.am, ptr %i.ak, align 8, !tbaa !106
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i34, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i33, i64 24 ; 2 uses
  %.not.i.i.i.i.i35 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i.i35, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit37, label %.lr.ph.i.i.i.i.i32, !llvm.loop !99

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit37: ; preds = %.lr.ph.i.i.i.i.i32, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i36 = phi ptr [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ao, %.lr.ph.i.i.i.i.i32 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i38 = icmp eq ptr %i.c, null
  br i1 %.not.i38, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit37
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !272
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit37, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !271
  store ptr %.0.lcssa.i.i.i.i.i36, ptr %i.a, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !272
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !271    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i.prol, i8 0, i64 16, i1 false)
  %i.p = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2544

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.prol ]
  %i.r = icmp ult i64 %1, 8
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 16, i1 false)
  %i.z = add nsw i64 %.01012.i.i.i, -8            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !2545

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aa, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !293
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ult i64 %i.n, %1
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #48
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ac = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 384307168202282325) ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 24
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #47 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.f ; 3 uses
  %xtraiter51 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol

.lr.ph.i.i.i40.prol:                              ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40.prol
  %.013.i.i.i41.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i40.prol ], [ %i.ag, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.01012.i.i.i42.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i40.prol ], [ %1, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.i40.prol ], [ 0, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i41.prol, i8 0, i64 16, i1 false)
  %i.ah = add nsw i64 %.01012.i.i.i42.prol, -1    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i41.prol, i64 24 ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.i40.prol.loopexit, label %.lr.ph.i.i.i40.prol, !llvm.loop !2546

.lr.ph.i.i.i40.prol.loopexit:                     ; preds = %.lr.ph.i.i.i40.prol, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i41.unr = phi ptr [ %i.ag, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i40.prol ]
  %.01012.i.i.i42.unr = phi i64 [ %1, %_ZNKSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.ah, %.lr.ph.i.i.i40.prol ]
  %i.aj = icmp ult i64 %1, 8
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.prol.loopexit, %.lr.ph.i.i.i40
  %.013.i.i.i41 = phi ptr [ %i.as, %.lr.ph.i.i.i40 ], [ %.013.i.i.i41.unr, %.lr.ph.i.i.i40.prol.loopexit ] ; 9 uses
  %.01012.i.i.i42 = phi i64 [ %i.ar, %.lr.ph.i.i.i40 ], [ %.01012.i.i.i42.unr, %.lr.ph.i.i.i40.prol.loopexit ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.013.i.i.i41, i8 0, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = add nsw i64 %.01012.i.i.i42, -8         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 192
  %.not.i.i.i43.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i43.7, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !2545

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40, %.lr.ph.i.i.i40.prol.loopexit
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45 ] ; 4 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45 ] ; 4 uses
  %i.at = load i64, ptr %.01214.i.i.i.i.i, align 8, !tbaa !207
  store i64 %i.at, ptr %.015.i.i.i.i.i, align 8, !tbaa !207
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.aw = load atomic ptr, ptr %i.av seq_cst, align 8
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !297
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 16
  %i.az = load <2 x i32>, ptr %i.ay, align 8, !tbaa !106
  store <2 x i32> %i.az, ptr %i.ax, align 8, !tbaa !106
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !99

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit45
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit48, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !272
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.be) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit48

_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit48: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_13pvt8UdimInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %bb.e
  store ptr %i.af, ptr %0, align 8, !tbaa !271
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %1
  store ptr %i.bf, ptr %i.a, align 8, !tbaa !293
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bg, ptr %i.h, align 8, !tbaa !272
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_13pvt8UdimInfoEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE13_M_deallocateEPS3_m.exit48, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !687  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !686    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2550
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17ustringEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17ustringEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !114
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !687
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #48
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #47 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !114
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %i.x = load i64, ptr %.0911.i.i.i, align 8, !tbaa !207, !alias.scope !2552, !noalias !2551
  store i64 %i.x, ptr %.012.i.i.i, align 8, !tbaa !207, !alias.scope !2551, !noalias !2552
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !27

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !2550
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !686
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !687
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !2550
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17ustringEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESP_IJEEEEES2_INSK_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !288    ; 3 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !481    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.056 = and i64 %i.a, %i.b                      ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.056 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !143
  %.not57 = icmp slt i16 %i.f, 0
  br i1 %.not57, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.b, %bb.a
  %.034.lcssa = phi i16 [ 0, %bb.a ], [ %i.m, %bb.b ] ; 2 uses
  %.0.lcssa = phi i64 [ %.056, %bb.a ], [ %.0, %bb.b ]
  %i.g = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.g, label %.lr.ph68, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.n, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.059 = phi i64 [ %.0, %bb.b ], [ %.056, %bb.a ]
  %.03458 = phi i16 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !288
  %i.k = icmp eq i64 %i.j, %i.a
  br i1 %i.k, label %.loopexit49, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add i64 %.059, 1
  %i.m = add i16 %.03458, 1                       ; 3 uses
  %.0 = and i64 %i.l, %i.b                        ; 3 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.0 ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !143
  %.not = icmp sgt i16 %i.m, %i.o
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !2553

.loopexit:                                        ; preds = %.lr.ph65, %.lr.ph68
  %.236.lcssa = phi i16 [ 0, %.lr.ph68 ], [ %i.v, %.lr.ph65 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.261, %.lr.ph68 ], [ %.2, %.lr.ph65 ]
  %i.p = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.p, label %.lr.ph68, label %._crit_edge, !llvm.loop !2554

.lr.ph68:                                         ; preds = %.preheader, %.loopexit
  %i.q = load i64, ptr %0, align 8, !tbaa !481    ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.261 = and i64 %i.a, %i.q                      ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.261
  %i.t = load i16, ptr %i.s, align 8, !tbaa !143
  %.not3762 = icmp slt i16 %i.t, 0
  br i1 %.not3762, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph68, %.lr.ph65
  %.264 = phi i64 [ %.2, %.lr.ph65 ], [ %.261, %.lr.ph68 ]
  %.23663 = phi i16 [ %i.v, %.lr.ph65 ], [ 0, %.lr.ph68 ]
  %i.u = add i64 %.264, 1
  %i.v = add i16 %.23663, 1                       ; 3 uses
  %.2 = and i64 %i.u, %i.q                        ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.2
  %i.x = load i16, ptr %i.w, align 8, !tbaa !143
  %.not37 = icmp sgt i16 %i.v, %i.x
  br i1 %.not37, label %.loopexit, label %.lr.ph65, !llvm.loop !2555
end_hunk_8
